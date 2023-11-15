.class public final enum Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
.super Ljava/lang/Enum;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 52
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 53
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const-string v2, "FLOAT_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 54
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const-string v3, "COLOR_TYPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 55
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const-string v4, "COLOR_DRAWABLE_TYPE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 56
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const-string v5, "STRING_TYPE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 57
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const-string v6, "BOOLEAN_TYPE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 58
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const-string v7, "DIMENSION_TYPE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 51
    filled-new-array/range {v0 .. v6}, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    .line 51
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object v0
.end method
