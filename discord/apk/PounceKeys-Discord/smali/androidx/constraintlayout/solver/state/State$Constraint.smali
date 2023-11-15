.class public final enum Landroidx/constraintlayout/solver/state/State$Constraint;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/state/State$Constraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum CENTER_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum CENTER_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

.field public static final enum TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 53
    new-instance v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v1, "LEFT_TO_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 54
    new-instance v1, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v2, "LEFT_TO_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/solver/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 55
    new-instance v2, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v3, "RIGHT_TO_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 56
    new-instance v3, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v4, "RIGHT_TO_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/solver/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 57
    new-instance v4, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v5, "START_TO_START"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 58
    new-instance v5, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v6, "START_TO_END"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/solver/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 59
    new-instance v6, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v7, "END_TO_START"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 60
    new-instance v7, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v8, "END_TO_END"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/constraintlayout/solver/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 61
    new-instance v8, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v9, "TOP_TO_TOP"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 62
    new-instance v9, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v10, "TOP_TO_BOTTOM"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/constraintlayout/solver/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 63
    new-instance v10, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v11, "BOTTOM_TO_TOP"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 64
    new-instance v11, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v12, "BOTTOM_TO_BOTTOM"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/constraintlayout/solver/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 65
    new-instance v12, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v13, "BASELINE_TO_BASELINE"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroidx/constraintlayout/solver/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 66
    new-instance v13, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v14, "CENTER_HORIZONTALLY"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 67
    new-instance v14, Landroidx/constraintlayout/solver/state/State$Constraint;

    const-string v15, "CENTER_VERTICALLY"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Landroidx/constraintlayout/solver/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/constraintlayout/solver/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Constraint;

    .line 52
    move-object/from16 v13, v16

    filled-new-array/range {v0 .. v14}, [Landroidx/constraintlayout/solver/state/State$Constraint;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Constraint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/state/State$Constraint;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/State$Constraint;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/state/State$Constraint;
    .locals 1

    .line 52
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Constraint;->$VALUES:[Landroidx/constraintlayout/solver/state/State$Constraint;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/state/State$Constraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/state/State$Constraint;

    return-object v0
.end method
