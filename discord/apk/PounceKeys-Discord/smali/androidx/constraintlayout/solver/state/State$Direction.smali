.class public final enum Landroidx/constraintlayout/solver/state/State$Direction;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum BOTTOM:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum END:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum LEFT:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum RIGHT:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum START:Landroidx/constraintlayout/solver/state/State$Direction;

.field public static final enum TOP:Landroidx/constraintlayout/solver/state/State$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 71
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->LEFT:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 72
    new-instance v1, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/solver/state/State$Direction;->RIGHT:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 73
    new-instance v2, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v3, "START"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/solver/state/State$Direction;->START:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 74
    new-instance v3, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v4, "END"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/solver/state/State$Direction;->END:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 75
    new-instance v4, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v5, "TOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/solver/state/State$Direction;->TOP:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 76
    new-instance v5, Landroidx/constraintlayout/solver/state/State$Direction;

    const-string v6, "BOTTOM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/state/State$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/solver/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 70
    filled-new-array/range {v0 .. v5}, [Landroidx/constraintlayout/solver/state/State$Direction;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Landroidx/constraintlayout/solver/state/State$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/State$Direction;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Direction;
    .locals 1

    .line 70
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Direction;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Direction;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Direction;

    return-object v0
.end method
