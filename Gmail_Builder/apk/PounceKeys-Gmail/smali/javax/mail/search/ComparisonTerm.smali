.class public abstract Ljavax/mail/search/ComparisonTerm;
.super Ljavax/mail/search/SearchTerm;
.source "ComparisonTerm.java"


# static fields
.field public static final EQ:I = 0x3

.field public static final GE:I = 0x6

.field public static final GT:I = 0x5

.field public static final LE:I = 0x1

.field public static final LT:I = 0x2

.field public static final NE:I = 0x4

.field private static final serialVersionUID:J = 0x14370cafcc71f144L


# instance fields
.field protected comparison:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p1, Ljavax/mail/search/ComparisonTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    return v1

    .line 50
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/ComparisonTerm;

    .line 51
    .local v0, "ct":Ljavax/mail/search/ComparisonTerm;
    iget v2, v0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    iget v3, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    return v0
.end method
