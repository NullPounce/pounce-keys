.class public final Ljavax/mail/search/ReceivedDateTerm;
.super Ljavax/mail/search/DateTerm;
.source "ReceivedDateTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x2641bfb8877db042L


# direct methods
.method public constructor <init>(ILjava/util/Date;)V
    .locals 0
    .param p1, "comparison"    # I
    .param p2, "date"    # Ljava/util/Date;

    .line 39
    invoke-direct {p0, p1, p2}, Ljavax/mail/search/DateTerm;-><init>(ILjava/util/Date;)V

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 70
    instance-of v0, p1, Ljavax/mail/search/ReceivedDateTerm;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/DateTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 54
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v1, "d":Ljava/util/Date;
    nop

    .line 59
    if-nez v1, :cond_0

    .line 60
    return v0

    .line 62
    :cond_0
    invoke-super {p0, v1}, Ljavax/mail/search/DateTerm;->match(Ljava/util/Date;)Z

    move-result v0

    return v0

    .line 55
    .end local v1    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
