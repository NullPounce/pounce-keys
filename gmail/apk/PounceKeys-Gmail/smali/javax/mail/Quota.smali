.class public Ljavax/mail/Quota;
.super Ljava/lang/Object;
.source "Quota.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Quota$Resource;
    }
.end annotation


# instance fields
.field public quotaRoot:Ljava/lang/String;

.field public resources:[Ljavax/mail/Quota$Resource;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "quotaRoot"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public setResourceLimit(Ljava/lang/String;J)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limit"    # J

    .line 87
    iget-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 88
    new-array v0, v2, [Ljavax/mail/Quota$Resource;

    iput-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 89
    new-instance v8, Ljavax/mail/Quota$Resource;

    const-wide/16 v4, 0x0

    move-object v2, v8

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    aput-object v8, v0, v1

    .line 90
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 93
    aget-object v3, v3, v0

    iget-object v3, v3, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v1, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v1, v1, v0

    iput-wide p2, v1, Ljavax/mail/Quota$Resource;->limit:J

    .line 95
    return-void

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_2
    array-length v0, v3

    add-int/2addr v0, v2

    new-array v0, v0, [Ljavax/mail/Quota$Resource;

    .line 99
    .local v0, "ra":[Ljavax/mail/Quota$Resource;
    array-length v4, v3

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    array-length v1, v0

    sub-int/2addr v1, v2

    new-instance v8, Ljavax/mail/Quota$Resource;

    const-wide/16 v4, 0x0

    move-object v2, v8

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    aput-object v8, v0, v1

    .line 101
    iput-object v0, p0, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 102
    return-void
.end method
