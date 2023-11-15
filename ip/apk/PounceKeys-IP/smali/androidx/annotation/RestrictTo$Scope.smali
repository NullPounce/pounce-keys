.class public final enum Landroidx/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "RestrictTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/annotation/RestrictTo$Scope;

.field public static final enum GROUP_ID:Landroidx/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LIBRARY:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum SUBCLASSES:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum TESTS:Landroidx/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 65
    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const-string v1, "LIBRARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;

    .line 71
    new-instance v1, Landroidx/annotation/RestrictTo$Scope;

    const-string v2, "LIBRARY_GROUP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;

    .line 85
    new-instance v2, Landroidx/annotation/RestrictTo$Scope;

    const-string v3, "LIBRARY_GROUP_PREFIX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;

    .line 93
    new-instance v3, Landroidx/annotation/RestrictTo$Scope;

    const-string v4, "GROUP_ID"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/annotation/RestrictTo$Scope;->GROUP_ID:Landroidx/annotation/RestrictTo$Scope;

    .line 99
    new-instance v4, Landroidx/annotation/RestrictTo$Scope;

    const-string v5, "TESTS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;

    .line 107
    new-instance v5, Landroidx/annotation/RestrictTo$Scope;

    const-string v6, "SUBCLASSES"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/annotation/RestrictTo$Scope;->SUBCLASSES:Landroidx/annotation/RestrictTo$Scope;

    .line 60
    filled-new-array/range {v0 .. v5}, [Landroidx/annotation/RestrictTo$Scope;

    move-result-object v0

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->$VALUES:[Landroidx/annotation/RestrictTo$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/RestrictTo$Scope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    const-class v0, Landroidx/annotation/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/annotation/RestrictTo$Scope;

    return-object v0
.end method

.method public static values()[Landroidx/annotation/RestrictTo$Scope;
    .locals 1

    .line 60
    sget-object v0, Landroidx/annotation/RestrictTo$Scope;->$VALUES:[Landroidx/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, [Landroidx/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/RestrictTo$Scope;

    return-object v0
.end method
