.class public final enum Landroidx/core/graphics/BlendModeCompat;
.super Ljava/lang/Enum;
.source "BlendModeCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/core/graphics/BlendModeCompat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/core/graphics/BlendModeCompat;

.field public static final enum CLEAR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DARKEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum HUE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MODULATE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum OVERLAY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum PLUS:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SATURATION:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SCREEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum XOR:Landroidx/core/graphics/BlendModeCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 37
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    move-object v0, v1

    const-string v2, "CLEAR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    .line 47
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    move-object v1, v2

    const-string v3, "SRC"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->SRC:Landroidx/core/graphics/BlendModeCompat;

    .line 57
    new-instance v3, Landroidx/core/graphics/BlendModeCompat;

    move-object v2, v3

    const-string v4, "DST"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/core/graphics/BlendModeCompat;->DST:Landroidx/core/graphics/BlendModeCompat;

    .line 67
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    move-object v3, v4

    const-string v5, "SRC_OVER"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 77
    new-instance v5, Landroidx/core/graphics/BlendModeCompat;

    move-object v4, v5

    const-string v6, "DST_OVER"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/core/graphics/BlendModeCompat;->DST_OVER:Landroidx/core/graphics/BlendModeCompat;

    .line 88
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    move-object v5, v6

    const-string v7, "SRC_IN"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 98
    new-instance v7, Landroidx/core/graphics/BlendModeCompat;

    move-object v6, v7

    const-string v8, "DST_IN"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/core/graphics/BlendModeCompat;->DST_IN:Landroidx/core/graphics/BlendModeCompat;

    .line 110
    new-instance v8, Landroidx/core/graphics/BlendModeCompat;

    move-object v7, v8

    const-string v9, "SRC_OUT"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroidx/core/graphics/BlendModeCompat;->SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

    .line 122
    new-instance v9, Landroidx/core/graphics/BlendModeCompat;

    move-object v8, v9

    const-string v10, "DST_OUT"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/core/graphics/BlendModeCompat;->DST_OUT:Landroidx/core/graphics/BlendModeCompat;

    .line 133
    new-instance v10, Landroidx/core/graphics/BlendModeCompat;

    move-object v9, v10

    const-string v11, "SRC_ATOP"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 144
    new-instance v11, Landroidx/core/graphics/BlendModeCompat;

    move-object v10, v11

    const-string v12, "DST_ATOP"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/core/graphics/BlendModeCompat;->DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

    .line 157
    new-instance v12, Landroidx/core/graphics/BlendModeCompat;

    move-object v11, v12

    const-string v13, "XOR"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroidx/core/graphics/BlendModeCompat;->XOR:Landroidx/core/graphics/BlendModeCompat;

    .line 168
    new-instance v13, Landroidx/core/graphics/BlendModeCompat;

    move-object v12, v13

    const-string v14, "PLUS"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    .line 179
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    move-object v13, v14

    const-string v15, "MODULATE"

    move-object/from16 v29, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    .line 189
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object v14, v0

    const-string v15, "SCREEN"

    move-object/from16 v30, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    .line 204
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object v15, v0

    const-string v1, "OVERLAY"

    move-object/from16 v31, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    .line 217
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v16, v0

    const-string v1, "DARKEN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    .line 230
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v17, v0

    const-string v1, "LIGHTEN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    .line 250
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v18, v0

    const-string v1, "COLOR_DODGE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

    .line 274
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v19, v0

    const-string v1, "COLOR_BURN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

    .line 296
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v20, v0

    const-string v1, "HARD_LIGHT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    .line 342
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v21, v0

    const-string v1, "SOFT_LIGHT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    .line 361
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v22, v0

    const-string v1, "DIFFERENCE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

    .line 379
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v23, v0

    const-string v1, "EXCLUSION"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

    .line 391
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v24, v0

    const-string v1, "MULTIPLY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    .line 398
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v25, v0

    const-string v1, "HUE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->HUE:Landroidx/core/graphics/BlendModeCompat;

    .line 405
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v26, v0

    const-string v1, "SATURATION"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->SATURATION:Landroidx/core/graphics/BlendModeCompat;

    .line 412
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v27, v0

    const-string v1, "COLOR"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->COLOR:Landroidx/core/graphics/BlendModeCompat;

    .line 419
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    move-object/from16 v28, v0

    const-string v1, "LUMINOSITY"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

    .line 27
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    filled-new-array/range {v0 .. v28}, [Landroidx/core/graphics/BlendModeCompat;

    move-result-object v0

    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/core/graphics/BlendModeCompat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Landroidx/core/graphics/BlendModeCompat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/core/graphics/BlendModeCompat;

    return-object v0
.end method

.method public static values()[Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 27
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v0}, [Landroidx/core/graphics/BlendModeCompat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/graphics/BlendModeCompat;

    return-object v0
.end method
