.class public final Lcom/google/android/material/color/utilities/PointProviderLab;
.super Ljava/lang/Object;
.source "PointProviderLab.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/PointProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public distance([D[D)D
    .locals 11
    .param p1, "one"    # [D
    .param p2, "two"    # [D

    .line 57
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    sub-double/2addr v1, v3

    .line 58
    .local v1, "dL":D
    const/4 v0, 0x1

    aget-wide v3, p1, v0

    aget-wide v5, p2, v0

    sub-double/2addr v3, v5

    .line 59
    .local v3, "dA":D
    const/4 v0, 0x2

    aget-wide v5, p1, v0

    aget-wide v7, p2, v0

    sub-double/2addr v5, v7

    .line 60
    .local v5, "dB":D
    mul-double v7, v1, v1

    mul-double v9, v3, v3

    add-double/2addr v7, v9

    mul-double v9, v5, v5

    add-double/2addr v7, v9

    return-wide v7
.end method

.method public fromInt(I)[D
    .locals 5
    .param p1, "argb"    # I

    .line 37
    invoke-static {p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    move-result-object v0

    .line 38
    .local v0, "lab":[D
    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    return-object v1
.end method

.method public toInt([D)I
    .locals 7
    .param p1, "lab"    # [D

    .line 44
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v3, p1, v0

    const/4 v0, 0x2

    aget-wide v5, p1, v0

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromLab(DDD)I

    move-result v0

    return v0
.end method
