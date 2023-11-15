.class final enum Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
.super Ljava/lang/Enum;
.source "QuantizerWu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/QuantizerWu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/color/utilities/QuantizerWu$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 377
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    const-string v1, "RED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 378
    new-instance v1, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    const-string v2, "GREEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 379
    new-instance v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    const-string v3, "BLUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    .line 376
    filled-new-array {v0, v1, v2}, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->$VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 376
    const-class v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    .locals 1

    .line 376
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->$VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    invoke-virtual {v0}, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    return-object v0
.end method
