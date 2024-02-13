.class Landroidx/constraintlayout/motion/widget/SplineSet$Sort;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sort"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doubleQuickSort([I[FII)V
    .locals 5
    .param p0, "key"    # [I
    .param p1, "value"    # [F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 335
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 336
    .local v0, "stack":[I
    const/4 v1, 0x0

    .line 337
    .local v1, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput p3, v0, v1

    .line 338
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v2

    .line 339
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 340
    add-int/lit8 v1, v1, -0x1

    aget p2, v0, v1

    .line 341
    add-int/lit8 v1, v1, -0x1

    aget p3, v0, v1

    .line 342
    if-ge p2, p3, :cond_0

    .line 343
    invoke-static {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->partition([I[FII)I

    move-result v2

    .line 344
    .local v2, "p":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .local v3, "count":I
    add-int/lit8 v4, v2, -0x1

    aput v4, v0, v1

    .line 345
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    aput p2, v0, v3

    .line 346
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "count":I
    .restart local v3    # "count":I
    aput p3, v0, v1

    .line 347
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "count":I
    .restart local v1    # "count":I
    add-int/lit8 v4, v2, 0x1

    aput v4, v0, v3

    .line 348
    .end local v2    # "p":I
    goto :goto_0

    .line 350
    :cond_1
    return-void
.end method

.method private static partition([I[FII)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # [F
    .param p2, "low"    # I
    .param p3, "hi"    # I

    .line 353
    aget v0, p0, p3

    .line 354
    .local v0, "pivot":I
    move v1, p2

    .line 355
    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 356
    aget v3, p0, v2

    if-gt v3, v0, :cond_0

    .line 357
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->swap([I[FII)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    .line 355
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v2    # "j":I
    :cond_1
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->swap([I[FII)V

    .line 362
    return v1
.end method

.method private static swap([I[FII)V
    .locals 3
    .param p0, "array"    # [I
    .param p1, "value"    # [F
    .param p2, "a"    # I
    .param p3, "b"    # I

    .line 366
    aget v0, p0, p2

    .line 367
    .local v0, "tmp":I
    aget v1, p0, p3

    aput v1, p0, p2

    .line 368
    aput v0, p0, p3

    .line 369
    aget v1, p1, p2

    .line 370
    .local v1, "tmpv":F
    aget v2, p1, p3

    aput v2, p1, p2

    .line 371
    aput v1, p1, p3

    .line 372
    return-void
.end method
