.class abstract Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ShadowCompatOperation"
.end annotation


# static fields
.field static final IDENTITY_MATRIX:Landroid/graphics/Matrix;


# instance fields
.field final renderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 406
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->renderMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
.end method

.method public final draw(Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p2, "shadowElevation"    # I
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 411
    sget-object v0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V

    .line 412
    return-void
.end method
