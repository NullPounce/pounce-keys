.class public Lcom/google/android/material/color/utilities/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clampDouble(DDD)D
    .locals 1
    .param p0, "min"    # D
    .param p2, "max"    # D
    .param p4, "input"    # D

    .line 77
    cmpg-double v0, p4, p0

    if-gez v0, :cond_0

    .line 78
    return-wide p0

    .line 79
    :cond_0
    cmpl-double v0, p4, p2

    if-lez v0, :cond_1

    .line 80
    return-wide p2

    .line 83
    :cond_1
    return-wide p4
.end method

.method public static clampInt(III)I
    .locals 0
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "input"    # I

    .line 62
    if-ge p2, p0, :cond_0

    .line 63
    return p0

    .line 64
    :cond_0
    if-le p2, p1, :cond_1

    .line 65
    return p1

    .line 68
    :cond_1
    return p2
.end method

.method public static differenceDegrees(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 130
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public static lerp(DDD)D
    .locals 4
    .param p0, "start"    # D
    .param p2, "stop"    # D
    .param p4, "amount"    # D

    .line 53
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p4

    mul-double/2addr v0, p0

    mul-double v2, p4, p2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static matrixMultiply([D[[D)[D
    .locals 14
    .param p0, "row"    # [D
    .param p1, "matrix"    # [[D

    .line 135
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-object v3, p1, v0

    aget-wide v4, v3, v0

    mul-double/2addr v1, v4

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-object v6, p1, v0

    aget-wide v7, v6, v3

    mul-double/2addr v4, v7

    add-double/2addr v1, v4

    const/4 v4, 0x2

    aget-wide v5, p0, v4

    aget-object v7, p1, v0

    aget-wide v8, v7, v4

    mul-double/2addr v5, v8

    add-double/2addr v1, v5

    .line 136
    .local v1, "a":D
    aget-wide v5, p0, v0

    aget-object v7, p1, v3

    aget-wide v8, v7, v0

    mul-double/2addr v5, v8

    aget-wide v7, p0, v3

    aget-object v9, p1, v3

    aget-wide v10, v9, v3

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    aget-wide v7, p0, v4

    aget-object v9, p1, v3

    aget-wide v10, v9, v4

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    .line 137
    .local v5, "b":D
    aget-wide v7, p0, v0

    aget-object v9, p1, v4

    aget-wide v10, v9, v0

    mul-double/2addr v7, v10

    aget-wide v9, p0, v3

    aget-object v11, p1, v4

    aget-wide v12, v11, v3

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    aget-wide v9, p0, v4

    aget-object v11, p1, v4

    aget-wide v12, v11, v4

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    .line 138
    .local v7, "c":D
    const/4 v9, 0x3

    new-array v9, v9, [D

    aput-wide v1, v9, v0

    aput-wide v5, v9, v3

    aput-wide v7, v9, v4

    return-object v9
.end method

.method public static rotationDirection(DD)D
    .locals 4
    .param p0, "from"    # D
    .param p2, "to"    # D

    .line 124
    sub-double v0, p2, p0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v0

    .line 125
    .local v0, "increasingDifference":D
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v2
.end method

.method public static sanitizeDegreesDouble(D)D
    .locals 4
    .param p0, "degrees"    # D

    .line 105
    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    .line 106
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    .line 107
    add-double/2addr p0, v0

    .line 109
    :cond_0
    return-wide p0
.end method

.method public static sanitizeDegreesInt(I)I
    .locals 0
    .param p0, "degrees"    # I

    .line 92
    rem-int/lit16 p0, p0, 0x168

    .line 93
    if-gez p0, :cond_0

    .line 94
    add-int/lit16 p0, p0, 0x168

    .line 96
    :cond_0
    return p0
.end method

.method public static signum(D)I
    .locals 3
    .param p0, "num"    # D

    .line 38
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 39
    const/4 v0, -0x1

    return v0

    .line 40
    :cond_0
    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
