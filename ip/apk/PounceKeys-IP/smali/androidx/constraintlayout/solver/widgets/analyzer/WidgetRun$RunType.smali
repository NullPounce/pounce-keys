.class final enum Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
.super Ljava/lang/Enum;
.source "WidgetRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RunType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum CENTER:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum END:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum NONE:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

.field public static final enum START:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 303
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const-string v2, "START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->START:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const-string v3, "END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->END:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    const-string v4, "CENTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->$VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 303
    const-class v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;
    .locals 1

    .line 303
    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->$VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    return-object v0
.end method
