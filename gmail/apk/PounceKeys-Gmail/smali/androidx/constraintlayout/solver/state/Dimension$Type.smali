.class public final enum Landroidx/constraintlayout/solver/state/Dimension$Type;
.super Ljava/lang/Enum;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/Dimension$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/state/Dimension$Type;

.field public static final enum FIXED:Landroidx/constraintlayout/solver/state/Dimension$Type;

.field public static final enum MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/state/Dimension$Type;

.field public static final enum MATCH_PARENT:Landroidx/constraintlayout/solver/state/Dimension$Type;

.field public static final enum WRAP:Landroidx/constraintlayout/solver/state/Dimension$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension$Type;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension$Type;->FIXED:Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 46
    new-instance v1, Landroidx/constraintlayout/solver/state/Dimension$Type;

    const-string v2, "WRAP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/solver/state/Dimension$Type;->WRAP:Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 47
    new-instance v2, Landroidx/constraintlayout/solver/state/Dimension$Type;

    const-string v3, "MATCH_PARENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/solver/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/solver/state/Dimension$Type;->MATCH_PARENT:Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 48
    new-instance v3, Landroidx/constraintlayout/solver/state/Dimension$Type;

    const-string v4, "MATCH_CONSTRAINT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/state/Dimension$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/solver/state/Dimension$Type;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/state/Dimension$Type;

    .line 44
    filled-new-array {v0, v1, v2, v3}, [Landroidx/constraintlayout/solver/state/Dimension$Type;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension$Type;->$VALUES:[Landroidx/constraintlayout/solver/state/Dimension$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/Dimension$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Landroidx/constraintlayout/solver/state/Dimension$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Dimension$Type;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/Dimension$Type;
    .locals 1

    .line 44
    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension$Type;->$VALUES:[Landroidx/constraintlayout/solver/state/Dimension$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/Dimension$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/Dimension$Type;

    return-object v0
.end method
