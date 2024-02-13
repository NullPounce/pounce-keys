.class public final Landroidx/appcompat/resources/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/resources/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static AnimatedStateListDrawableCompat:[I = null

.field public static AnimatedStateListDrawableCompat_android_constantSize:I = 0x3

.field public static AnimatedStateListDrawableCompat_android_dither:I = 0x0

.field public static AnimatedStateListDrawableCompat_android_enterFadeDuration:I = 0x4

.field public static AnimatedStateListDrawableCompat_android_exitFadeDuration:I = 0x5

.field public static AnimatedStateListDrawableCompat_android_variablePadding:I = 0x2

.field public static AnimatedStateListDrawableCompat_android_visible:I = 0x1

.field public static AnimatedStateListDrawableItem:[I = null

.field public static AnimatedStateListDrawableItem_android_drawable:I = 0x1

.field public static AnimatedStateListDrawableItem_android_id:I = 0x0

.field public static AnimatedStateListDrawableTransition:[I = null

.field public static AnimatedStateListDrawableTransition_android_drawable:I = 0x0

.field public static AnimatedStateListDrawableTransition_android_fromId:I = 0x2

.field public static AnimatedStateListDrawableTransition_android_reversible:I = 0x3

.field public static AnimatedStateListDrawableTransition_android_toId:I = 0x1

.field public static StateListDrawable:[I = null

.field public static StateListDrawableItem:[I = null

.field public static StateListDrawableItem_android_drawable:I = 0x0

.field public static StateListDrawable_android_constantSize:I = 0x3

.field public static StateListDrawable_android_dither:I = 0x0

.field public static StateListDrawable_android_enterFadeDuration:I = 0x4

.field public static StateListDrawable_android_exitFadeDuration:I = 0x5

.field public static StateListDrawable_android_variablePadding:I = 0x2

.field public static StateListDrawable_android_visible:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableCompat:[I

    const v1, 0x10100d0

    const v2, 0x1010199

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableItem:[I

    const v1, 0x101044a

    const v3, 0x101044b

    const v4, 0x1010449

    filled-new-array {v2, v4, v1, v3}, [I

    move-result-object v1

    sput-object v1, Landroidx/appcompat/resources/R$styleable;->AnimatedStateListDrawableTransition:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawable:[I

    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data

    :array_1
    .array-data 4
        0x101011c
        0x1010194
        0x1010195
        0x1010196
        0x101030c
        0x101030d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
