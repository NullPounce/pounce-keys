.class public final Lcom/sun/mail/imap/YoungerTerm;
.super Ljavax/mail/search/SearchTerm;
.source "YoungerTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x161a7522d4c8dea8L


# instance fields
.field private interval:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "interval"    # I

    .line 42
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 43
    iput p1, p0, Lcom/sun/mail/imap/YoungerTerm;->interval:I

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p1, Lcom/sun/mail/imap/YoungerTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    return v1

    .line 86
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/YoungerTerm;->interval:I

    move-object v2, p1

    check-cast v2, Lcom/sun/mail/imap/YoungerTerm;

    iget v2, v2, Lcom/sun/mail/imap/YoungerTerm;->interval:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getInterval()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/sun/mail/imap/YoungerTerm;->interval:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/sun/mail/imap/YoungerTerm;->interval:I

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 10
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 67
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v1, "d":Ljava/util/Date;
    nop

    .line 72
    if-nez v1, :cond_0

    .line 73
    return v0

    .line 75
    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/sun/mail/imap/YoungerTerm;->interval:I

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    .line 75
    :cond_1
    return v0

    .line 68
    .end local v1    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
