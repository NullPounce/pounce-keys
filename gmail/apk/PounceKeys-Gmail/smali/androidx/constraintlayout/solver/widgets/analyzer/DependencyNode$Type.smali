.class final enum Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;
.super Ljava/lang/Enum;
.source "DependencyNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum BASELINE:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum BOTTOM:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum HORIZONTAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum LEFT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum RIGHT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum TOP:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum VERTICAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const-string v2, "HORIZONTAL_DIMENSION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const-string v3, "VERTICAL_DIMENSION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const-string v4, "LEFT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const-string v5, "RIGHT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const-string v6, "TOP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const-string v7, "BOTTOM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const-string v8, "BASELINE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    filled-new-array/range {v0 .. v7}, [Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;
    .locals 1

    .line 27
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    return-object v0
.end method
