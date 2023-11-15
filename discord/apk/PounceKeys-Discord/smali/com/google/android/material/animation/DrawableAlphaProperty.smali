.class public Lcom/google/android/material/animation/DrawableAlphaProperty;
.super Landroid/util/Property;
.source "DrawableAlphaProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/graphics/drawable/Drawable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alphaCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/android/material/animation/DrawableAlphaProperty;

    invoke-direct {v0}, Lcom/google/android/material/animation/DrawableAlphaProperty;-><init>()V

    sput-object v0, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 42
    const-class v0, Ljava/lang/Integer;

    const-string v1, "drawableAlphaCompat"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/animation/DrawableAlphaProperty;->alphaCache:Ljava/util/WeakHashMap;

    .line 43
    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;

    .line 48
    nop

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/DrawableAlphaProperty;->get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 59
    nop

    .line 63
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 64
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/animation/DrawableAlphaProperty;->set(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    return-void
.end method
