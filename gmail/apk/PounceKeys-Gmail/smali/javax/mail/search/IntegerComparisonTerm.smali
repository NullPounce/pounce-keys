.class public abstract Ljavax/mail/search/IntegerComparisonTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "IntegerComparisonTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x60a39325f9860814L


# instance fields
.field protected number:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .param p1, "comparison"    # I
    .param p2, "number"    # I

    .line 35
    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    .line 36
    iput p1, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    .line 37
    iput p2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    return v1

    .line 84
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    .line 85
    .local v0, "ict":Ljavax/mail/search/IntegerComparisonTerm;
    iget v2, v0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    iget v3, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne v2, v3, :cond_1

    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getComparison()I
    .locals 1

    .line 55
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .line 46
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected match(I)Z
    .locals 3
    .param p1, "i"    # I

    .line 59
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->comparison:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 73
    return v2

    .line 71
    :pswitch_0
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 69
    :pswitch_1
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 67
    :pswitch_2
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 65
    :pswitch_3
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1

    .line 63
    :pswitch_4
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ge p1, v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1

    .line 61
    :pswitch_5
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-gt p1, v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
