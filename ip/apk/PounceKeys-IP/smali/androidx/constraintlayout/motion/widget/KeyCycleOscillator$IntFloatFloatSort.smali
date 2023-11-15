.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntFloatFloatSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partition([I[F[FII)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value1"    # [F
    .param p2, "value2"    # [F
    .param p3, "low"    # I
    .param p4, "hi"    # I

    .line 384
    aget v0, p0, p4

    .line 385
    .local v0, "pivot":I
    move v1, p3

    .line 386
    .local v1, "i":I
    move v2, p3

    .local v2, "j":I
    :goto_0
    if-ge v2, p4, :cond_1

    .line 387
    aget v3, p0, v2

    if-gt v3, v0, :cond_0

    .line 388
    invoke-static {p0, p1, p2, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 386
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v2    # "j":I
    :cond_1
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    .line 393
    return v1
.end method

.method static sort([I[F[FII)V
    .locals 5
    .param p0, "key"    # [I
    .param p1, "value1"    # [F
    .param p2, "value2"    # [F
    .param p3, "low"    # I
    .param p4, "hi"    # I

    .line 366
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 367
    .local v0, "stack":[I
    const/4 v1, 0x0

    .line 368
    .local v1, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput p4, v0, v1

    .line 369
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput p3, v0, v2

    .line 370
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 371
    add-int/lit8 v1, v1, -0x1

    aget p3, v0, v1

    .line 372
    add-int/lit8 v1, v1, -0x1

    aget p4, v0, v1

    .line 373
    if-ge p3, p4, :cond_0

    .line 374
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->partition([I[F[FII)I

    move-result v2

    .line 375
    .local v2, "p":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    aput v4, v0, v1

    .line 376
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    aput p3, v0, v3

    .line 377
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .restart local v3    # "count":I
    aput p4, v0, v1

    .line 378
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v4, v2, 0x1

    aput v4, v0, v3

    .line 379
    .end local v2    # "p":I
    goto :goto_0

    .line 381
    :cond_1
    return-void
.end method

.method private static swap([I[F[FII)V
    .locals 3
    .param p0, "array"    # [I
    .param p1, "value1"    # [F
    .param p2, "value2"    # [F
    .param p3, "a"    # I
    .param p4, "b"    # I

    .line 397
    aget v0, p0, p3

    .line 398
    .local v0, "tmp":I
    aget v1, p0, p4

    aput v1, p0, p3

    .line 399
    aput v0, p0, p4

    .line 400
    aget v1, p1, p3

    .line 401
    .local v1, "tmpFloat":F
    aget v2, p1, p4

    aput v2, p1, p3

    .line 402
    aput v1, p1, p4

    .line 403
    aget v1, p2, p3

    .line 404
    aget v2, p2, p4

    aput v2, p2, p3

    .line 405
    aput v1, p2, p4

    .line 406
    return-void
.end method
