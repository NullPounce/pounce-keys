.class public Lcom/sun/mail/util/logging/CompactFormatter;
.super Ljava/util/logging/Formatter;
.source "CompactFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/util/logging/CompactFormatter$Alternate;
    }
.end annotation


# instance fields
.field private final fmt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 49
    invoke-static {}, Lcom/sun/mail/util/logging/CompactFormatter;->loadDeclaredClasses()[Ljava/lang/Class;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CompactFormatter;->fmt:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "p":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/logging/CompactFormatter;->fmt:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private defaultIgnore(Ljava/lang/StackTraceElement;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .line 553
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->isSynthetic(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->isStaticUtility(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->isReflection(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private findAndFormat([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 6
    .param p1, "trace"    # [Ljava/lang/StackTraceElement;

    .line 447
    const-string v0, ""

    .line 448
    .local v0, "site":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 449
    .local v4, "s":Ljava/lang/StackTraceElement;
    invoke-virtual {p0, v4}, Lcom/sun/mail/util/logging/CompactFormatter;->ignore(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 450
    invoke-direct {p0, v4}, Lcom/sun/mail/util/logging/CompactFormatter;->formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 451
    goto :goto_1

    .line 448
    .end local v4    # "s":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 456
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 458
    .local v3, "s":Ljava/lang/StackTraceElement;
    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/CompactFormatter;->defaultIgnore(Ljava/lang/StackTraceElement;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 459
    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/CompactFormatter;->formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 460
    goto :goto_3

    .line 457
    .end local v3    # "s":Ljava/lang/StackTraceElement;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 464
    :cond_3
    :goto_3
    return-object v0
.end method

.method private formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .line 476
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 481
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 489
    :cond_1
    return-object v1
.end method

.method private formatZonedDateTime(Ljava/util/logging/LogRecord;)Ljava/lang/Comparable;
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/LogRecord;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 537
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getZonedDateTime(Ljava/util/logging/LogRecord;)Ljava/lang/Comparable;

    move-result-object v0

    .line 538
    .local v0, "zdt":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    if-nez v0, :cond_0

    .line 539
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    .line 541
    :cond_0
    return-object v0
.end method

.method private initFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .line 621
    const-string v0, ".format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const-string v0, "%7$#.160s%n"

    .line 625
    :cond_0
    return-object v0
.end method

.method private static isNullOrSpaces(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 756
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isReflection(Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .line 605
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->isReflectionClass(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 607
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 606
    :catch_2
    move-exception v0

    .line 608
    nop

    .line 609
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.reflect."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sun.reflect."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 609
    :goto_2
    return v0
.end method

.method private isStaticUtility(Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .line 564
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->isStaticUtilityClass(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 566
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 565
    :catch_2
    move-exception v0

    .line 567
    nop

    .line 568
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "cn":Ljava/lang/String;
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    :cond_0
    const-string v1, "Util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Throwables"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 569
    :goto_2
    return v1
.end method

.method private isSynthetic(Ljava/lang/StackTraceElement;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .line 581
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUnknown(Ljava/lang/StackTraceElement;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .line 593
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static loadDeclaredClasses()[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 638
    invoke-static {p0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "limit":I
    move-object v1, p1

    .local v1, "c":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_1

    .line 641
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 642
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 645
    add-int/lit8 v0, v0, 0x1

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_0

    .line 646
    goto :goto_1

    .line 640
    .end local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 650
    .end local v0    # "limit":I
    .end local v1    # "c":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-object p0
.end method

.method private static replaceClassName(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "p"    # [Ljava/lang/Object;

    .line 663
    invoke-static {p0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 664
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 665
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 666
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 667
    .local v3, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 664
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_1
    return-object p0
.end method

.method private static simpleClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 684
    .local p0, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 685
    :catch_0
    move-exception v0

    .line 687
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static simpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 699
    if-eqz p0, :cond_6

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "cursor":I
    const/4 v1, -0x1

    .line 702
    .local v1, "sign":I
    const/4 v2, -0x1

    .line 703
    .local v2, "dot":I
    move v3, v2

    .local v3, "prev":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 705
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 706
    .local v4, "c":I
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 707
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1

    .line 708
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_0

    add-int/lit8 v5, v2, 0x1

    if-eq v5, v1, :cond_0

    .line 709
    move v3, v2

    .line 710
    move v2, v0

    goto :goto_1

    .line 712
    :cond_0
    return-object p0

    .line 715
    :cond_1
    add-int/lit8 v5, v2, 0x1

    if-ne v5, v0, :cond_4

    .line 716
    move v2, v3

    goto :goto_2

    .line 721
    :cond_2
    const/16 v5, 0x24

    if-ne v4, v5, :cond_3

    .line 722
    move v1, v0

    .line 704
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 727
    .end local v3    # "prev":I
    .end local v4    # "c":I
    :cond_4
    :goto_2
    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_6

    .line 728
    if-le v1, v2, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 731
    .end local v0    # "cursor":I
    .end local v1    # "sign":I
    .end local v2    # "dot":I
    :cond_6
    return-object p0
.end method

.method private static simpleFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 742
    if-eqz p0, :cond_1

    .line 743
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 744
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    move-object p0, v1

    .line 746
    .end local v0    # "index":I
    :cond_1
    return-object p0
.end method


# virtual methods
.method protected apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 503
    invoke-static {}, Lcom/sun/mail/util/logging/SeverityComparator;->getInstance()Lcom/sun/mail/util/logging/SeverityComparator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/mail/util/logging/SeverityComparator;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 23
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 207
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v1

    .line 208
    .local v1, "rb":Ljava/util/ResourceBundle;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 210
    .local v2, "l":Ljava/util/Locale;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v15

    .line 211
    .local v15, "msg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatThrown(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v14

    .line 212
    .local v14, "thrown":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatError(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, "err":Ljava/lang/String;
    nop

    .line 214
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatZonedDateTime(Ljava/util/logging/LogRecord;)Ljava/lang/Comparable;

    move-result-object v3

    .line 215
    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatSource(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatLoggerName(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatLevel(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    invoke-direct {v9, v0, v15, v14}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;-><init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    invoke-direct {v10, v0, v14, v15}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;-><init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 223
    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatThreadID(Ljava/util/logging/LogRecord;)Ljava/lang/Number;

    move-result-object v12

    new-instance v8, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    invoke-direct {v8, v0, v15, v13}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;-><init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;

    invoke-direct {v7, v0, v13, v15}, Lcom/sun/mail/util/logging/CompactFormatter$Alternate;-><init>(Lcom/sun/mail/util/logging/CompactFormatter;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatBackTrace(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v16

    .line 228
    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getResourceBundleName()Ljava/lang/String;

    move-result-object v17

    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v7

    move-object v7, v15

    move-object/from16 v20, v8

    move-object v8, v14

    move-object/from16 v21, v13

    .end local v13    # "err":Ljava/lang/String;
    .local v21, "err":Ljava/lang/String;
    move-object/from16 v22, v14

    .end local v14    # "thrown":Ljava/lang/String;
    .local v22, "thrown":Ljava/lang/String;
    move-object/from16 v14, v20

    move-object/from16 v20, v15

    .end local v15    # "msg":Ljava/lang/String;
    .local v20, "msg":Ljava/lang/String;
    move-object/from16 v15, v19

    filled-new-array/range {v3 .. v18}, [Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "params":[Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 232
    iget-object v4, v0, Lcom/sun/mail/util/logging/CompactFormatter;->fmt:Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 234
    :cond_1
    iget-object v4, v0, Lcom/sun/mail/util/logging/CompactFormatter;->fmt:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public formatBackTrace(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 8
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 404
    const-string v0, ""

    .line 405
    .local v0, "site":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    .line 406
    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_4

    .line 407
    invoke-virtual {p0, v1}, Lcom/sun/mail/util/logging/CompactFormatter;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 408
    .local v2, "root":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 409
    .local v3, "trace":[Ljava/lang/StackTraceElement;
    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/CompactFormatter;->findAndFormat([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 411
    const/4 v4, 0x0

    .line 412
    .local v4, "limit":I
    move-object v5, v1

    .local v5, "c":Ljava/lang/Throwable;
    :goto_0
    if-eqz v5, :cond_3

    .line 413
    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 414
    .local v6, "ste":[Ljava/lang/StackTraceElement;
    invoke-direct {p0, v6}, Lcom/sun/mail/util/logging/CompactFormatter;->findAndFormat([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 416
    goto :goto_1

    .line 418
    :cond_0
    array-length v7, v3

    if-nez v7, :cond_1

    .line 419
    move-object v3, v6

    .line 425
    :cond_1
    add-int/lit8 v4, v4, 0x1

    const/high16 v7, 0x10000

    if-ne v4, v7, :cond_2

    .line 426
    goto :goto_1

    .line 412
    .end local v6    # "ste":[Ljava/lang/StackTraceElement;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_0

    .line 431
    .end local v5    # "c":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    array-length v5, v3

    if-eqz v5, :cond_4

    .line 432
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Lcom/sun/mail/util/logging/CompactFormatter;->formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .end local v2    # "root":Ljava/lang/Throwable;
    .end local v3    # "trace":[Ljava/lang/StackTraceElement;
    .end local v4    # "limit":I
    :cond_4
    return-object v0
.end method

.method public formatError(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 390
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->formatMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatLevel(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 301
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatLoggerName(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 334
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 264
    if-eqz p1, :cond_5

    .line 265
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->apply(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 266
    .local v0, "apply":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "m":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "sn":Ljava/lang/String;
    invoke-static {v1}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ": "

    if-nez v4, :cond_3

    .line 270
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {v2}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .local v4, "r":Ljava/lang/String;
    goto :goto_1

    .line 273
    .end local v4    # "r":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v1, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "r":Ljava/lang/String;
    goto :goto_1

    .line 278
    .end local v4    # "r":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "r":Ljava/lang/String;
    goto :goto_1

    .line 281
    .end local v4    # "r":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 284
    .restart local v4    # "r":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    .end local v0    # "apply":Ljava/lang/Throwable;
    .end local v1    # "m":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sn":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 288
    .end local v4    # "r":Ljava/lang/String;
    :cond_5
    const-string v4, ""

    .line 290
    .restart local v4    # "r":Ljava/lang/String;
    :goto_2
    return-object v4
.end method

.method public formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 247
    invoke-super {p0, p1}, Ljava/util/logging/Formatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/CompactFormatter;->replaceClassName(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method public formatSource(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 312
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "source":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/CompactFormatter;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0
.end method

.method public formatThreadID(Ljava/util/logging/LogRecord;)Ljava/lang/Number;
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 352
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public formatThrown(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 367
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    .line 368
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->formatBackTrace(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "site":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/CompactFormatter;->formatMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/sun/mail/util/logging/CompactFormatter;->isNullOrSpaces(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "msg":Ljava/lang/String;
    goto :goto_1

    .line 372
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .line 374
    .restart local v1    # "msg":Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method protected ignore(Ljava/lang/StackTraceElement;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/StackTraceElement;

    .line 514
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->isUnknown(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CompactFormatter;->defaultIgnore(Ljava/lang/StackTraceElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected toAlternate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 525
    if-eqz p1, :cond_0

    const-string v0, "[\\x00-\\x1F\\x7F]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
