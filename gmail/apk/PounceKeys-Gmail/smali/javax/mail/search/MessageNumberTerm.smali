.class public final Ljavax/mail/search/MessageNumberTerm;
.super Ljavax/mail/search/IntegerComparisonTerm;
.source "MessageNumberTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x4aa8453089517f44L


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "number"    # I

    .line 37
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ljavax/mail/search/IntegerComparisonTerm;-><init>(II)V

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p1, Ljavax/mail/search/MessageNumberTerm;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/IntegerComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 51
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v0, "msgno":I
    nop

    .line 56
    invoke-super {p0, v0}, Ljavax/mail/search/IntegerComparisonTerm;->match(I)Z

    move-result v1

    return v1

    .line 52
    .end local v0    # "msgno":I
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
