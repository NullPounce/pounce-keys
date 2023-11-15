.class Landroidx/transition/PropertyValuesHolderUtils;
.super Ljava/lang/Object;
.source "PropertyValuesHolderUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 38
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*Landroid/graphics/PointF;>;"
    nop

    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method
