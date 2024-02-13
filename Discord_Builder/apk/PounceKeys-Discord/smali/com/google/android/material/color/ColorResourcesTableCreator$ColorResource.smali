.class Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorResource"
.end annotation


# instance fields
.field private final entryId:S

.field private final name:Ljava/lang/String;

.field private final packageId:B

.field private final typeId:B

.field private final value:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;

    .line 567
    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I

    .line 569
    const v0, 0xffff

    and-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    .line 570
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B

    .line 571
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B

    .line 572
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->entryId:S

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget-byte v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->typeId:B

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 556
    iget-byte v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->packageId:B

    return v0
.end method
