.class public Lcom/sun/mail/util/logging/SeverityComparator;
.super Ljava/lang/Object;
.source "SeverityComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/logging/LogRecord;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x245dae569ea8fc5dL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/sun/mail/util/logging/SeverityComparator;

    invoke-direct {v0}, Lcom/sun/mail/util/logging/SeverityComparator;-><init>()V

    sput-object v0, Lcom/sun/mail/util/logging/SeverityComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compare(JJ)I
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J

    .line 330
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private compare(Ljava/util/logging/Level;Ljava/util/logging/Level;)I
    .locals 4
    .param p1, "a"    # Ljava/util/logging/Level;
    .param p2, "b"    # Ljava/util/logging/Level;

    .line 307
    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(JJ)I

    move-result v0

    :goto_0
    return v0
.end method

.method static getInstance()Lcom/sun/mail/util/logging/SeverityComparator;
    .locals 1

    .line 91
    sget-object v0, Lcom/sun/mail/util/logging/SeverityComparator;->INSTANCE:Ljava/util/Comparator;

    check-cast v0, Lcom/sun/mail/util/logging/SeverityComparator;

    return-object v0
.end method

.method private static toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 6
    .param p1, "chain"    # Ljava/lang/Throwable;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "limit":I
    move-object v1, p1

    .line 109
    .local v1, "root":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 110
    .local v2, "high":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 111
    .local v3, "normal":Ljava/lang/Throwable;
    move-object v4, p1

    .local v4, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v4, :cond_3

    .line 112
    move-object v1, v4

    .line 115
    invoke-virtual {p0, v4}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    move-object v3, v4

    .line 120
    :cond_0
    if-nez v3, :cond_1

    instance-of v5, v4, Ljava/lang/Error;

    if-eqz v5, :cond_1

    .line 121
    move-object v2, v4

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/high16 v5, 0x10000

    if-ne v0, v5, :cond_2

    .line 126
    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    .line 129
    .end local v4    # "cause":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    move-object v4, v2

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    move-object v4, v3

    goto :goto_2

    :cond_5
    move-object v4, v1

    :goto_2
    return-object v4
.end method

.method public final applyThenCompare(Ljava/lang/Throwable;Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "tc1"    # Ljava/lang/Throwable;
    .param p2, "tc2"    # Ljava/lang/Throwable;

    .line 144
    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/util/logging/SeverityComparator;->compareThrowable(Ljava/lang/Throwable;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Ljava/util/logging/LogRecord;

    check-cast p2, Ljava/util/logging/LogRecord;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)I
    .locals 5
    .param p1, "o1"    # Ljava/util/logging/LogRecord;
    .param p2, "o2"    # Ljava/util/logging/LogRecord;

    .line 214
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 222
    if-ne p1, p2, :cond_0

    .line 223
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(Ljava/util/logging/Level;Ljava/util/logging/Level;)I

    move-result v0

    .line 227
    .local v0, "cmp":I
    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/util/logging/SeverityComparator;->applyThenCompare(Ljava/lang/Throwable;Ljava/lang/Throwable;)I

    move-result v0

    .line 229
    if-nez v0, :cond_1

    .line 230
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(JJ)I

    move-result v0

    .line 231
    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sun/mail/util/logging/SeverityComparator;->compare(JJ)I

    move-result v0

    .line 236
    :cond_1
    return v0

    .line 215
    .end local v0    # "cmp":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->toString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareThrowable(Ljava/lang/Throwable;Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "t1"    # Ljava/lang/Throwable;
    .param p2, "t2"    # Ljava/lang/Throwable;

    .line 160
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 161
    return v0

    .line 165
    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_2

    .line 166
    invoke-virtual {p0, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 168
    :cond_2
    if-nez p2, :cond_4

    .line 169
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    :cond_3
    return v1

    .line 175
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 176
    return v0

    .line 180
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 181
    invoke-virtual {p0, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 183
    :cond_7
    invoke-virtual {p0, p2}, Lcom/sun/mail/util/logging/SeverityComparator;->isNormal(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 184
    return v1

    .line 191
    :cond_8
    instance-of v3, p1, Ljava/lang/Error;

    if-eqz v3, :cond_9

    .line 192
    instance-of v0, p2, Ljava/lang/Error;

    xor-int/2addr v0, v1

    return v0

    .line 193
    :cond_9
    instance-of v3, p1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_c

    .line 194
    instance-of v3, p2, Ljava/lang/Error;

    if-eqz v3, :cond_a

    const/4 v0, -0x1

    goto :goto_2

    .line 195
    :cond_a
    instance-of v2, p2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v0, 0x1

    .line 194
    :goto_2
    return v0

    .line 198
    :cond_c
    instance-of v1, p2, Ljava/lang/Error;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_e

    :cond_d
    const/4 v0, -0x1

    .line 197
    :cond_e
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isNormal(Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 274
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 275
    return v0

    .line 281
    :cond_0
    const-class v1, Ljava/lang/Throwable;

    .line 282
    .local v1, "root":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Error;

    .line 283
    .local v2, "error":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eq v3, v1, :cond_3

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "java.lang.ThreadDeath"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    return v5

    .line 290
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Interrupt"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    return v5

    .line 283
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 295
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return v0
.end method
