.class public Lcom/sun/mail/util/logging/MailHandler;
.super Ljava/util/logging/Handler;
.source "MailHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;,
        Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;,
        Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_FILTERS:[Ljava/util/logging/Filter;

.field private static final EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

.field private static final MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedAction<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_HEADER_SIZE:I = 0x400

.field private static final MUTEX:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MUTEX_LINKAGE:Ljava/lang/Integer;

.field private static final MUTEX_PUBLISH:Ljava/lang/Integer;

.field private static final MUTEX_REPORT:Ljava/lang/Integer;

.field private static final offValue:I


# instance fields
.field private volatile attachmentFilters:[Ljava/util/logging/Filter;

.field private attachmentFormatters:[Ljava/util/logging/Formatter;

.field private attachmentNames:[Ljava/util/logging/Formatter;

.field private auth:Ljavax/mail/Authenticator;

.field private capacity:I

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private contentTypes:Ljavax/activation/FileTypeMap;

.field private data:[Ljava/util/logging/LogRecord;

.field private encoding:Ljava/lang/String;

.field private volatile errorManager:Ljava/util/logging/ErrorManager;

.field private volatile filter:Ljava/util/logging/Filter;

.field private formatter:Ljava/util/logging/Formatter;

.field private isWriting:Z

.field private volatile logLevel:Ljava/util/logging/Level;

.field private mailProps:Ljava/util/Properties;

.field private matched:[I

.field private pushFilter:Ljava/util/logging/Filter;

.field private pushLevel:Ljava/util/logging/Level;

.field private volatile sealed:Z

.field private session:Ljavax/mail/Session;

.field private size:I

.field private subjectFormatter:Ljava/util/logging/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 340
    nop

    .line 344
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/logging/Filter;

    sput-object v1, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FILTERS:[Ljava/util/logging/Filter;

    .line 348
    new-array v0, v0, [Ljava/util/logging/Formatter;

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

    .line 356
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    .line 364
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    const-class v1, Lcom/sun/mail/util/logging/MailHandler;

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    .line 378
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    .line 383
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    .line 388
    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/lang/Integer;

    .line 393
    const/4 v0, -0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_LINKAGE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 523
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 473
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 515
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 524
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 526
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 527
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 538
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 473
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 515
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 539
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 541
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V

    .line 542
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;

    .line 554
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 473
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 515
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 555
    if-eqz p1, :cond_0

    .line 558
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 560
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailProperties0(Ljava/util/Properties;)V

    .line 561
    return-void

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private alignAttachmentFilters()Z
    .locals 6

    .line 1952
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1954
    const/4 v0, 0x0

    .line 1955
    .local v0, "fixed":Z
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v1

    .line 1956
    .local v1, "expect":I
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    array-length v2, v2

    .line 1957
    .local v2, "current":I
    if-eq v2, v1, :cond_1

    .line 1958
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    const-class v4, [Ljava/util/logging/Filter;

    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/logging/Filter;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1960
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->clearMatches(I)V

    .line 1961
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 1965
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1966
    .local v3, "body":Ljava/util/logging/Filter;
    if-eqz v3, :cond_1

    .line 1967
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 1968
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aput-object v3, v5, v4

    .line 1967
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1974
    .end local v3    # "body":Ljava/util/logging/Filter;
    .end local v4    # "i":I
    :cond_1
    if-nez v1, :cond_3

    .line 1975
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1976
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    array-length v3, v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1978
    :cond_3
    :goto_2
    return v0

    .line 1952
    .end local v0    # "fixed":Z
    .end local v1    # "expect":I
    .end local v2    # "current":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private alignAttachmentNames()Z
    .locals 6

    .line 1922
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1923
    const/4 v0, 0x0

    .line 1924
    .local v0, "fixed":Z
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v1

    .line 1925
    .local v1, "expect":I
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    array-length v3, v2

    .line 1926
    .local v3, "current":I
    if-eq v3, v1, :cond_1

    .line 1927
    const-class v4, [Ljava/util/logging/Formatter;

    invoke-static {v2, v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/logging/Formatter;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1929
    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1933
    :cond_1
    if-nez v1, :cond_3

    .line 1934
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1935
    array-length v2, v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1937
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 1938
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v5, v4, v2

    if-nez v5, :cond_4

    .line 1939
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v5, v5, v2

    .line 1940
    invoke-direct {p0, v5}, Lcom/sun/mail/util/logging/MailHandler;->toString(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v5

    .line 1939
    invoke-static {v5}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1937
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1944
    .end local v2    # "i":I
    :cond_5
    :goto_2
    return v0

    .line 1922
    .end local v0    # "fixed":Z
    .end local v1    # "expect":I
    .end local v3    # "current":I
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private allowRestrictedHeaders()Z
    .locals 1

    .line 4234
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->hasLogManager()Z

    move-result v0

    return v0
.end method

.method private appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V
    .locals 8
    .param p1, "p"    # Ljavax/mail/internet/MimePart;
    .param p2, "l"    # Ljava/util/Locale;

    .line 3687
    const-string v0, "\r\n\t"

    const-string v1, "Content-Language"

    :try_start_0
    invoke-static {p2}, Lcom/sun/mail/util/logging/LogManagerProperties;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 3688
    .local v2, "lang":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 3689
    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3690
    .local v3, "header":Ljava/lang/String;
    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3691
    invoke-interface {p1, v1, v2}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3692
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3693
    const-string v4, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 3694
    const/4 v4, 0x0

    .line 3695
    .local v4, "idx":I
    :cond_1
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_2

    .line 3696
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 3697
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 3698
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    .line 3699
    nop

    .line 3703
    :cond_2
    if-gez v4, :cond_5

    .line 3704
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 3705
    .local v5, "len":I
    if-gez v5, :cond_3

    .line 3706
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    .end local v5    # "len":I
    .local v6, "len":I
    goto :goto_0

    .line 3708
    .end local v6    # "len":I
    .restart local v5    # "len":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x8

    .line 3712
    .end local v5    # "len":I
    .restart local v6    # "len":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v5, v7, :cond_4

    .line 3713
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "header":Ljava/lang/String;
    .local v0, "header":Ljava/lang/String;
    goto :goto_1

    .line 3715
    .end local v0    # "header":Ljava/lang/String;
    .restart local v3    # "header":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3717
    .end local v3    # "header":Ljava/lang/String;
    .restart local v0    # "header":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v1, v0}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3723
    .end local v0    # "header":Ljava/lang/String;
    .end local v2    # "lang":Ljava/lang/String;
    .end local v4    # "idx":I
    .end local v6    # "len":I
    :cond_5
    :goto_2
    goto :goto_3

    .line 3721
    :catch_0
    move-exception v0

    .line 3722
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3724
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_3
    return-void
.end method

.method private appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/Part;
    .param p2, "chunk"    # Ljava/lang/String;

    .line 3587
    if-eqz p2, :cond_0

    .line 3588
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3589
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName0(Ljavax/mail/Part;Ljava/lang/String;)V

    goto :goto_0

    .line 3592
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V

    .line 3594
    :cond_1
    :goto_0
    return-void
.end method

.method private appendFileName0(Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 3
    .param p1, "part"    # Ljavax/mail/Part;
    .param p2, "chunk"    # Ljava/lang/String;

    .line 3605
    :try_start_0
    const-string v0, "[\\x00-\\x1F\\x7F]+"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 3606
    invoke-interface {p1}, Ljavax/mail/Part;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 3607
    .local v0, "old":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-interface {p1, v1}, Ljavax/mail/Part;->setFileName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3610
    .end local v0    # "old":Ljava/lang/String;
    goto :goto_1

    .line 3608
    :catch_0
    move-exception v0

    .line 3609
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3611
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_1
    return-void
.end method

.method private appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "chunk"    # Ljava/lang/String;

    .line 3619
    if-eqz p2, :cond_0

    .line 3620
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3621
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject0(Ljavax/mail/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 3624
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V

    .line 3626
    :cond_1
    :goto_0
    return-void
.end method

.method private appendSubject0(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "chunk"    # Ljava/lang/String;

    .line 3637
    :try_start_0
    const-string v0, "[\\x00-\\x1F\\x7F]+"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 3638
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 3639
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 3640
    .local v1, "old":Ljava/lang/String;
    instance-of v2, p1, Ljavax/mail/internet/MimeMessage;

    if-eqz v2, :cond_1

    .line 3641
    move-object v2, p1

    check-cast v2, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3642
    :cond_0
    move-object v3, p2

    :goto_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3641
    invoke-virtual {v2, v3, v4}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    .line 3645
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "old":Ljava/lang/String;
    goto :goto_1

    .line 3640
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v1    # "old":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "msg":Ljavax/mail/Message;
    .end local p2    # "chunk":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3643
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "old":Ljava/lang/String;
    .restart local p1    # "msg":Ljavax/mail/Message;
    .restart local p2    # "chunk":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3644
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3646
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_1
    return-void
.end method

.method private static atIndexMsg(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .line 4243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static attach(Ljavax/mail/MessagingException;Ljava/lang/Exception;)Ljavax/mail/MessagingException;
    .locals 2
    .param p0, "required"    # Ljavax/mail/MessagingException;
    .param p1, "optional"    # Ljava/lang/Exception;

    .line 4178
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4179
    instance-of v0, p1, Ljavax/mail/MessagingException;

    if-eqz v0, :cond_0

    .line 4180
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessagingException;

    .line 4181
    .local v0, "head":Ljavax/mail/MessagingException;
    invoke-virtual {v0, p0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4182
    return-object v0

    .line 4186
    .end local v0    # "head":Ljavax/mail/MessagingException;
    :cond_0
    if-eq p1, p0, :cond_1

    .line 4187
    invoke-virtual {p0, p1}, Ljavax/mail/MessagingException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 4190
    :cond_1
    return-object p0
.end method

.method private static attachmentMismatch(II)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "expected"    # I
    .param p1, "found"    # I

    .line 4165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attachments mismatched, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but given "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 4155
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private checkAccess()V
    .locals 1

    .line 1606
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    if-eqz v0, :cond_0

    .line 1607
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->checkLogManagerAccess()V

    .line 1609
    :cond_0
    return-void
.end method

.method private clearMatches(I)V
    .locals 3
    .param p1, "index"    # I

    .line 772
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    const/4 v0, 0x0

    .local v0, "r":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-ge v0, v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    aget v2, v1, v0

    if-lt v2, p1, :cond_0

    .line 775
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 773
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    .end local v0    # "r":I
    :cond_1
    return-void

    .line 772
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private contentWithEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 1848
    if-eqz p2, :cond_1

    .line 1850
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1851
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    const-string v1, "charset"

    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    .line 1853
    invoke-static {p2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 1854
    move-object p1, p2

    .line 1858
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    :cond_0
    goto :goto_0

    .line 1856
    :catch_0
    move-exception v0

    .line 1857
    .local v0, "ME":Ljavax/mail/MessagingException;
    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1859
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-object p1

    .line 1848
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private createBodyPart()Ljavax/mail/internet/MimeBodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3488
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3489
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 3490
    .local v0, "part":Ljavax/mail/internet/MimeBodyPart;
    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 3491
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    .line 3492
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 3491
    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3493
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3494
    return-object v0

    .line 3488
    .end local v0    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3506
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3507
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 3508
    .local v0, "part":Ljavax/mail/internet/MimeBodyPart;
    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 3509
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v3, v3, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3513
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3514
    return-object v0

    .line 3506
    .end local v0    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static createSimpleFormatter()Ljava/util/logging/Formatter;
    .locals 2

    .line 2214
    const-class v0, Ljava/util/logging/Formatter;

    new-instance v1, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v1}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Formatter;

    return-object v0
.end method

.method private defaultErrorManager()Ljava/util/logging/ErrorManager;
    .locals 2

    .line 2494
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/Handler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2497
    .local v0, "em":Ljava/util/logging/ErrorManager;
    goto :goto_1

    .line 2495
    .end local v0    # "em":Ljava/util/logging/ErrorManager;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2496
    .local v0, "ignore":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 2500
    .local v0, "em":Ljava/util/logging/ErrorManager;
    :goto_1
    if-nez v0, :cond_0

    .line 2501
    new-instance v1, Ljava/util/logging/ErrorManager;

    invoke-direct {v1}, Ljava/util/logging/ErrorManager;-><init>()V

    move-object v0, v1

    .line 2503
    :cond_0
    return-object v0
.end method

.method private descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;
    .locals 2
    .param p2, "l"    # Ljava/util/logging/Level;
    .param p3, "f"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/util/logging/Level;",
            "Ljava/util/logging/Filter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3529
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sorted using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "no comparator"

    goto :goto_0

    .line 3530
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushed when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3531
    if-nez p3, :cond_1

    const-string v1, "no push filter"

    goto :goto_1

    .line 3532
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3529
    return-object v0
.end method

.method private descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "filter"    # Ljava/util/logging/Filter;
    .param p3, "name"    # Ljava/util/logging/Formatter;

    .line 3543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Formatted using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filtered with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3544
    if-nez p2, :cond_0

    const-string v1, "no filter"

    goto :goto_0

    .line 3545
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and named by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3546
    invoke-direct {p0, p3}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3543
    return-object v0
.end method

.method private static emptyFilterArray()[Ljava/util/logging/Filter;
    .locals 1

    .line 1913
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FILTERS:[Ljava/util/logging/Filter;

    return-object v0
.end method

.method private static emptyFormatterArray()[Ljava/util/logging/Formatter;
    .locals 1

    .line 1905
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

    return-object v0
.end method

.method private envelopeFor(Ljavax/mail/Message;Z)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "priority"    # Z

    .line 3460
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3461
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setFrom(Ljavax/mail/Message;)V

    .line 3462
    const-string v0, "mail.to"

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3463
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultRecipient(Ljavax/mail/Message;Ljavax/mail/Message$RecipientType;)V

    .line 3465
    :cond_0
    const-string v0, "mail.cc"

    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    .line 3466
    const-string v0, "mail.bcc"

    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    .line 3467
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setReplyTo(Ljavax/mail/Message;)V

    .line 3468
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setSender(Ljavax/mail/Message;)V

    .line 3469
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailer(Ljavax/mail/Message;)V

    .line 3470
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAutoSubmitted(Ljavax/mail/Message;)V

    .line 3471
    if-eqz p2, :cond_1

    .line 3472
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setPriority(Ljavax/mail/Message;)V

    .line 3476
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3479
    goto :goto_0

    .line 3477
    :catch_0
    move-exception v0

    .line 3478
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3480
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "r"    # Ljava/util/logging/LogRecord;

    .line 3824
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3825
    :catch_0
    move-exception v0

    .line 3826
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3827
    const-string v1, ""

    return-object v1
.end method

.method private getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ccl"    # Ljava/lang/Object;

    .line 4134
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    .line 4137
    :try_start_0
    instance-of v0, p1, Ljava/security/PrivilegedAction;

    if-eqz v0, :cond_0

    .line 4138
    move-object v0, p1

    check-cast v0, Ljava/security/PrivilegedAction;

    .local v0, "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    goto :goto_0

    .line 4140
    .end local v0    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :cond_0
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;-><init>(Ljava/lang/Object;)V

    .line 4142
    .restart local v0    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :goto_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 4143
    .end local v0    # "pa":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<*>;"
    :catch_0
    move-exception v0

    .line 4146
    :cond_1
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    return-object v0
.end method

.method private getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .line 3558
    instance-of v0, p1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v0, :cond_0

    .line 3559
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3561
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1797
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->contentTypes:Ljavax/activation/FileTypeMap;

    invoke-virtual {v0, p1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1799
    .local v0, "type":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1800
    const/4 v1, 0x0

    return-object v1

    .line 1802
    :cond_0
    return-object v0

    .line 1797
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getEncodingName()Ljava/lang/String;
    .locals 1

    .line 1811
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1812
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1813
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 1815
    :cond_0
    return-object v0
.end method

.method private getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljavax/mail/Service;

    .line 4201
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getLocalHost(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4204
    :catch_0
    move-exception v0

    .line 4205
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljavax/mail/Service;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 4202
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 4206
    :goto_0
    nop

    .line 4207
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMatchedPart()I
    .locals 3

    .line 745
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 746
    .local v0, "idx":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 747
    :cond_0
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    .line 749
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getSession(Ljavax/mail/Message;)Ljavax/mail/Session;
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 4218
    if-eqz p1, :cond_0

    .line 4221
    new-instance v0, Ljavax/mail/MessageContext;

    invoke-direct {v0, p1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getSession()Ljavax/mail/Session;

    move-result-object v0

    return-object v0

    .line 4219
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private grow()V
    .locals 4

    .line 1998
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1999
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v0

    .line 2000
    .local v1, "len":I
    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 2001
    .local v2, "newCapacity":I
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gt v2, v3, :cond_0

    if-ge v2, v1, :cond_1

    .line 2002
    :cond_0
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 2004
    :cond_1
    if-eq v1, v3, :cond_2

    .line 2005
    const-class v3, [Ljava/util/logging/LogRecord;

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/LogRecord;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 2006
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    .line 2007
    return-void

    .line 2004
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 1998
    .end local v1    # "len":I
    .end local v2    # "newCapacity":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static hasValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2232
    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private head(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .line 3809
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3810
    :catch_0
    move-exception v0

    .line 3811
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3812
    const-string v1, ""

    return-object v1
.end method

.method private declared-synchronized init(Ljava/util/Properties;)V
    .locals 3
    .param p1, "props"    # Ljava/util/Properties;

    monitor-enter p0

    .line 2017
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    if-eqz v0, :cond_1

    .line 2018
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2019
    .local v0, "p":Ljava/lang/String;
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 2020
    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2022
    .local v1, "ccl":Ljava/lang/Object;
    :try_start_1
    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->contentTypes:Ljavax/activation/FileTypeMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2024
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    nop

    .line 2028
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initErrorManager(Ljava/lang/String;)V

    .line 2030
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initLevel(Ljava/lang/String;)V

    .line 2031
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initFilter(Ljava/lang/String;)V

    .line 2032
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initCapacity(Ljava/lang/String;)V

    .line 2033
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAuthenticator(Ljava/lang/String;)V

    .line 2035
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initEncoding(Ljava/lang/String;)V

    .line 2036
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initFormatter(Ljava/lang/String;)V

    .line 2037
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initComparator(Ljava/lang/String;)V

    .line 2038
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initPushLevel(Ljava/lang/String;)V

    .line 2039
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initPushFilter(Ljava/lang/String;)V

    .line 2041
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initSubject(Ljava/lang/String;)V

    .line 2043
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentFormaters(Ljava/lang/String;)V

    .line 2044
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentFilters(Ljava/lang/String;)V

    .line 2045
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentNames(Ljava/lang/String;)V

    .line 2047
    if-nez p1, :cond_0

    const-string v2, ".verify"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2048
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 2050
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->intern()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2051
    monitor-exit p0

    return-void

    .line 2024
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    throw v2

    .line 2016
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "ccl":Ljava/lang/Object;
    .end local p1    # "props":Ljava/util/Properties;
    :catchall_1
    move-exception p1

    goto :goto_0

    .line 2017
    .restart local p1    # "props":Ljava/util/Properties;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2016
    .end local p1    # "props":Ljava/util/Properties;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private initAttachmentFilters(Ljava/lang/String;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;

    .line 2242
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2243
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    if-eqz v0, :cond_4

    .line 2244
    const-string v0, ".attachment.filters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2245
    .local v0, "list":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2246
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2247
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/util/logging/Filter;

    .line 2248
    .local v2, "a":[Ljava/util/logging/Filter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x4

    if-ge v3, v4, :cond_1

    .line 2249
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2250
    const-string v4, "null"

    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2252
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2257
    goto :goto_1

    .line 2255
    :catch_0
    move-exception v4

    .line 2256
    .local v4, "E":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 2253
    .end local v4    # "E":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 2254
    .local v4, "SE":Ljava/lang/SecurityException;
    throw v4

    .line 2248
    .end local v4    # "SE":Ljava/lang/SecurityException;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2261
    .end local v3    # "i":I
    :cond_1
    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 2262
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentFilters()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2263
    nop

    .line 2264
    const-string v3, "Length mismatch."

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    .line 2263
    const-string v4, "Attachment filters."

    invoke-virtual {p0, v4, v3, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2266
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Filter;
    :cond_2
    goto :goto_2

    .line 2267
    :cond_3
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 2268
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentFilters()Z

    .line 2270
    :goto_2
    return-void

    .line 2243
    .end local v0    # "list":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2242
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initAttachmentFormaters(Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Ljava/lang/String;

    .line 2279
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2280
    const-string v0, ".attachment.formatters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2281
    .local v0, "list":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2283
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2284
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 2285
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v2

    .local v2, "a":[Ljava/util/logging/Formatter;
    goto :goto_0

    .line 2287
    .end local v2    # "a":[Ljava/util/logging/Formatter;
    :cond_0
    array-length v2, v1

    new-array v2, v2, [Ljava/util/logging/Formatter;

    .line 2290
    .restart local v2    # "a":[Ljava/util/logging/Formatter;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 2291
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2292
    const-string v4, "null"

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Attachment formatter."

    const/4 v6, 0x4

    if-nez v4, :cond_2

    .line 2294
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2295
    aget-object v4, v2, v3

    instance-of v4, v4, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v4, :cond_1

    .line 2296
    new-instance v4, Ljava/lang/ClassNotFoundException;

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 2297
    .local v4, "CNFE":Ljava/lang/Exception;
    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2298
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v5

    aput-object v5, v2, v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2302
    .end local v4    # "CNFE":Ljava/lang/Exception;
    :catch_0
    move-exception v4

    .line 2303
    .local v4, "E":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2304
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2305
    .end local v4    # "E":Ljava/lang/Exception;
    :cond_1
    :goto_2
    goto :goto_3

    .line 2300
    :catch_1
    move-exception v4

    .line 2301
    .local v4, "SE":Ljava/lang/SecurityException;
    throw v4

    .line 2307
    .end local v4    # "SE":Ljava/lang/SecurityException;
    :cond_2
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2308
    .local v4, "NPE":Ljava/lang/Exception;
    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2309
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2290
    .end local v4    # "NPE":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2313
    .end local v3    # "i":I
    :cond_3
    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 2314
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Formatter;
    goto :goto_4

    .line 2315
    :cond_4
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 2317
    :goto_4
    return-void

    .line 2279
    .end local v0    # "list":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initAttachmentNames(Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Ljava/lang/String;

    .line 2326
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2327
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    if-eqz v0, :cond_4

    .line 2329
    const-string v0, ".attachment.names"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2330
    .local v0, "list":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2331
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2332
    .local v1, "names":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/util/logging/Formatter;

    .line 2333
    .local v2, "a":[Ljava/util/logging/Formatter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const-string v5, "Attachment names."

    const/4 v6, 0x4

    if-ge v3, v4, :cond_1

    .line 2334
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2335
    const-string v4, "null"

    aget-object v7, v1, v3

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2338
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2342
    goto :goto_3

    .line 2345
    :catch_0
    move-exception v4

    goto :goto_2

    .line 2343
    :catch_1
    move-exception v4

    goto :goto_4

    .line 2339
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    .line 2341
    .local v4, "literal":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    aget-object v5, v1, v3

    invoke-static {v5}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v5

    aput-object v5, v2, v3
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2346
    .local v4, "E":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2347
    .end local v4    # "E":Ljava/lang/Exception;
    :goto_3
    goto :goto_5

    .line 2344
    .local v4, "SE":Ljava/lang/SecurityException;
    :goto_4
    throw v4

    .line 2349
    .end local v4    # "SE":Ljava/lang/SecurityException;
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2350
    .local v4, "NPE":Ljava/lang/Exception;
    invoke-virtual {p0, v5, v4, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2333
    .end local v4    # "NPE":Ljava/lang/Exception;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2354
    .end local v3    # "i":I
    :cond_1
    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 2355
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentNames()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2356
    nop

    .line 2357
    const-string v3, "Length mismatch."

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    .line 2356
    invoke-virtual {p0, v5, v3, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2359
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "a":[Ljava/util/logging/Formatter;
    :cond_2
    goto :goto_6

    .line 2360
    :cond_3
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 2361
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentNames()Z

    .line 2363
    :goto_6
    return-void

    .line 2327
    .end local v0    # "list":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2326
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initAuthenticator(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 2372
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2373
    const-string v0, ".authenticator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2374
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2375
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2377
    :try_start_0
    const-class v1, Ljavax/mail/Authenticator;

    .line 2378
    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Authenticator;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2384
    :catch_0
    move-exception v1

    .line 2385
    .local v1, "E":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .end local v1    # "E":Ljava/lang/Exception;
    goto :goto_1

    .line 2381
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 2383
    .local v1, "literalAuth":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->of(Ljava/lang/String;)Ljavax/mail/Authenticator;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    .line 2386
    .end local v1    # "literalAuth":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 2379
    :catch_3
    move-exception v1

    .line 2380
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2388
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :cond_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->of(Ljava/lang/String;)Ljavax/mail/Authenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    .line 2391
    :cond_1
    :goto_2
    return-void

    .line 2372
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initCapacity(Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/lang/String;

    .line 2443
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2444
    const/16 v0, 0x3e8

    .line 2446
    .local v0, "DEFAULT_CAPACITY":I
    const/16 v1, 0x3e8

    :try_start_0
    const-string v2, ".capacity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2447
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2448
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V

    goto :goto_0

    .line 2450
    :cond_0
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2454
    :catch_0
    move-exception v2

    .line 2455
    .local v2, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2458
    .end local v2    # "RE":Ljava/lang/RuntimeException;
    :goto_1
    iget v2, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gtz v2, :cond_1

    .line 2459
    iput v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 2462
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/logging/LogRecord;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 2463
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    .line 2464
    return-void

    .line 2452
    :catch_1
    move-exception v1

    .line 2453
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2443
    .end local v0    # "DEFAULT_CAPACITY":I
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initComparator(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 2563
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2565
    :try_start_0
    const-string v0, ".comparator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2566
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".comparator.reverse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2567
    .local v1, "reverse":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2568
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    .line 2569
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2570
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    if-eqz v2, :cond_0

    .line 2571
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    goto :goto_0

    .line 2570
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "null"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "p":Ljava/lang/String;
    throw v2

    .line 2574
    .restart local p1    # "p":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2583
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "reverse":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 2575
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "reverse":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No comparator to reverse."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "p":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "reverse":Ljava/lang/String;
    .restart local p1    # "p":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2582
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2584
    .end local v0    # "E":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2579
    :catch_1
    move-exception v0

    .line 2580
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0

    .line 2563
    .end local v0    # "SE":Ljava/lang/SecurityException;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initEncoding(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2473
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2475
    :try_start_0
    const-string v0, ".encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2476
    .local v0, "e":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2477
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setEncoding0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    .end local v0    # "e":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 2481
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2482
    .local v0, "UEE":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2484
    .end local v0    # "UEE":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2479
    :catch_2
    move-exception v0

    .line 2480
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0

    .line 2473
    .end local v0    # "SE":Ljava/lang/SecurityException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initErrorManager(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2513
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2515
    :try_start_0
    const-string v0, ".errorManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2516
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2517
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newErrorManager(Ljava/lang/String;)Ljava/util/logging/ErrorManager;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setErrorManager0(Ljava/util/logging/ErrorManager;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2523
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2521
    :catch_0
    move-exception v0

    .line 2522
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2524
    .end local v0    # "E":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2519
    :catch_1
    move-exception v0

    .line 2520
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0

    .line 2513
    .end local v0    # "SE":Ljava/lang/SecurityException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initFilter(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2423
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2425
    :try_start_0
    const-string v0, ".filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2426
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2427
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2433
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2431
    :catch_0
    move-exception v0

    .line 2432
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2434
    .end local v0    # "E":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2429
    :catch_1
    move-exception v0

    .line 2430
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0

    .line 2423
    .end local v0    # "SE":Ljava/lang/SecurityException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initFormatter(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2533
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2535
    :try_start_0
    const-string v0, ".formatter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2536
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2537
    nop

    .line 2538
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    .line 2539
    .local v1, "f":Ljava/util/logging/Formatter;
    if-eqz v1, :cond_1

    .line 2540
    instance-of v2, v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-nez v2, :cond_0

    .line 2541
    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    goto :goto_0

    .line 2543
    :cond_0
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    .line 2545
    .end local v1    # "f":Ljava/util/logging/Formatter;
    :goto_0
    goto :goto_1

    .line 2539
    .restart local v1    # "f":Ljava/util/logging/Formatter;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "p":Ljava/lang/String;
    throw v2

    .line 2546
    .end local v1    # "f":Ljava/util/logging/Formatter;
    .restart local p1    # "p":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2553
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 2550
    :catch_0
    move-exception v0

    .line 2551
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2552
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    .line 2554
    .end local v0    # "E":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 2548
    :catch_1
    move-exception v0

    .line 2549
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0

    .line 2533
    .end local v0    # "SE":Ljava/lang/SecurityException;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initLevel(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2400
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2402
    :try_start_0
    const-string v0, ".level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2403
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2404
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    goto :goto_0

    .line 2406
    :cond_0
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    .end local v0    # "val":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 2410
    :catch_0
    move-exception v0

    .line 2411
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2412
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 2414
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 2408
    :catch_1
    move-exception v0

    .line 2409
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0

    .line 2400
    .end local v0    # "SE":Ljava/lang/SecurityException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initPushFilter(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2615
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2617
    :try_start_0
    const-string v0, ".pushFilter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2618
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2619
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2623
    :catch_0
    move-exception v0

    .line 2624
    .local v0, "E":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2626
    .end local v0    # "E":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2621
    :catch_1
    move-exception v0

    .line 2622
    .local v0, "SE":Ljava/lang/SecurityException;
    throw v0

    .line 2615
    .end local v0    # "SE":Ljava/lang/SecurityException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initPushLevel(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 2593
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2595
    :try_start_0
    const-string v0, ".pushLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2596
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2597
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2601
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2599
    :catch_0
    move-exception v0

    .line 2600
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2603
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    if-nez v0, :cond_1

    .line 2604
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    .line 2606
    :cond_1
    return-void

    .line 2593
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initSession()Ljavax/mail/Session;
    .locals 3

    .line 3445
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3447
    .local v0, "p":Ljava/lang/String;
    new-instance v1, Lcom/sun/mail/util/logging/LogManagerProperties;

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;-><init>(Ljava/util/Properties;Ljava/lang/String;)V

    .line 3448
    .local v1, "proxy":Lcom/sun/mail/util/logging/LogManagerProperties;
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    invoke-static {v1, v2}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    .line 3449
    return-object v2

    .line 3445
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "proxy":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private initSubject(Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;

    .line 2635
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2636
    const-string v0, ".subject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2637
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2638
    const-string v0, "com.sun.mail.util.logging.CollectorFormatter"

    .line 2641
    :cond_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2643
    :try_start_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2649
    :catch_0
    move-exception v1

    .line 2650
    .local v1, "E":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2651
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .end local v1    # "E":Ljava/lang/Exception;
    goto :goto_1

    .line 2646
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 2648
    .local v1, "literalSubject":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2652
    .end local v1    # "literalSubject":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 2644
    :catch_3
    move-exception v1

    .line 2645
    .local v1, "SE":Ljava/lang/SecurityException;
    throw v1

    .line 2654
    .end local v1    # "SE":Ljava/lang/SecurityException;
    :cond_1
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2656
    :goto_2
    return-void

    .line 2635
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2139
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 2140
    const/4 v0, 0x0

    return-object v0

    .line 2159
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2160
    move-object v0, p2

    .local v0, "key":Ljava/lang/Object;
    goto :goto_0

    .line 2164
    .end local v0    # "key":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2169
    .restart local v0    # "key":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 2170
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2171
    .local v1, "found":Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 2173
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2174
    .local v2, "right":Z
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2175
    .local v3, "left":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2177
    invoke-interface {p1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2178
    if-eqz v1, :cond_3

    .line 2179
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2180
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2181
    if-eq v1, p2, :cond_3

    .line 2182
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2183
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 2187
    :cond_2
    if-eq v2, v3, :cond_3

    .line 2188
    invoke-direct {p0, p2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNonSymmetric(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2191
    :cond_3
    :goto_1
    move-object v2, p2

    .line 2192
    .end local v3    # "left":Z
    .local v2, "use":Ljava/lang/Object;
    goto :goto_2

    .line 2194
    .end local v2    # "use":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 2195
    move-object v2, v1

    .restart local v2    # "use":Ljava/lang/Object;
    goto :goto_2

    .line 2197
    .end local v2    # "use":Ljava/lang/Object;
    :cond_5
    invoke-direct {p0, p2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2198
    move-object v2, p2

    .line 2201
    .end local v1    # "found":Ljava/lang/Object;
    .restart local v2    # "use":Ljava/lang/Object;
    :goto_2
    goto :goto_3

    .line 2202
    .end local v2    # "use":Ljava/lang/Object;
    :cond_6
    move-object v2, p2

    .line 2204
    .restart local v2    # "use":Ljava/lang/Object;
    :goto_3
    return-object v2
.end method

.method private intern()V
    .locals 7

    .line 2061
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2065
    const/4 v0, 0x4

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 2067
    .local v1, "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2

    .line 2070
    goto :goto_0

    .line 2068
    :catch_0
    move-exception v2

    .line 2069
    .local v2, "se":Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2073
    .end local v2    # "se":Ljava/lang/SecurityException;
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 2074
    .local v2, "canidate":Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2075
    .local v3, "result":Ljava/lang/Object;
    if-eq v3, v2, :cond_0

    instance-of v4, v3, Ljava/util/logging/Filter;

    if-eqz v4, :cond_0

    .line 2076
    move-object v4, v3

    check-cast v4, Ljava/util/logging/Filter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 2079
    :cond_0
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    move-object v2, v4

    .line 2080
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 2081
    if-eq v3, v2, :cond_1

    instance-of v4, v3, Ljava/util/logging/Formatter;

    if-eqz v4, :cond_1

    .line 2082
    move-object v4, v3

    check-cast v4, Ljava/util/logging/Formatter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2

    .line 2086
    :cond_1
    goto :goto_1

    .line 2084
    .end local v2    # "canidate":Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 2085
    .local v2, "se":Ljava/lang/SecurityException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2088
    .end local v2    # "se":Ljava/lang/SecurityException;
    :goto_1
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2089
    .local v2, "canidate":Ljava/lang/Object;
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2090
    .restart local v3    # "result":Ljava/lang/Object;
    if-eq v3, v2, :cond_2

    instance-of v4, v3, Ljava/util/logging/Formatter;

    if-eqz v4, :cond_2

    .line 2091
    move-object v4, v3

    check-cast v4, Ljava/util/logging/Formatter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2094
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    move-object v2, v4

    .line 2095
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 2096
    if-eq v3, v2, :cond_3

    instance-of v4, v3, Ljava/util/logging/Filter;

    if-eqz v4, :cond_3

    .line 2097
    move-object v4, v3

    check-cast v4, Ljava/util/logging/Filter;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    .line 2100
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v6, v5

    if-ge v4, v6, :cond_7

    .line 2101
    aget-object v5, v5, v4

    move-object v2, v5

    .line 2102
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 2103
    if-eq v3, v2, :cond_4

    instance-of v5, v3, Ljava/util/logging/Formatter;

    if-eqz v5, :cond_4

    .line 2104
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    move-object v6, v3

    check-cast v6, Ljava/util/logging/Formatter;

    aput-object v6, v5, v4

    .line 2107
    :cond_4
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v5, v5, v4

    move-object v2, v5

    .line 2108
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 2109
    if-eq v3, v2, :cond_5

    instance-of v5, v3, Ljava/util/logging/Filter;

    if-eqz v5, :cond_5

    .line 2110
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    move-object v6, v3

    check-cast v6, Ljava/util/logging/Filter;

    aput-object v6, v5, v4

    .line 2113
    :cond_5
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v5, v5, v4

    move-object v2, v5

    .line 2114
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 2115
    if-eq v3, v2, :cond_6

    instance-of v5, v3, Ljava/util/logging/Formatter;

    if-eqz v5, :cond_6

    .line 2116
    iget-object v5, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    move-object v6, v3

    check-cast v6, Ljava/util/logging/Formatter;

    aput-object v6, v5, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_2

    .line 2100
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1    # "seen":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "canidate":Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    .end local v4    # "i":I
    :cond_7
    goto :goto_3

    .line 2121
    :catch_2
    move-exception v1

    .line 2122
    .local v1, "skip":Ljava/lang/LinkageError;
    invoke-virtual {v1}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v3, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_4

    .line 2119
    .end local v1    # "skip":Ljava/lang/LinkageError;
    :catch_3
    move-exception v1

    .line 2120
    .local v1, "skip":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2124
    .end local v1    # "skip":Ljava/lang/Exception;
    :goto_3
    nop

    .line 2125
    :goto_4
    return-void

    .line 2061
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private isAttachmentLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 2666
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v0

    .line 2667
    .local v0, "filters":[Ljava/util/logging/Filter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 2668
    aget-object v2, v0, v1

    .line 2669
    .local v2, "f":Ljava/util/logging/Filter;
    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2667
    .end local v2    # "f":Ljava/util/logging/Filter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2670
    .restart local v2    # "f":Ljava/util/logging/Filter;
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setMatchedPart(I)V

    .line 2671
    const/4 v3, 0x1

    return v3

    .line 2674
    .end local v1    # "i":I
    .end local v2    # "f":Ljava/util/logging/Filter;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 2223
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

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

.method private isPushable(Ljava/util/logging/LogRecord;)Z
    .locals 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 2685
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2686
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getPushLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 2687
    .local v0, "value":I
    sget v1, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    .line 2691
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getPushFilter()Ljava/util/logging/Filter;

    move-result-object v1

    .line 2692
    .local v1, "push":Ljava/util/logging/Filter;
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2693
    return v2

    .line 2696
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getMatchedPart()I

    move-result v3

    .line 2697
    .local v3, "match":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v4

    if-eq v4, v1, :cond_3

    :cond_2
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v4, v4, v3

    if-ne v4, v1, :cond_4

    .line 2699
    :cond_3
    return v2

    .line 2701
    :cond_4
    invoke-interface {v1, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    return v2

    .line 2688
    .end local v1    # "push":Ljava/util/logging/Filter;
    .end local v3    # "match":I
    :cond_5
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 2685
    .end local v0    # "value":I
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private localeFor(Ljava/util/logging/LogRecord;)Ljava/util/Locale;
    .locals 3
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    .line 3658
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    .line 3659
    .local v0, "rb":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_1

    .line 3660
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 3661
    .local v1, "l":Ljava/util/Locale;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3667
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    .line 3670
    .end local v1    # "l":Ljava/util/Locale;
    :cond_1
    const/4 v1, 0x0

    .line 3672
    .restart local v1    # "l":Ljava/util/Locale;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private publish0(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 647
    monitor-enter p0

    .line 648
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-ge v0, v1, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->grow()V

    .line 652
    :cond_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 654
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getMatchedPart()I

    move-result v3

    aput v3, v1, v0

    .line 655
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    aput-object p1, v0, v1

    .line 656
    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 657
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isPushable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    .line 658
    .local v0, "priority":Z
    if-nez v0, :cond_2

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 661
    :cond_1
    const/4 v1, 0x0

    .local v1, "msg":Ljavax/mail/Message;
    goto :goto_1

    .line 659
    .end local v1    # "msg":Ljavax/mail/Message;
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v1

    .restart local v1    # "msg":Ljavax/mail/Message;
    goto :goto_1

    .line 664
    .end local v0    # "priority":Z
    .end local v1    # "msg":Ljavax/mail/Message;
    :cond_3
    const/4 v0, 0x0

    .line 665
    .restart local v0    # "priority":Z
    const/4 v1, 0x0

    .line 667
    .restart local v1    # "msg":Ljavax/mail/Message;
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    if-eqz v1, :cond_4

    .line 670
    invoke-direct {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V

    .line 672
    :cond_4
    return-void

    .line 667
    .end local v0    # "priority":Z
    .end local v1    # "msg":Ljavax/mail/Message;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private push(ZI)V
    .locals 1
    .param p1, "priority"    # Z
    .param p2, "code"    # I

    .line 2711
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->tryMutex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2713
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v0

    .line 2714
    .local v0, "msg":Ljavax/mail/Message;
    if-eqz v0, :cond_0

    .line 2715
    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2720
    .end local v0    # "msg":Ljavax/mail/Message;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 2721
    goto :goto_2

    .line 2720
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2717
    :catch_0
    move-exception v0

    .line 2718
    .local v0, "JDK8152515":Ljava/lang/LinkageError;
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "JDK8152515":Ljava/lang/LinkageError;
    goto :goto_0

    .line 2720
    :goto_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 2721
    throw v0

    .line 2723
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportUnPublishedError(Ljava/util/logging/LogRecord;)V

    .line 2725
    :goto_2
    return-void
.end method

.method private readOnlyAttachmentFilters()[Ljava/util/logging/Filter;
    .locals 1

    .line 1897
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    return-object v0
.end method

.method private releaseMutex()V
    .locals 1

    .line 732
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 733
    return-void
.end method

.method private reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .line 1746
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->toRawString(Ljavax/mail/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    :goto_0
    goto :goto_1

    .line 1752
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1749
    :catch_1
    move-exception v0

    .line 1750
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 1747
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1748
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "re":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1754
    :goto_1
    goto :goto_3

    .line 1753
    .local v0, "GLASSFISH_21258":Ljava/lang/LinkageError;
    :goto_2
    invoke-direct {p0, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    .line 1755
    .end local v0    # "GLASSFISH_21258":Ljava/lang/LinkageError;
    :goto_3
    return-void
.end method

.method private reportFilterError(Ljava/util/logging/LogRecord;)V
    .locals 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 3753
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3754
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v0

    .line 3755
    .local v0, "f":Ljava/util/logging/Formatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was filtered from all message parts.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3757
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3758
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3759
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3760
    .local v2, "txt":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {p0, v1, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3762
    return-void

    .line 3753
    .end local v0    # "f":Ljava/util/logging/Formatter;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "txt":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private reportLinkageError(Ljava/lang/Throwable;I)V
    .locals 4
    .param p1, "le"    # Ljava/lang/Throwable;
    .param p2, "code"    # I

    .line 1769
    if-eqz p1, :cond_5

    .line 1773
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1774
    .local v1, "idx":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_LINKAGE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 1775
    :cond_0
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_LINKAGE:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1777
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 1778
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    if-eqz v1, :cond_1

    .line 1782
    goto :goto_2

    .line 1784
    :cond_1
    goto :goto_3

    .line 1781
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1782
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1784
    :cond_2
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 1786
    :goto_0
    throw v0

    .line 1779
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1781
    :goto_1
    if-eqz v1, :cond_3

    .line 1782
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 1784
    :cond_3
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 1786
    nop

    .line 1788
    :cond_4
    :goto_4
    return-void

    .line 1770
    .end local v1    # "idx":Ljava/lang/Integer;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "found"    # Ljava/lang/Object;

    .line 3787
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3788
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not be equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3789
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3787
    const-string v1, "Non discriminating equals implementation."

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3791
    return-void
.end method

.method private reportNonSymmetric(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "found"    # Ljava/lang/Object;

    .line 3772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3773
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3774
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 3772
    const-string v1, "Non symmetric equals implementation."

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3776
    return-void
.end method

.method private reportNullError(I)V
    .locals 2
    .param p1, "code"    # I

    .line 3799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const-string v1, "null"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3800
    return-void
.end method

.method private reportUnPublishedError(Ljava/util/logging/LogRecord;)V
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 683
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 684
    .local v1, "idx":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 685
    :cond_0
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 688
    if-eqz p1, :cond_1

    .line 689
    :try_start_0
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    .line 690
    .local v2, "f":Ljava/util/logging/Formatter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not published. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 692
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2, p1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-direct {p0, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 693
    .local v2, "msg":Ljava/lang/String;
    goto :goto_0

    .line 701
    .end local v2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 694
    :cond_1
    const/4 v2, 0x0

    .line 696
    .restart local v2    # "msg":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recursive publish detected by thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 698
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 699
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 704
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 706
    nop

    .line 708
    :cond_3
    :goto_1
    return-void

    .line 701
    :goto_2
    if-eqz v1, :cond_4

    .line 702
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 704
    :cond_4
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 706
    :goto_3
    throw v0
.end method

.method private reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .param p2, "verify"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .line 3379
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "An empty message was sent."

    invoke-direct {v0, v1, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3381
    .local v0, "write":Ljavax/mail/MessagingException;
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3382
    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3383
    return-void
.end method

.method private reset()V
    .locals 5

    .line 1985
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1986
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v0, v2, :cond_0

    .line 1987
    invoke-static {v1, v3, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    .line 1989
    :cond_0
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1991
    :goto_0
    iput v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 1992
    return-void

    .line 1985
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private saveChangesNoContent(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 3
    .param p1, "abort"    # Ljavax/mail/Message;
    .param p2, "msg"    # Ljava/lang/String;

    .line 3280
    if-eqz p1, :cond_2

    .line 3283
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->saveChanges()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3301
    goto :goto_0

    .line 3302
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    .line 3284
    :catch_2
    move-exception v0

    .line 3288
    .local v0, "xferEncoding":Ljava/lang/NullPointerException;
    :try_start_1
    const-string v1, "Content-Transfer-Encoding"

    .line 3289
    .local v1, "cte":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3290
    const-string v2, "base64"

    invoke-virtual {p1, v1, v2}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    invoke-virtual {p1}, Ljavax/mail/Message;->saveChanges()V

    .line 3300
    .end local v1    # "cte":Ljava/lang/String;
    nop

    .line 3304
    .end local v0    # "xferEncoding":Ljava/lang/NullPointerException;
    :goto_0
    goto :goto_3

    .line 3293
    .restart local v0    # "xferEncoding":Ljava/lang/NullPointerException;
    .restart local v1    # "cte":Ljava/lang/String;
    :cond_0
    nop

    .end local p1    # "abort":Ljavax/mail/Message;
    .end local p2    # "msg":Ljava/lang/String;
    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3295
    .end local v1    # "cte":Ljava/lang/String;
    .restart local p1    # "abort":Ljavax/mail/Message;
    .restart local p2    # "msg":Ljava/lang/String;
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    .line 3296
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    if-eq v1, v0, :cond_1

    .line 3297
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 3299
    :cond_1
    nop

    .end local p1    # "abort":Ljavax/mail/Message;
    .end local p2    # "msg":Ljava/lang/String;
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3303
    .end local v1    # "e":Ljava/lang/Exception;
    .local v0, "ME":Ljava/lang/Exception;
    .restart local p1    # "abort":Ljavax/mail/Message;
    .restart local p2    # "msg":Ljava/lang/String;
    :goto_2
    const/4 v1, 0x5

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3306
    .end local v0    # "ME":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void
.end method

.method private send(Ljavax/mail/Message;ZI)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "priority"    # Z
    .param p3, "code"    # I

    .line 2739
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->envelopeFor(Ljavax/mail/Message;Z)V

    .line 2740
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_1
    invoke-static {p1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2744
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    goto :goto_0

    .line 2744
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    nop

    .end local p1    # "msg":Ljavax/mail/Message;
    .end local p2    # "priority":Z
    .end local p3    # "code":I
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2748
    .end local v0    # "ccl":Ljava/lang/Object;
    .restart local p1    # "msg":Ljavax/mail/Message;
    .restart local p2    # "priority":Z
    .restart local p3    # "code":I
    :catch_0
    move-exception v0

    .line 2749
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 2746
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2747
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 2750
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 2751
    :goto_1
    return-void
.end method

.method private setAcceptLang(Ljavax/mail/Part;)V
    .locals 3
    .param p1, "p"    # Ljavax/mail/Part;

    .line 3735
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3736
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3737
    const-string v1, "Accept-Language"

    invoke-interface {p1, v1, v0}, Ljavax/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3741
    .end local v0    # "lang":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 3739
    :catch_0
    move-exception v0

    .line 3740
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3742
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private setAuthenticator0(Ljavax/mail/Authenticator;)V
    .locals 1
    .param p1, "auth"    # Ljavax/mail/Authenticator;

    .line 1234
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1237
    monitor-enter p0

    .line 1238
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1241
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    .line 1242
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->updateSession()Ljavax/mail/Session;

    move-result-object v0

    .line 1243
    .local v0, "settings":Ljavax/mail/Session;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 1245
    return-void

    .line 1239
    .end local v0    # "settings":Ljavax/mail/Session;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "auth":Ljavax/mail/Authenticator;
    throw v0

    .line 1243
    .restart local p1    # "auth":Ljavax/mail/Authenticator;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setAutoSubmitted(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3912
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->allowRestrictedHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3914
    :try_start_0
    const-string v0, "auto-submitted"

    const-string v1, "auto-generated"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3917
    goto :goto_0

    .line 3915
    :catch_0
    move-exception v0

    .line 3916
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3919
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized setCapacity0(I)V
    .locals 2
    .param p1, "newCapacity"    # I

    monitor-enter p0

    .line 1873
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1874
    if-lez p1, :cond_2

    .line 1878
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_1

    .line 1882
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gez v0, :cond_0

    .line 1883
    neg-int v0, p1

    iput v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    goto :goto_0

    .line 1885
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    iput p1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    :goto_0
    monitor-exit p0

    return-void

    .line 1879
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1875
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capacity must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1872
    .end local p1    # "newCapacity":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4
    .param p1, "part"    # Ljavax/mail/internet/MimePart;
    .param p2, "buf"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1826
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 1827
    .local v0, "charset":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v1, "text/plain"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1828
    invoke-direct {p0, p3, v0}, Lcom/sun/mail/util/logging/MailHandler;->contentWithEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1830
    :try_start_0
    new-instance v1, Ljavax/mail/util/ByteArrayDataSource;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/mail/util/ByteArrayDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    .local v1, "source":Ljavax/activation/DataSource;
    new-instance v2, Ljavax/activation/DataHandler;

    invoke-direct {v2, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-interface {p1, v2}, Ljavax/mail/internet/MimePart;->setDataHandler(Ljavax/activation/DataHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "source":Ljavax/activation/DataSource;
    goto :goto_0

    .line 1832
    :catch_0
    move-exception v1

    .line 1833
    .local v1, "IOE":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1834
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljavax/mail/internet/MimePart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    .end local v1    # "IOE":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 1837
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljavax/mail/internet/MimePart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    :goto_1
    return-void
.end method

.method private setDefaultFrom(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3956
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->setFrom()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3959
    goto :goto_0

    .line 3957
    :catch_0
    move-exception v0

    .line 3958
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3960
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private setDefaultRecipient(Ljavax/mail/Message;Ljavax/mail/Message$RecipientType;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "type"    # Ljavax/mail/Message$RecipientType;

    .line 3972
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 3973
    .local v0, "a":Ljavax/mail/Address;
    if-eqz v0, :cond_0

    .line 3974
    invoke-virtual {p1, p2, v0}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    goto :goto_0

    .line 3976
    :cond_0
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 3977
    .local v1, "m":Ljavax/mail/internet/MimeMessage;
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->setFrom()V

    .line 3978
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v2

    .line 3979
    .local v2, "from":[Ljavax/mail/Address;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 3980
    invoke-virtual {p1, p2, v2}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 3988
    .end local v0    # "a":Ljavax/mail/Address;
    .end local v1    # "m":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "from":[Ljavax/mail/Address;
    :goto_0
    goto :goto_2

    .line 3982
    .restart local v0    # "a":Ljavax/mail/Address;
    .restart local v1    # "m":Ljavax/mail/internet/MimeMessage;
    .restart local v2    # "from":[Ljavax/mail/Address;
    :cond_1
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "No local address."

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "msg":Ljavax/mail/Message;
    .end local p2    # "type":Ljavax/mail/Message$RecipientType;
    throw v3
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3985
    .end local v0    # "a":Ljavax/mail/Address;
    .end local v1    # "m":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "from":[Ljavax/mail/Address;
    .restart local p1    # "msg":Ljavax/mail/Message;
    .restart local p2    # "type":Ljavax/mail/Message$RecipientType;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3986
    .local v0, "ME":Ljava/lang/Exception;
    :goto_1
    const-string v1, "Unable to compute a default recipient."

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3989
    .end local v0    # "ME":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private setEncoding0(Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1042
    if-eqz p1, :cond_1

    .line 1044
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    goto :goto_0

    .line 1045
    :cond_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "e":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .restart local p1    # "e":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "icne":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1052
    .end local v0    # "icne":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_1
    :goto_0
    monitor-enter p0

    .line 1053
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->encoding:Ljava/lang/String;

    .line 1054
    monitor-exit p0

    .line 1055
    return-void

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/internet/MimeMessage;
    .param p2, "verify"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 3399
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3400
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    .line 3401
    .local v0, "body":Ljavax/mail/internet/MimeBodyPart;
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;

    move-result-object v1

    .line 3402
    .local v1, "msgDesc":Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v2

    .line 3403
    .local v2, "subjectType":Ljava/lang/String;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3405
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Formatted using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3406
    if-nez p3, :cond_0

    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3407
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filtered with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and named by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3405
    invoke-virtual {v0, v3}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3410
    invoke-direct {p0, p3}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-direct {p0, v0, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 3411
    new-instance v3, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v3}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 3412
    .local v3, "multipart":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v3, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 3413
    invoke-virtual {p1, v3}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 3414
    invoke-virtual {p1, v1}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 3415
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3416
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3419
    .end local v0    # "body":Ljavax/mail/internet/MimeBodyPart;
    .end local v1    # "msgDesc":Ljava/lang/String;
    .end local v2    # "subjectType":Ljava/lang/String;
    .end local v3    # "multipart":Ljavax/mail/internet/MimeMultipart;
    goto :goto_2

    .line 3403
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "msg":Ljavax/mail/internet/MimeMessage;
    .end local p2    # "verify":Ljava/lang/String;
    .end local p3    # "t":Ljava/lang/Throwable;
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3417
    .restart local p1    # "msg":Ljavax/mail/internet/MimeMessage;
    .restart local p2    # "verify":Ljava/lang/String;
    .restart local p3    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3418
    .local v0, "ME":Ljava/lang/Exception;
    :goto_1
    const-string v1, "Unable to create body."

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3420
    .end local v0    # "ME":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private setErrorManager0(Ljava/util/logging/ErrorManager;)V
    .locals 1
    .param p1, "em"    # Ljava/util/logging/ErrorManager;

    .line 960
    if-eqz p1, :cond_0

    .line 964
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 966
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 967
    monitor-exit p0

    .line 969
    goto :goto_0

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "em":Ljava/util/logging/ErrorManager;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    .line 968
    .restart local p1    # "em":Ljava/util/logging/ErrorManager;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 970
    :goto_0
    return-void

    .line 961
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setFrom(Ljavax/mail/Message;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3926
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.from"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3927
    .local v0, "from":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3929
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 3930
    .local v2, "address":[Ljavax/mail/Address;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 3931
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3932
    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    goto :goto_0

    .line 3934
    :cond_0
    invoke-virtual {p1, v2}, Ljavax/mail/Message;->addFrom([Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3941
    .end local v2    # "address":[Ljavax/mail/Address;
    :catch_0
    move-exception v1

    .line 3942
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3943
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultFrom(Ljavax/mail/Message;)V

    .line 3944
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 3946
    :cond_2
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultFrom(Ljavax/mail/Message;)V

    .line 3948
    :goto_1
    return-void
.end method

.method private setIncompleteCopy(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3899
    :try_start_0
    const-string v0, "Incomplete-Copy"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3902
    goto :goto_0

    .line 3900
    :catch_0
    move-exception v0

    .line 3901
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3903
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private setMailProperties0(Ljava/util/Properties;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Properties;

    .line 1268
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1269
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/util/Properties;

    .line 1271
    monitor-enter p0

    .line 1272
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1275
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1276
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->updateSession()Ljavax/mail/Session;

    move-result-object v0

    .line 1277
    .local v0, "settings":Ljavax/mail/Session;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 1279
    return-void

    .line 1273
    .end local v0    # "settings":Ljavax/mail/Session;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "props":Ljava/util/Properties;
    throw v0

    .line 1277
    .restart local p1    # "props":Ljava/util/Properties;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setMailer(Ljavax/mail/Message;)V
    .locals 7
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3852
    const/4 v0, 0x5

    :try_start_0
    const-class v1, Lcom/sun/mail/util/logging/MailHandler;

    .line 3853
    .local v1, "mail":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3855
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, v1, :cond_0

    .line 3856
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "value":Ljava/lang/String;
    goto :goto_1

    .line 3859
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3863
    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3860
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3861
    .local v3, "E":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3862
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[^\\x00-\\x7F]"

    const-string v6, "\u001a"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3864
    .local v3, "value":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " using the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extension."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5, v4}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 3867
    :goto_1
    const-string v4, "X-Mailer"

    invoke-virtual {p1, v4, v3}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3870
    .end local v1    # "mail":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_2

    .line 3868
    :catch_1
    move-exception v1

    .line 3869
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3871
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    :goto_2
    return-void
.end method

.method private setMatchedPart(I)V
    .locals 3
    .param p1, "index"    # I

    .line 760
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 763
    :cond_0
    return-void
.end method

.method private setPriority(Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3879
    :try_start_0
    const-string v0, "Importance"

    const-string v1, "High"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3880
    const-string v0, "Priority"

    const-string/jumbo v1, "urgent"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    const-string v0, "X-Priority"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3884
    goto :goto_0

    .line 3882
    :catch_0
    move-exception v0

    .line 3883
    .local v0, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3885
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method private setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/mail/Message$RecipientType;

    .line 4055
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4056
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 4057
    .local v2, "containsKey":Z
    :goto_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4059
    :try_start_0
    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 4060
    .local v1, "address":[Ljavax/mail/Address;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 4061
    invoke-virtual {p1, p3, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4065
    .end local v1    # "address":[Ljavax/mail/Address;
    :cond_1
    goto :goto_1

    .line 4063
    :catch_0
    move-exception v1

    .line 4064
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 4067
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    :cond_2
    :goto_1
    return v2
.end method

.method private setReplyTo(Ljavax/mail/Message;)V
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 3996
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.reply.to"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3997
    .local v0, "reply":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3999
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 4000
    .local v1, "address":[Ljavax/mail/Address;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 4001
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->setReplyTo([Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4005
    .end local v1    # "address":[Ljavax/mail/Address;
    :cond_0
    goto :goto_0

    .line 4003
    :catch_0
    move-exception v1

    .line 4004
    .local v1, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 4007
    .end local v1    # "ME":Ljavax/mail/MessagingException;
    :cond_1
    :goto_0
    return-void
.end method

.method private setSender(Ljavax/mail/Message;)V
    .locals 5
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 4014
    instance-of v0, p1, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_2

    .line 4015
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.sender"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4016
    .local v0, "sender":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4018
    nop

    .line 4019
    const/4 v1, 0x5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    .line 4020
    .local v3, "address":[Ljavax/mail/internet/InternetAddress;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 4021
    move-object v4, p1

    check-cast v4, Ljavax/mail/internet/MimeMessage;

    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Ljavax/mail/internet/MimeMessage;->setSender(Ljavax/mail/Address;)V

    .line 4022
    array-length v2, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 4023
    const-string v2, "Ignoring other senders."

    .line 4024
    invoke-direct {p0, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->tooManyAddresses([Ljavax/mail/Address;I)Ljavax/mail/internet/AddressException;

    move-result-object v4

    .line 4023
    invoke-virtual {p0, v2, v4, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4030
    .end local v3    # "address":[Ljavax/mail/internet/InternetAddress;
    :cond_0
    goto :goto_0

    .line 4028
    :catch_0
    move-exception v2

    .line 4029
    .local v2, "ME":Ljavax/mail/MessagingException;
    invoke-virtual {v2}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 4032
    .end local v2    # "ME":Ljavax/mail/MessagingException;
    :cond_1
    :goto_0
    return-void

    .line 4014
    .end local v0    # "sender":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private sort()V
    .locals 4

    .line 2758
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2759
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 2761
    :try_start_0
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 2762
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    invoke-static {v2, v3, v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_0

    .line 2764
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v3

    invoke-interface {v0, v1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2771
    :goto_0
    goto :goto_1

    .line 2765
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    .line 2766
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2769
    :catch_0
    move-exception v0

    .line 2770
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2773
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    :cond_2
    :goto_1
    return-void

    .line 2758
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "f"    # Ljava/util/logging/Formatter;
    .param p2, "def"    # Ljava/lang/String;

    .line 3839
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3840
    :catch_0
    move-exception v0

    .line 3841
    .local v0, "RE":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3842
    return-object p2
.end method

.method private toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 4101
    if-nez p1, :cond_0

    .line 4102
    const-string v0, "null"

    return-object v0

    .line 4105
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 4107
    .local v0, "charset":Ljava/lang/String;
    const/16 v1, 0x20

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4111
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4112
    .local v3, "ows":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4113
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4115
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4116
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "pw":Ljava/io/PrintWriter;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 4117
    .end local v3    # "ows":Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    .line 4111
    .restart local v3    # "ows":Ljava/io/OutputStreamWriter;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "ows":Ljava/io/OutputStreamWriter;
    .end local p1    # "t":Ljava/lang/Throwable;
    :goto_0
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "ows":Ljava/io/OutputStreamWriter;
    .restart local p1    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "charset":Ljava/lang/String;
    .end local p1    # "t":Ljava/lang/Throwable;
    :goto_1
    throw v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 4120
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "ows":Ljava/io/OutputStreamWriter;
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local p1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 4121
    .local v2, "badMimeCharset":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4118
    .end local v2    # "badMimeCharset":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 4119
    .local v2, "unexpected":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toRawString(Ljavax/mail/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4080
    if-eqz p1, :cond_0

    .line 4081
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4083
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSize()I

    move-result v1

    const/16 v2, 0x400

    add-int/2addr v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4084
    .local v1, "nbytes":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4085
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v2}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 4086
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4088
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4086
    return-object v3

    .line 4088
    .end local v1    # "nbytes":I
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    throw v1

    .line 4091
    .end local v0    # "ccl":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private toString(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .line 3572
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3573
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3574
    return-object v0

    .line 3576
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private tooManyAddresses([Ljavax/mail/Address;I)Ljavax/mail/internet/AddressException;
    .locals 3
    .param p1, "address"    # [Ljavax/mail/Address;
    .param p2, "offset"    # I

    .line 4041
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length v1, p1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 4042
    .local v0, "l":Ljava/lang/Object;
    new-instance v1, Ljavax/mail/internet/AddressException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private tryMutex()Z
    .locals 2

    .line 718
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 719
    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 720
    const/4 v0, 0x1

    return v0

    .line 722
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateSession()Ljavax/mail/Session;
    .locals 3

    .line 3428
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3430
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    const-string/jumbo v1, "verify"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3431
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    move-result-object v0

    .line 3432
    .local v0, "settings":Ljavax/mail/Session;
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3434
    .end local v0    # "settings":Ljavax/mail/Session;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    .line 3435
    const/4 v0, 0x0

    .line 3437
    .restart local v0    # "settings":Ljavax/mail/Session;
    :goto_0
    return-object v0

    .line 3428
    .end local v0    # "settings":Ljavax/mail/Session;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static verifyAddresses([Ljavax/mail/Address;)V
    .locals 3
    .param p0, "all"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 3361
    if-eqz p0, :cond_1

    .line 3362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3363
    aget-object v1, p0, v0

    .line 3364
    .local v1, "a":Ljavax/mail/Address;
    instance-of v2, v1, Ljavax/mail/internet/InternetAddress;

    if-eqz v2, :cond_0

    .line 3365
    move-object v2, v1

    check-cast v2, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->validate()V

    .line 3362
    .end local v1    # "a":Ljavax/mail/Address;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3369
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3341
    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3342
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "a":Ljava/net/InetAddress;
    goto :goto_0

    .line 3344
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3346
    .restart local v0    # "a":Ljava/net/InetAddress;
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3349
    return-object v0

    .line 3347
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    throw v1
.end method

.method private static verifyProperties(Ljavax/mail/Session;Ljava/lang/String;)V
    .locals 3
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "protocol"    # Ljava/lang/String;

    .line 3318
    const-string v0, "mail.from"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mail."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".from"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3320
    const-string v0, "mail.dsn.ret"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dsn.ret"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3322
    const-string v0, "mail.dsn.notify"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dsn.notify"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3325
    const-string v0, "mail.user"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".localport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3328
    return-void
.end method

.method private verifySettings(Ljavax/mail/Session;)V
    .locals 4
    .param p1, "session"    # Ljavax/mail/Session;

    .line 2974
    if-eqz p1, :cond_2

    .line 2975
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 2976
    .local v0, "props":Ljava/util/Properties;
    const-string/jumbo v1, "verify"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2977
    .local v1, "check":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2978
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 2980
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2981
    invoke-direct {p0, p1, v2}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V

    .line 2983
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2984
    :cond_1
    if-eqz v1, :cond_2

    .line 2985
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2989
    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "check":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2990
    .local v0, "JDK8152515":Ljava/lang/LinkageError;
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 2991
    .end local v0    # "JDK8152515":Ljava/lang/LinkageError;
    :cond_2
    :goto_0
    nop

    .line 2992
    :goto_1
    return-void
.end method

.method private verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V
    .locals 18
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "verify"    # Ljava/lang/String;

    .line 3006
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    .line 3007
    const-string v0, "local"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x4

    if-nez v0, :cond_0

    const-string v0, "remote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "limited"

    .line 3008
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resolve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "login"

    .line 3009
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3010
    const-string v0, "Verify must be \'limited\', local\', \'resolve\', \'login\', or \'remote\'."

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3014
    return-void

    .line 3017
    :cond_0
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    move-object v6, v0

    .line 3019
    .local v6, "abort":Ljavax/mail/internet/MimeMessage;
    const-string v0, "limited"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x5

    if-nez v0, :cond_1

    .line 3020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Local address is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3021
    invoke-static/range {p1 .. p1}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3024
    .local v8, "msg":Ljava/lang/String;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3025
    :catch_0
    move-exception v0

    .line 3026
    .local v0, "RE":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/io/UnsupportedEncodingException;

    .line 3027
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 3028
    .local v9, "UEE":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3029
    invoke-virtual {v1, v8, v9, v7}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3030
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    .end local v9    # "UEE":Ljava/io/UnsupportedEncodingException;
    :goto_0
    goto :goto_1

    .line 3032
    .end local v8    # "msg":Ljava/lang/String;
    :cond_1
    const-string v8, "Skipping local address check."

    .line 3037
    .restart local v8    # "msg":Ljava/lang/String;
    :goto_1
    monitor-enter p0

    .line 3038
    :try_start_1
    iget-object v0, v1, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 3039
    iget-object v0, v1, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    const-string v9, ""

    invoke-direct {v1, v0, v9}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 3040
    iget-object v0, v1, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    .line 3041
    .local v9, "atn":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v10, v9

    if-ge v0, v10, :cond_3

    .line 3042
    iget-object v10, v1, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v10, v10, v0

    invoke-direct {v1, v10}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    .line 3043
    aget-object v10, v9, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 3044
    iget-object v10, v1, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v10, v10, v0

    const-string v11, ""

    invoke-direct {v1, v10, v11}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    goto :goto_3

    .line 3046
    :cond_2
    aget-object v10, v9, v0

    iget-object v11, v1, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v0

    const-string v12, ""

    invoke-direct {v1, v11, v12}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    .line 3041
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3049
    .end local v0    # "i":I
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 3051
    invoke-direct {v1, v6}, Lcom/sun/mail/util/logging/MailHandler;->setIncompleteCopy(Ljavax/mail/Message;)V

    .line 3052
    const/4 v0, 0x1

    invoke-direct {v1, v6, v0}, Lcom/sun/mail/util/logging/MailHandler;->envelopeFor(Ljavax/mail/Message;Z)V

    .line 3053
    invoke-direct {v1, v6, v8}, Lcom/sun/mail/util/logging/MailHandler;->saveChangesNoContent(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 3056
    :try_start_2
    invoke-virtual {v6}, Ljavax/mail/internet/MimeMessage;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    .line 3057
    .local v0, "all":[Ljavax/mail/Address;
    const/4 v10, 0x0

    if-nez v0, :cond_4

    .line 3058
    new-array v11, v10, [Ljavax/mail/internet/InternetAddress;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    move-object v0, v11

    goto :goto_4

    .line 3057
    :cond_4
    move-object v11, v0

    .line 3062
    .end local v0    # "all":[Ljavax/mail/Address;
    .local v11, "all":[Ljavax/mail/Address;
    :goto_4
    :try_start_3
    array-length v0, v11

    if-eqz v0, :cond_5

    move-object v0, v11

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    .line 3063
    .local v0, "any":[Ljavax/mail/Address;
    :goto_5
    if-eqz v0, :cond_6

    array-length v12, v0

    if-eqz v12, :cond_6

    .line 3064
    aget-object v10, v0, v10

    invoke-virtual {v2, v10}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v10

    .line 3065
    .local v10, "t":Ljavax/mail/Transport;
    const-string v12, "mail.transport.protocol"

    invoke-virtual {v2, v12}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3082
    .end local v0    # "any":[Ljavax/mail/Address;
    goto :goto_6

    .line 3067
    .end local v10    # "t":Ljavax/mail/Transport;
    .restart local v0    # "any":[Ljavax/mail/Address;
    :cond_6
    new-instance v10, Ljavax/mail/MessagingException;

    const-string v12, "No recipient or from address."

    invoke-direct {v10, v12}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3069
    .local v10, "me":Ljavax/mail/MessagingException;
    invoke-virtual {v1, v8, v10, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3070
    nop

    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local v11    # "all":[Ljavax/mail/Address;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v10
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    .line 3072
    .end local v0    # "any":[Ljavax/mail/Address;
    .end local v10    # "me":Ljavax/mail/MessagingException;
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .restart local v11    # "all":[Ljavax/mail/Address;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 3074
    .local v10, "protocol":Ljavax/mail/MessagingException;
    :try_start_4
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    move-object v12, v0

    .line 3076
    .local v12, "ccl":Ljava/lang/Object;
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getTransport()Ljavax/mail/Transport;

    move-result-object v0
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3080
    .local v0, "t":Ljavax/mail/Transport;
    :try_start_6
    invoke-direct {v1, v12}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    move-object v10, v0

    .line 3084
    .end local v0    # "t":Ljavax/mail/Transport;
    .end local v12    # "ccl":Ljava/lang/Object;
    .local v10, "t":Ljavax/mail/Transport;
    :goto_6
    const/4 v12, 0x0

    .line 3085
    .local v12, "local":Ljava/lang/String;
    const-string v0, "remote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "login"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_b

    .line 3137
    :cond_7
    invoke-virtual {v10}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 3138
    .local v4, "protocol":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->verifyProperties(Ljavax/mail/Session;Ljava/lang/String;)V

    .line 3139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mail."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ".host"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3141
    .local v0, "mailHost":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3142
    const-string v13, "mail.host"

    invoke-virtual {v2, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    goto :goto_7

    .line 3144
    :cond_8
    const-string v13, "mail.host"

    invoke-virtual {v2, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-object v13, v0

    .line 3147
    .end local v0    # "mailHost":Ljava/lang/String;
    .local v13, "mailHost":Ljava/lang/String;
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mail."

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ".localhost"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3148
    .end local v12    # "local":Ljava/lang/String;
    .local v0, "local":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3149
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mail."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ".localaddress"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_8

    .line 3152
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mail."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ".localaddress"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-object v12, v0

    .line 3155
    .end local v0    # "local":Ljava/lang/String;
    .restart local v12    # "local":Ljava/lang/String;
    :goto_8
    const-string v0, "resolve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    if-eqz v0, :cond_13

    .line 3157
    :try_start_7
    invoke-virtual {v10}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 3158
    .local v0, "transportHost":Ljava/lang/String;
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 3159
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 3160
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 3161
    invoke-static {v13}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;

    goto :goto_9

    .line 3164
    :cond_a
    invoke-static {v13}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    .line 3171
    .end local v0    # "transportHost":Ljava/lang/String;
    :cond_b
    :goto_9
    goto/16 :goto_11

    .line 3166
    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    .line 3167
    .local v0, "IOE":Ljava/lang/Exception;
    :goto_a
    :try_start_8
    new-instance v14, Ljavax/mail/MessagingException;

    invoke-direct {v14, v8, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3169
    .local v14, "ME":Ljavax/mail/MessagingException;
    invoke-direct {v1, v6, v3, v14}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3170
    invoke-direct {v1, v6, v14, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_11

    .line 3086
    .end local v0    # "IOE":Ljava/lang/Exception;
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v13    # "mailHost":Ljava/lang/String;
    .end local v14    # "ME":Ljavax/mail/MessagingException;
    :cond_c
    :goto_b
    const/4 v13, 0x0

    .line 3087
    .local v13, "closed":Ljavax/mail/MessagingException;
    invoke-virtual {v10}, Ljavax/mail/Transport;->connect()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    .line 3091
    :try_start_9
    invoke-direct {v1, v10}, Lcom/sun/mail/util/logging/MailHandler;->getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 3096
    const-string v0, "remote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3097
    invoke-virtual {v10, v6, v11}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3101
    :cond_d
    :try_start_a
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V
    :try_end_a
    .catch Ljavax/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljavax/mail/SendFailedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 3104
    goto :goto_c

    .line 3102
    :catch_4
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 3103
    .local v0, "ME":Ljavax/mail/MessagingException;
    move-object v13, v0

    .line 3105
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    nop

    .line 3107
    :goto_c
    :try_start_b
    const-string v0, "remote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3108
    invoke-direct {v1, v6, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f

    .line 3110
    :cond_e
    invoke-virtual {v10}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 3111
    .local v0, "protocol":Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifyProperties(Ljavax/mail/Session;Ljava/lang/String;)V
    :try_end_b
    .catch Ljavax/mail/SendFailedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_f

    .line 3100
    .end local v0    # "protocol":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 3101
    :try_start_c
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V
    :try_end_c
    .catch Ljavax/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljavax/mail/SendFailedException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 3104
    goto :goto_d

    .line 3113
    :catch_5
    move-exception v0

    goto :goto_e

    .line 3102
    :catch_6
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 3103
    .local v0, "ME":Ljavax/mail/MessagingException;
    move-object v13, v0

    .line 3105
    .end local v0    # "ME":Ljavax/mail/MessagingException;
    :goto_d
    nop

    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local v10    # "t":Ljavax/mail/Transport;
    .end local v11    # "all":[Ljavax/mail/Address;
    .end local v12    # "local":Ljava/lang/String;
    .end local v13    # "closed":Ljavax/mail/MessagingException;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    :try_start_d
    throw v4
    :try_end_d
    .catch Ljavax/mail/SendFailedException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljavax/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 3124
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .restart local v10    # "t":Ljavax/mail/Transport;
    .restart local v11    # "all":[Ljavax/mail/Address;
    .restart local v12    # "local":Ljava/lang/String;
    .restart local v13    # "closed":Ljavax/mail/MessagingException;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 3125
    .restart local v0    # "ME":Ljavax/mail/MessagingException;
    :try_start_e
    invoke-virtual {v1, v6, v0}, Lcom/sun/mail/util/logging/MailHandler;->isMissingContent(Ljavax/mail/Message;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3126
    invoke-direct {v1, v6, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3127
    invoke-direct {v1, v6, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_10

    .line 3114
    .local v0, "sfe":Ljavax/mail/SendFailedException;
    :goto_e
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v4

    .line 3115
    .local v4, "recip":[Ljavax/mail/Address;
    if-eqz v4, :cond_f

    array-length v14, v4

    if-eqz v14, :cond_f

    .line 3116
    invoke-direct {v1, v6, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3117
    invoke-direct {v1, v6, v0, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3120
    :cond_f
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v14

    move-object v4, v14

    .line 3121
    if-eqz v4, :cond_10

    array-length v14, v4

    if-eqz v14, :cond_10

    .line 3122
    invoke-direct {v1, v6, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3129
    .end local v0    # "sfe":Ljavax/mail/SendFailedException;
    .end local v4    # "recip":[Ljavax/mail/Address;
    :cond_10
    :goto_f
    nop

    .line 3131
    :cond_11
    :goto_10
    if-eqz v13, :cond_12

    .line 3132
    invoke-direct {v1, v6, v3, v13}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3133
    const/4 v0, 0x3

    invoke-direct {v1, v6, v13, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3135
    .end local v13    # "closed":Ljavax/mail/MessagingException;
    :cond_12
    nop

    .line 3175
    :cond_13
    :goto_11
    const-string v0, "limited"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    if-nez v0, :cond_17

    .line 3177
    :try_start_f
    const-string v0, "remote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "login"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 3178
    invoke-direct {v1, v10}, Lcom/sun/mail/util/logging/MailHandler;->getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 3180
    :cond_14
    invoke-static {v12}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 3185
    goto :goto_13

    .line 3181
    :catch_8
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    .line 3182
    .local v0, "IOE":Ljava/lang/Exception;
    :goto_12
    :try_start_10
    new-instance v4, Ljavax/mail/MessagingException;

    invoke-direct {v4, v8, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3183
    .local v4, "ME":Ljavax/mail/MessagingException;
    invoke-direct {v1, v6, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3184
    invoke-direct {v1, v6, v4, v5}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 3188
    .end local v0    # "IOE":Ljava/lang/Exception;
    .end local v4    # "ME":Ljavax/mail/MessagingException;
    :goto_13
    :try_start_11
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    move-object v4, v0

    .line 3191
    .local v4, "ccl":Ljava/lang/Object;
    :try_start_12
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    move-object v13, v0

    .line 3192
    .local v13, "multipart":Ljavax/mail/internet/MimeMultipart;
    array-length v0, v9

    new-array v0, v0, [Ljavax/mail/internet/MimeBodyPart;

    move-object v14, v0

    .line 3195
    .local v14, "ambp":[Ljavax/mail/internet/MimeBodyPart;
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 3196
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->contentTypeOf(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v0

    .line 3197
    .local v0, "bodyContentType":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v15

    .line 3198
    .local v15, "body":Ljavax/mail/internet/MimeBodyPart;
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "i":I
    :goto_14
    array-length v7, v9

    if-ge v5, v7, :cond_15

    .line 3199
    invoke-direct {v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v7

    aput-object v7, v14, v5

    .line 3200
    aget-object v7, v14, v5

    aget-object v2, v9, v5

    invoke-virtual {v7, v2}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 3202
    aget-object v2, v9, v5

    invoke-direct {v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v5

    .line 3198
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p1

    const/4 v7, 0x5

    goto :goto_14

    .line 3204
    .end local v5    # "i":I
    :cond_15
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3206
    :try_start_14
    invoke-virtual {v15, v3}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3207
    const-string v2, ""

    invoke-direct {v1, v15, v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 3208
    invoke-virtual {v13, v15}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 3209
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v5, v14

    if-ge v2, v5, :cond_16

    .line 3210
    aget-object v5, v14, v2

    invoke-virtual {v5, v3}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3211
    aget-object v5, v14, v2

    const-string v7, ""

    move-object/from16 v17, v0

    .end local v0    # "bodyContentType":Ljava/lang/String;
    .local v17, "bodyContentType":Ljava/lang/String;
    aget-object v0, v9, v2

    invoke-direct {v1, v5, v7, v0}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 3209
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    goto :goto_15

    .end local v17    # "bodyContentType":Ljava/lang/String;
    .restart local v0    # "bodyContentType":Ljava/lang/String;
    :cond_16
    move-object/from16 v17, v0

    .line 3214
    .end local v0    # "bodyContentType":Ljava/lang/String;
    .end local v2    # "i":I
    .restart local v17    # "bodyContentType":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 3215
    invoke-virtual {v6}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 3216
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v6, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 3218
    .end local v13    # "multipart":Ljavax/mail/internet/MimeMultipart;
    .end local v14    # "ambp":[Ljavax/mail/internet/MimeBodyPart;
    .end local v15    # "body":Ljavax/mail/internet/MimeBodyPart;
    .end local v17    # "bodyContentType":Ljava/lang/String;
    :try_start_15
    invoke-direct {v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    .line 3219
    nop

    .line 3224
    .end local v4    # "ccl":Ljava/lang/Object;
    goto :goto_16

    .line 3204
    .restart local v4    # "ccl":Ljava/lang/Object;
    .restart local v13    # "multipart":Ljavax/mail/internet/MimeMultipart;
    .restart local v14    # "ambp":[Ljavax/mail/internet/MimeBodyPart;
    :catchall_1
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .end local v4    # "ccl":Ljava/lang/Object;
    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local v10    # "t":Ljavax/mail/Transport;
    .end local v11    # "all":[Ljavax/mail/Address;
    .end local v12    # "local":Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 3218
    .end local v13    # "multipart":Ljavax/mail/internet/MimeMultipart;
    .end local v14    # "ambp":[Ljavax/mail/internet/MimeBodyPart;
    .restart local v4    # "ccl":Ljava/lang/Object;
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .restart local v10    # "t":Ljavax/mail/Transport;
    .restart local v11    # "all":[Ljavax/mail/Address;
    .restart local v12    # "local":Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_18
    invoke-direct {v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3219
    nop

    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local v10    # "t":Ljavax/mail/Transport;
    .end local v11    # "all":[Ljavax/mail/Address;
    .end local v12    # "local":Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    .line 3220
    .end local v4    # "ccl":Ljava/lang/Object;
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .restart local v10    # "t":Ljavax/mail/Transport;
    .restart local v11    # "all":[Ljavax/mail/Address;
    .restart local v12    # "local":Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catch_a
    move-exception v0

    .line 3221
    .local v0, "IOE":Ljava/io/IOException;
    :try_start_19
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-direct {v2, v8, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3222
    .local v2, "ME":Ljavax/mail/MessagingException;
    invoke-direct {v1, v6, v3, v2}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3223
    const/4 v4, 0x5

    invoke-direct {v1, v6, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3228
    .end local v0    # "IOE":Ljava/io/IOException;
    .end local v2    # "ME":Ljavax/mail/MessagingException;
    :cond_17
    :goto_16
    array-length v0, v11

    if-eqz v0, :cond_1d

    .line 3229
    invoke-static {v11}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .line 3235
    invoke-virtual {v6}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    .line 3236
    .local v0, "from":[Ljavax/mail/Address;
    invoke-virtual {v6}, Ljavax/mail/internet/MimeMessage;->getSender()Ljavax/mail/Address;

    move-result-object v2

    .line 3237
    .local v2, "sender":Ljavax/mail/Address;
    instance-of v4, v2, Ljavax/mail/internet/InternetAddress;

    if-eqz v4, :cond_18

    .line 3238
    move-object v4, v2

    check-cast v4, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v4}, Ljavax/mail/internet/InternetAddress;->validate()V

    .line 3242
    :cond_18
    const-string v4, "From"

    const-string v5, ","

    invoke-virtual {v6, v4, v5}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    array-length v4, v0

    if-eqz v4, :cond_1b

    .line 3243
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .line 3244
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    array-length v5, v0

    if-ge v4, v5, :cond_1a

    .line 3245
    aget-object v5, v0, v4

    invoke-virtual {v5, v2}, Ljavax/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 3244
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 3246
    :cond_19
    new-instance v5, Ljavax/mail/MessagingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sender address \'"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "\' equals from address."

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3249
    .local v5, "ME":Ljavax/mail/MessagingException;
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-direct {v7, v8, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v7

    .line 3244
    .end local v4    # "i":I
    .end local v5    # "ME":Ljavax/mail/MessagingException;
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :cond_1a
    goto :goto_18

    .line 3253
    :cond_1b
    if-eqz v2, :cond_1c

    .line 3261
    :goto_18
    invoke-virtual {v6}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .end local v0    # "from":[Ljavax/mail/Address;
    .end local v2    # "sender":Ljavax/mail/Address;
    .end local v10    # "t":Ljavax/mail/Transport;
    .end local v11    # "all":[Ljavax/mail/Address;
    .end local v12    # "local":Ljava/lang/String;
    goto :goto_1b

    .line 3254
    .restart local v0    # "from":[Ljavax/mail/Address;
    .restart local v2    # "sender":Ljavax/mail/Address;
    .restart local v10    # "t":Ljavax/mail/Transport;
    .restart local v11    # "all":[Ljavax/mail/Address;
    .restart local v12    # "local":Ljava/lang/String;
    :cond_1c
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "No from or sender address."

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3256
    .local v4, "ME":Ljavax/mail/MessagingException;
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-direct {v5, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v5

    .line 3231
    .end local v0    # "from":[Ljavax/mail/Address;
    .end local v2    # "sender":Ljavax/mail/Address;
    .end local v4    # "ME":Ljavax/mail/MessagingException;
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :cond_1d
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "No recipient addresses."

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    .line 3080
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .local v10, "protocol":Ljavax/mail/MessagingException;
    .local v12, "ccl":Ljava/lang/Object;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto :goto_19

    .line 3077
    :catch_b
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3078
    .local v0, "fail":Ljavax/mail/MessagingException;
    :try_start_1a
    invoke-static {v10, v0}, Lcom/sun/mail/util/logging/MailHandler;->attach(Ljavax/mail/MessagingException;Ljava/lang/Exception;)Ljavax/mail/MessagingException;

    move-result-object v2

    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local v10    # "protocol":Ljavax/mail/MessagingException;
    .end local v11    # "all":[Ljavax/mail/Address;
    .end local v12    # "ccl":Ljava/lang/Object;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 3080
    .end local v0    # "fail":Ljavax/mail/MessagingException;
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .restart local v10    # "protocol":Ljavax/mail/MessagingException;
    .restart local v11    # "all":[Ljavax/mail/Address;
    .restart local v12    # "ccl":Ljava/lang/Object;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :goto_19
    :try_start_1b
    invoke-direct {v1, v12}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    nop

    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "atn":[Ljava/lang/String;
    .end local p1    # "session":Ljavax/mail/Session;
    .end local p2    # "verify":Ljava/lang/String;
    throw v0
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    .line 3262
    .end local v10    # "protocol":Ljavax/mail/MessagingException;
    .end local v11    # "all":[Ljavax/mail/Address;
    .end local v12    # "ccl":Ljava/lang/Object;
    .restart local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "atn":[Ljava/lang/String;
    .restart local p1    # "session":Ljavax/mail/Session;
    .restart local p2    # "verify":Ljava/lang/String;
    :catch_c
    move-exception v0

    const/4 v2, 0x4

    goto :goto_1a

    .line 3265
    :catch_d
    move-exception v0

    .line 3266
    .local v0, "ME":Ljava/lang/Exception;
    invoke-direct {v1, v6, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3267
    const/4 v2, 0x4

    invoke-direct {v1, v6, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_1c

    .line 3262
    .end local v0    # "ME":Ljava/lang/Exception;
    :catch_e
    move-exception v0

    move v2, v5

    .line 3263
    .local v0, "RE":Ljava/lang/RuntimeException;
    :goto_1a
    invoke-direct {v1, v6, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3264
    invoke-direct {v1, v6, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3268
    .end local v0    # "RE":Ljava/lang/RuntimeException;
    :goto_1b
    nop

    .line 3269
    :goto_1c
    return-void

    .line 3049
    .end local v9    # "atn":[Ljava/lang/String;
    :catchall_4
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    throw v0

    .line 3006
    .end local v6    # "abort":Ljavax/mail/internet/MimeMessage;
    .end local v8    # "msg":Ljava/lang/String;
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private writeLogRecords(I)Ljavax/mail/Message;
    .locals 2
    .param p1, "code"    # I

    .line 2786
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2787
    :try_start_1
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_2

    .line 2788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2790
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords0()Ljavax/mail/Message;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2792
    :try_start_3
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    .line 2793
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_0

    .line 2794
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->reset()V

    :cond_0
    monitor-exit p0

    .line 2790
    return-object v1

    .line 2792
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    .line 2793
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_1

    .line 2794
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->reset()V

    .line 2796
    :cond_1
    nop

    .end local p1    # "code":I
    throw v1

    .line 2798
    .restart local p1    # "code":I
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "code":I
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2801
    .restart local p1    # "code":I
    :catch_0
    move-exception v0

    .line 2802
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 2799
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2800
    .local v0, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2803
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 2804
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private writeLogRecords0()Ljavax/mail/Message;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2820
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2821
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->sort()V

    .line 2822
    iget-object v1, v0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    if-nez v1, :cond_0

    .line 2823
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    .line 2825
    :cond_0
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    iget-object v2, v0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    invoke-direct {v1, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 2832
    .local v1, "msg":Ljavax/mail/internet/MimeMessage;
    iget-object v2, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v2, v2

    new-array v2, v2, [Ljavax/mail/internet/MimeBodyPart;

    .line 2837
    .local v2, "parts":[Ljavax/mail/internet/MimeBodyPart;
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/StringBuilder;

    .line 2838
    .local v3, "buffers":[Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 2840
    .local v4, "buf":Ljava/lang/StringBuilder;
    array-length v5, v2

    if-nez v5, :cond_1

    .line 2841
    nop

    .line 2842
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v6

    iget-object v7, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2841
    invoke-direct {v0, v5, v6, v7}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 2843
    move-object v5, v1

    .local v5, "body":Ljavax/mail/internet/MimePart;
    goto :goto_0

    .line 2845
    .end local v5    # "body":Ljavax/mail/internet/MimePart;
    :cond_1
    iget-object v5, v0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    iget-object v6, v0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    iget-object v7, v0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    invoke-direct {v0, v5, v6, v7}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 2847
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v5

    .line 2850
    .restart local v5    # "body":Ljavax/mail/internet/MimePart;
    :goto_0
    iget-object v6, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2851
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v6

    .line 2852
    .local v6, "bodyFormat":Ljava/util/logging/Formatter;
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v7

    .line 2854
    .local v7, "bodyFilter":Ljava/util/logging/Filter;
    const/4 v8, 0x0

    .line 2855
    .local v8, "lastLocale":Ljava/util/Locale;
    const/4 v9, 0x0

    .local v9, "ix":I
    :goto_1
    iget v10, v0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    const/4 v11, 0x0

    if-ge v9, v10, :cond_d

    .line 2856
    const/4 v10, 0x0

    .line 2857
    .local v10, "formatted":Z
    iget-object v12, v0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    aget v12, v12, v9

    .line 2858
    .local v12, "match":I
    iget-object v13, v0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    aget-object v14, v13, v9

    .line 2859
    .local v14, "r":Ljava/util/logging/LogRecord;
    aput-object v11, v13, v9

    .line 2861
    invoke-direct {v0, v14}, Lcom/sun/mail/util/logging/MailHandler;->localeFor(Ljava/util/logging/LogRecord;)Ljava/util/Locale;

    move-result-object v11

    .line 2862
    .local v11, "locale":Ljava/util/Locale;
    iget-object v13, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v13, v14}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2863
    const/4 v13, 0x0

    .line 2864
    .local v13, "lmf":Ljava/util/logging/Filter;
    if-eqz v7, :cond_2

    const/4 v15, -0x1

    if-eq v12, v15, :cond_2

    array-length v15, v2

    if-eqz v15, :cond_2

    const/4 v15, -0x1

    if-ge v12, v15, :cond_4

    .line 2865
    invoke-interface {v7, v14}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2866
    :cond_2
    move-object v13, v7

    .line 2867
    if-nez v4, :cond_3

    .line 2868
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v15

    .line 2869
    invoke-direct {v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    :cond_3
    const/4 v10, 0x1

    .line 2872
    invoke-direct {v0, v6, v14}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    if-eqz v11, :cond_4

    invoke-virtual {v11, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 2874
    invoke-direct {v0, v5, v11}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    .line 2878
    :cond_4
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v16, v4

    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .local v16, "buf":Ljava/lang/StringBuilder;
    array-length v4, v2

    if-ge v15, v4, :cond_a

    .line 2881
    iget-object v4, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v4, v4, v15

    .line 2882
    .local v4, "af":Ljava/util/logging/Filter;
    if-eqz v4, :cond_6

    if-eq v13, v4, :cond_6

    if-eq v12, v15, :cond_6

    if-ge v12, v15, :cond_5

    .line 2883
    invoke-interface {v4, v14}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v17

    if-eqz v17, :cond_5

    goto :goto_3

    .line 2878
    .end local v4    # "af":Ljava/util/logging/Filter;
    :cond_5
    move-object/from16 v18, v7

    goto :goto_5

    .line 2884
    .restart local v4    # "af":Ljava/util/logging/Filter;
    :cond_6
    :goto_3
    if-nez v13, :cond_7

    if-eqz v4, :cond_7

    .line 2885
    move-object v13, v4

    .line 2887
    :cond_7
    aget-object v17, v2, v15

    if-nez v17, :cond_8

    .line 2888
    invoke-direct {v0, v15}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v17

    aput-object v17, v2, v15

    .line 2889
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v17, v3, v15

    .line 2890
    move-object/from16 v17, v4

    .end local v4    # "af":Ljava/util/logging/Filter;
    .local v17, "af":Ljava/util/logging/Filter;
    aget-object v4, v3, v15

    move-object/from16 v18, v7

    .end local v7    # "bodyFilter":Ljava/util/logging/Filter;
    .local v18, "bodyFilter":Ljava/util/logging/Filter;
    iget-object v7, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v7, v7, v15

    invoke-direct {v0, v7}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    aget-object v4, v2, v15

    iget-object v7, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v7, v7, v15

    invoke-direct {v0, v7}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v7}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    goto :goto_4

    .line 2887
    .end local v17    # "af":Ljava/util/logging/Filter;
    .end local v18    # "bodyFilter":Ljava/util/logging/Filter;
    .restart local v4    # "af":Ljava/util/logging/Filter;
    .restart local v7    # "bodyFilter":Ljava/util/logging/Filter;
    :cond_8
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    .line 2893
    .end local v4    # "af":Ljava/util/logging/Filter;
    .end local v7    # "bodyFilter":Ljava/util/logging/Filter;
    .restart local v17    # "af":Ljava/util/logging/Filter;
    .restart local v18    # "bodyFilter":Ljava/util/logging/Filter;
    :goto_4
    const/4 v4, 0x1

    .line 2894
    .end local v10    # "formatted":Z
    .local v4, "formatted":Z
    aget-object v7, v2, v15

    iget-object v10, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v10, v10, v15

    invoke-direct {v0, v10, v14}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v7, v10}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2895
    aget-object v7, v3, v15

    iget-object v10, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v10, v10, v15

    invoke-direct {v0, v10, v14}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2896
    if-eqz v11, :cond_9

    invoke-virtual {v11, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2897
    aget-object v7, v2, v15

    invoke-direct {v0, v7, v11}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    .line 2878
    .end local v17    # "af":Ljava/util/logging/Filter;
    :cond_9
    move v10, v4

    .end local v4    # "formatted":Z
    .restart local v10    # "formatted":Z
    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    move-object/from16 v7, v18

    goto/16 :goto_2

    .end local v18    # "bodyFilter":Ljava/util/logging/Filter;
    .restart local v7    # "bodyFilter":Ljava/util/logging/Filter;
    :cond_a
    move-object/from16 v18, v7

    .line 2902
    .end local v7    # "bodyFilter":Ljava/util/logging/Filter;
    .end local v15    # "i":I
    .restart local v18    # "bodyFilter":Ljava/util/logging/Filter;
    if-eqz v10, :cond_b

    .line 2903
    if-eq v5, v1, :cond_c

    if-eqz v11, :cond_c

    .line 2904
    invoke-virtual {v11, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2905
    invoke-direct {v0, v1, v11}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    goto :goto_6

    .line 2908
    :cond_b
    invoke-direct {v0, v14}, Lcom/sun/mail/util/logging/MailHandler;->reportFilterError(Ljava/util/logging/LogRecord;)V

    .line 2910
    :cond_c
    :goto_6
    move-object v8, v11

    .line 2855
    .end local v10    # "formatted":Z
    .end local v11    # "locale":Ljava/util/Locale;
    .end local v12    # "match":I
    .end local v13    # "lmf":Ljava/util/logging/Filter;
    .end local v14    # "r":Ljava/util/logging/LogRecord;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    move-object/from16 v7, v18

    goto/16 :goto_1

    .end local v16    # "buf":Ljava/lang/StringBuilder;
    .end local v18    # "bodyFilter":Ljava/util/logging/Filter;
    .local v4, "buf":Ljava/lang/StringBuilder;
    .restart local v7    # "bodyFilter":Ljava/util/logging/Filter;
    :cond_d
    move-object/from16 v18, v7

    .line 2912
    .end local v7    # "bodyFilter":Ljava/util/logging/Filter;
    .end local v9    # "ix":I
    .restart local v18    # "bodyFilter":Ljava/util/logging/Filter;
    const/4 v7, 0x0

    iput v7, v0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 2914
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_7
    const-string v10, ""

    if-ltz v9, :cond_11

    .line 2915
    aget-object v12, v2, v9

    if-eqz v12, :cond_10

    .line 2916
    aget-object v12, v2, v9

    iget-object v13, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v13, v13, v9

    const-string v14, "err"

    invoke-direct {v0, v13, v14}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2917
    aget-object v12, v3, v9

    iget-object v13, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v13, v13, v9

    invoke-direct {v0, v13, v10}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    aget-object v10, v3, v9

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_f

    .line 2920
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v10

    .line 2921
    .local v10, "name":Ljava/lang/String;
    invoke-static {v10}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2922
    iget-object v12, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v12, v12, v9

    invoke-direct {v0, v12}, Lcom/sun/mail/util/logging/MailHandler;->toString(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v10

    .line 2923
    aget-object v12, v2, v9

    invoke-virtual {v12, v10}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 2925
    :cond_e
    aget-object v12, v2, v9

    aget-object v13, v3, v9

    invoke-direct {v0, v10}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v12, v13, v14}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2926
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_8

    .line 2927
    :cond_f
    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setIncompleteCopy(Ljavax/mail/Message;)V

    .line 2928
    aput-object v11, v2, v9

    .line 2930
    :goto_8
    aput-object v11, v3, v9

    .line 2914
    :cond_10
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 2934
    .end local v9    # "i":I
    :cond_11
    if-eqz v4, :cond_12

    .line 2935
    invoke-direct {v0, v6, v10}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2939
    :cond_12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v9

    .line 2942
    :goto_9
    iget-object v7, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v7, v10}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2944
    invoke-virtual {v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->contentTypeOf(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 2945
    .local v7, "contentType":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->contentTypeOf(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v9

    .line 2946
    .local v9, "altType":Ljava/lang/String;
    if-nez v9, :cond_13

    move-object v10, v7

    goto :goto_a

    :cond_13
    move-object v10, v9

    :goto_a
    invoke-direct {v0, v5, v4, v10}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2947
    if-eq v5, v1, :cond_16

    .line 2948
    new-instance v10, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v10}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 2950
    .local v10, "multipart":Ljavax/mail/internet/MimeMultipart;
    move-object v11, v5

    check-cast v11, Ljavax/mail/BodyPart;

    invoke-virtual {v10, v11}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 2952
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_b
    array-length v12, v2

    if-ge v11, v12, :cond_15

    .line 2953
    aget-object v12, v2, v11

    if-eqz v12, :cond_14

    .line 2954
    aget-object v12, v2, v11

    invoke-virtual {v10, v12}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 2952
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 2957
    .end local v11    # "i":I
    :cond_15
    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 2960
    .end local v10    # "multipart":Ljavax/mail/internet/MimeMultipart;
    :cond_16
    return-object v1

    .line 2820
    .end local v1    # "msg":Ljavax/mail/internet/MimeMessage;
    .end local v2    # "parts":[Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "buffers":[Ljava/lang/StringBuilder;
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "body":Ljavax/mail/internet/MimePart;
    .end local v6    # "bodyFormat":Ljava/util/logging/Formatter;
    .end local v7    # "contentType":Ljava/lang/String;
    .end local v8    # "lastLocale":Ljava/util/Locale;
    .end local v9    # "altType":Ljava/lang/String;
    .end local v18    # "bodyFilter":Ljava/util/logging/Filter;
    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 849
    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 850
    const/4 v1, 0x0

    .line 851
    .local v1, "msg":Ljavax/mail/Message;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 855
    :try_start_2
    sget-object v3, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 862
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v3, :cond_0

    .line 863
    neg-int v3, v3

    iput v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 867
    :cond_0
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v3, v3

    if-eq v3, v2, :cond_1

    .line 868
    new-array v2, v2, [Ljava/util/logging/LogRecord;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 869
    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    .line 872
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 874
    if-eqz v1, :cond_2

    .line 875
    const/4 v2, 0x0

    :try_start_3
    invoke-direct {p0, v1, v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V
    :try_end_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0

    .line 879
    .end local v1    # "msg":Ljavax/mail/Message;
    :cond_2
    goto :goto_0

    .line 855
    .restart local v1    # "msg":Ljavax/mail/Message;
    :catchall_0
    move-exception v3

    :try_start_4
    sget-object v4, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 862
    iget v4, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v4, :cond_3

    .line 863
    iget v4, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    neg-int v4, v4

    iput v4, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 867
    :cond_3
    iget v4, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v4, v4

    if-eq v4, v2, :cond_4

    .line 868
    new-array v2, v2, [Ljava/util/logging/LogRecord;

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 869
    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    .line 871
    :cond_4
    nop

    .end local v1    # "msg":Ljavax/mail/Message;
    throw v3

    .line 872
    .restart local v1    # "msg":Ljavax/mail/Message;
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_0

    .line 877
    .end local v1    # "msg":Ljavax/mail/Message;
    :catch_0
    move-exception v1

    .line 878
    .local v1, "JDK8152515":Ljava/lang/LinkageError;
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    .line 880
    .end local v1    # "JDK8152515":Ljava/lang/LinkageError;
    :goto_0
    return-void
.end method

.method final contentTypeOf(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p1, "chunk"    # Ljava/lang/CharSequence;

    .line 1621
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1622
    const/16 v0, 0x19

    .line 1623
    .local v0, "MAX_CHARS":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    .line 1624
    const/4 v1, 0x0

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1627
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    .line 1628
    .local v1, "charset":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1629
    .local v2, "b":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1630
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1631
    invoke-static {v3}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1630
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "MAX_CHARS":I
    .end local p1    # "chunk":Ljava/lang/CharSequence;
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    .end local v1    # "charset":Ljava/lang/String;
    .end local v2    # "b":[B
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "MAX_CHARS":I
    .restart local p1    # "chunk":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 1633
    .local v1, "IOE":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1636
    .end local v0    # "MAX_CHARS":I
    .end local v1    # "IOE":Ljava/io/IOException;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method final contentTypeOf(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 7
    .param p1, "f"    # Ljava/util/logging/Formatter;

    .line 1651
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1652
    if-eqz p1, :cond_4

    .line 1653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1654
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1655
    return-object v0

    .line 1658
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/util/logging/Formatter;

    if-eq v1, v2, :cond_4

    .line 1662
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    .local v2, "name":Ljava/lang/String;
    goto :goto_1

    .line 1663
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1664
    .local v2, "JDK8057919":Ljava/lang/InternalError;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1666
    .local v2, "name":Ljava/lang/String;
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1667
    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1668
    .local v3, "idx":I
    :goto_2
    const-string v5, "ml"

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_3

    .line 1669
    if-lez v3, :cond_2

    .line 1670
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-ne v5, v6, :cond_1

    .line 1671
    const-string v4, "application/xml"

    return-object v4

    .line 1673
    :cond_1
    if-le v3, v4, :cond_2

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x68

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, v3, -0x1

    .line 1674
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x74

    if-ne v5, v6, :cond_2

    .line 1675
    const-string v4, "text/html"

    return-object v4

    .line 1668
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 1659
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "idx":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 1681
    .end local v0    # "type":Ljava/lang/String;
    .end local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 1651
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 2

    .line 830
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    .line 831
    return-void
.end method

.method public final getAttachmentFilters()[Ljava/util/logging/Filter;
    .locals 1

    .line 1303
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/util/logging/Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Filter;

    return-object v0
.end method

.method public final getAttachmentFormatters()[Ljava/util/logging/Formatter;
    .locals 2

    .line 1353
    monitor-enter p0

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 1355
    .local v0, "formatters":[Ljava/util/logging/Formatter;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    invoke-virtual {v0}, [Ljava/util/logging/Formatter;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/logging/Formatter;

    return-object v1

    .line 1355
    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getAttachmentNames()[Ljava/util/logging/Formatter;
    .locals 2

    .line 1405
    monitor-enter p0

    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1407
    .local v0, "formatters":[Ljava/util/logging/Formatter;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1408
    invoke-virtual {v0}, [Ljava/util/logging/Formatter;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/logging/Formatter;

    return-object v1

    .line 1407
    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getAuthenticator()Ljavax/mail/Authenticator;
    .locals 1

    monitor-enter p0

    .line 1191
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1192
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1190
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCapacity()I
    .locals 2

    monitor-enter p0

    .line 1179
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 1180
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1179
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1153
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncoding()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1012
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    .line 929
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 930
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public declared-synchronized getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    monitor-enter p0

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1064
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public final getMailProperties()Ljava/util/Properties;
    .locals 2

    .line 1288
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1290
    monitor-enter p0

    .line 1291
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1292
    .local v0, "props":Ljava/util/Properties;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    return-object v1

    .line 1292
    .end local v0    # "props":Ljava/util/Properties;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getPushFilter()Ljava/util/logging/Filter;
    .locals 1

    monitor-enter p0

    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1125
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPushLevel()Ljava/util/logging/Level;
    .locals 1

    monitor-enter p0

    .line 1094
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1094
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSubject()Ljava/util/logging/Formatter;
    .locals 1

    monitor-enter p0

    .line 1521
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1521
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 578
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 579
    return v0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    .line 583
    .local v1, "levelValue":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_4

    sget v2, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v0

    .line 588
    .local v0, "body":Ljava/util/logging/Filter;
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 593
    :cond_2
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isAttachmentLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    return v2

    .line 589
    :cond_3
    :goto_0
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->setMatchedPart(I)V

    .line 590
    const/4 v2, 0x1

    return v2

    .line 584
    .end local v0    # "body":Ljava/util/logging/Filter;
    :cond_4
    :goto_1
    return v0
.end method

.method final isMissingContent(Ljavax/mail/Message;Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1698
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1700
    .local v0, "ccl":Ljava/lang/Object;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    goto :goto_3

    .line 1729
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1703
    :catch_0
    move-exception v1

    .line 1704
    .local v1, "noContent":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1705
    .local v2, "txt":Ljava/lang/String;
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1706
    const/4 v3, 0x0

    .line 1707
    .local v3, "limit":I
    :goto_1
    if-eqz p2, :cond_0

    .line 1708
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1709
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 1710
    nop

    .line 1729
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    const/4 v4, 0x1

    return v4

    .line 1715
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 1716
    .local v4, "cause":Ljava/lang/Throwable;
    if-nez v4, :cond_2

    instance-of v5, p2, Ljavax/mail/MessagingException;

    if-eqz v5, :cond_2

    .line 1717
    move-object v5, p2

    check-cast v5, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v5

    move-object p2, v5

    goto :goto_2

    .line 1719
    :cond_2
    move-object p2, v4

    .line 1723
    :goto_2
    add-int/lit8 v3, v3, 0x1

    const/high16 v5, 0x10000

    if-ne v3, v5, :cond_3

    .line 1724
    goto :goto_0

    .line 1726
    .end local v4    # "cause":Ljava/lang/Throwable;
    :cond_3
    goto :goto_1

    .line 1731
    .end local v1    # "noContent":Ljava/lang/Exception;
    .end local v2    # "txt":Ljava/lang/String;
    .end local v3    # "limit":I
    :goto_3
    const/4 v1, 0x0

    return v1

    .line 1701
    :catch_1
    move-exception v1

    .line 1702
    .local v1, "RE":Ljava/lang/RuntimeException;
    nop

    .end local v0    # "ccl":Ljava/lang/Object;
    .end local p1    # "msg":Ljavax/mail/Message;
    .end local p2    # "t":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1729
    .end local v1    # "RE":Ljava/lang/RuntimeException;
    .restart local v0    # "ccl":Ljava/lang/Object;
    .restart local p1    # "msg":Ljavax/mail/Message;
    .restart local p2    # "t":Ljava/lang/Throwable;
    :goto_4
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    throw v1
.end method

.method public postConstruct()V
    .locals 0

    .line 792
    return-void
.end method

.method public preDestroy()V
    .locals 2

    .line 809
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    .line 810
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 619
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->tryMutex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    .line 624
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->publish0(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    .line 626
    :cond_0
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 633
    goto :goto_2

    .line 632
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "JDK8152515":Ljava/lang/LinkageError;
    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "JDK8152515":Ljava/lang/LinkageError;
    goto :goto_0

    .line 632
    :goto_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 633
    throw v0

    .line 635
    :cond_2
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportUnPublishedError(Ljava/util/logging/LogRecord;)V

    .line 637
    :goto_2
    return-void
.end method

.method public push()V
    .locals 2

    .line 819
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    .line 820
    return-void
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .line 1591
    if-eqz p1, :cond_0

    .line 1592
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ": "

    .line 1593
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1592
    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    :goto_0
    goto :goto_2

    .line 1597
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1598
    .local v0, "GLASSFISH_21258":Ljava/lang/Throwable;
    :goto_1
    invoke-direct {p0, v0, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    .line 1600
    .end local v0    # "GLASSFISH_21258":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public final varargs setAttachmentFilters([Ljava/util/logging/Filter;)V
    .locals 3
    .param p1, "filters"    # [Ljava/util/logging/Filter;

    .line 1319
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1320
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1321
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object p1

    goto :goto_0

    .line 1323
    :cond_0
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Filter;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/util/logging/Filter;

    .line 1325
    :goto_0
    monitor-enter p0

    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_4

    .line 1330
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_3

    .line 1334
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-eqz v0, :cond_2

    .line 1335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1336
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 1337
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->clearMatches(I)V

    .line 1338
    goto :goto_2

    .line 1335
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1342
    .end local v0    # "i":I
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1343
    monitor-exit p0

    .line 1344
    return-void

    .line 1331
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "filters":[Ljava/util/logging/Filter;
    throw v0

    .line 1327
    .restart local p1    # "filters":[Ljava/util/logging/Filter;
    :cond_4
    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "filters":[Ljava/util/logging/Filter;
    throw v0

    .line 1343
    .restart local p1    # "filters":[Ljava/util/logging/Filter;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs setAttachmentFormatters([Ljava/util/logging/Formatter;)V
    .locals 3
    .param p1, "formatters"    # [Ljava/util/logging/Formatter;

    .line 1372
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1373
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1374
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object p1

    goto :goto_1

    .line 1376
    :cond_0
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Formatter;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/util/logging/Formatter;

    .line 1378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1379
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 1378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1380
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1385
    .end local v0    # "i":I
    :cond_2
    :goto_1
    monitor-enter p0

    .line 1386
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_3

    .line 1390
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 1391
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentFilters()Z

    .line 1392
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentNames()Z

    .line 1393
    monitor-exit p0

    .line 1394
    return-void

    .line 1387
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "formatters":[Ljava/util/logging/Formatter;
    throw v0

    .line 1393
    .restart local p1    # "formatters":[Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final varargs setAttachmentNames([Ljava/lang/String;)V
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    .line 1428
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1431
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1432
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v0

    .local v0, "formatters":[Ljava/util/logging/Formatter;
    goto :goto_0

    .line 1434
    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/logging/Formatter;

    .line 1437
    .restart local v0    # "formatters":[Ljava/util/logging/Formatter;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1438
    aget-object v2, p1, v1

    .line 1439
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1440
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1441
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1437
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1443
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1446
    :cond_2
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1450
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    monitor-enter p0

    .line 1451
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v2, v1

    array-length v3, p1

    if-ne v2, v3, :cond_5

    .line 1455
    iget-boolean v1, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v1, :cond_4

    .line 1458
    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1459
    monitor-exit p0

    .line 1460
    return-void

    .line 1456
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    .end local p1    # "names":[Ljava/lang/String;
    throw v1

    .line 1452
    .restart local v0    # "formatters":[Ljava/util/logging/Formatter;
    .restart local p1    # "names":[Ljava/lang/String;
    :cond_5
    array-length v1, v1

    array-length v2, p1

    invoke-static {v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v0    # "formatters":[Ljava/util/logging/Formatter;
    .end local p1    # "names":[Ljava/lang/String;
    throw v1

    .line 1459
    .restart local v0    # "formatters":[Ljava/util/logging/Formatter;
    .restart local p1    # "names":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final varargs setAttachmentNames([Ljava/util/logging/Formatter;)V
    .locals 3
    .param p1, "formatters"    # [Ljava/util/logging/Formatter;

    .line 1485
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1487
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1488
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object p1

    goto :goto_0

    .line 1490
    :cond_0
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Formatter;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/util/logging/Formatter;

    .line 1494
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1495
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 1494
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1496
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1500
    .end local v0    # "i":I
    :cond_2
    monitor-enter p0

    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_4

    .line 1506
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_3

    .line 1510
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1511
    monitor-exit p0

    .line 1512
    return-void

    .line 1507
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "formatters":[Ljava/util/logging/Formatter;
    throw v0

    .line 1502
    .restart local p1    # "formatters":[Ljava/util/logging/Formatter;
    :cond_4
    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object v0

    .end local p1    # "formatters":[Ljava/util/logging/Formatter;
    throw v0

    .line 1511
    .restart local p1    # "formatters":[Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setAuthenticator(Ljavax/mail/Authenticator;)V
    .locals 0
    .param p1, "auth"    # Ljavax/mail/Authenticator;

    .line 1204
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    .line 1205
    return-void
.end method

.method public final varargs setAuthenticator([C)V
    .locals 2
    .param p1, "password"    # [C

    .line 1219
    if-nez p1, :cond_0

    .line 1220
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljavax/mail/Authenticator;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    goto :goto_0

    .line 1222
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->of(Ljava/lang/String;)Ljavax/mail/Authenticator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    .line 1224
    :goto_0
    return-void
.end method

.method public final declared-synchronized setComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    monitor-enter p0

    .line 1165
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1166
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1169
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    monitor-exit p0

    return-void

    .line 1167
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    .end local p1    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1030
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1031
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setEncoding0(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .locals 0
    .param p1, "em"    # Ljava/util/logging/ErrorManager;

    .line 946
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 947
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setErrorManager0(Ljava/util/logging/ErrorManager;)V

    .line 948
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "newFilter"    # Ljava/util/logging/Filter;

    .line 995
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 996
    monitor-enter p0

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    if-eq p1, v0, :cond_0

    .line 998
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->clearMatches(I)V

    .line 1000
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1001
    monitor-exit p0

    .line 1002
    return-void

    .line 1001
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setFormatter(Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1081
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1082
    if-eqz p1, :cond_0

    .line 1085
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    monitor-exit p0

    return-void

    .line 1083
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    .end local p1    # "newFormatter":Ljava/util/logging/Formatter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "newLevel"    # Ljava/util/logging/Level;

    .line 895
    if-eqz p1, :cond_1

    .line 898
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 901
    monitor-enter p0

    .line 902
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v0, :cond_0

    .line 903
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 905
    :cond_0
    monitor-exit p0

    .line 906
    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 896
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final setMailProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Properties;

    .line 1259
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailProperties0(Ljava/util/Properties;)V

    .line 1260
    return-void
.end method

.method public final declared-synchronized setPushFilter(Ljava/util/logging/Filter;)V
    .locals 1
    .param p1, "filter"    # Ljava/util/logging/Filter;

    monitor-enter p0

    .line 1140
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1141
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1144
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    monitor-exit p0

    return-void

    .line 1142
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    .end local p1    # "filter":Ljava/util/logging/Filter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setPushLevel(Ljava/util/logging/Level;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    monitor-enter p0

    .line 1109
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1110
    if-eqz p1, :cond_1

    .line 1114
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1117
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    monitor-exit p0

    return-void

    .line 1115
    .end local p0    # "this":Lcom/sun/mail/util/logging/MailHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1111
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    .end local p1    # "level":Ljava/util/logging/Level;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .line 1537
    if-eqz p1, :cond_0

    .line 1538
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setSubject(Ljava/util/logging/Formatter;)V

    .line 1543
    return-void

    .line 1540
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final setSubject(Ljava/util/logging/Formatter;)V
    .locals 1
    .param p1, "format"    # Ljava/util/logging/Formatter;

    .line 1565
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1566
    if-eqz p1, :cond_1

    .line 1570
    monitor-enter p0

    .line 1571
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1574
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 1575
    monitor-exit p0

    .line 1576
    return-void

    .line 1572
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "format":Ljava/util/logging/Formatter;
    throw v0

    .line 1575
    .restart local p1    # "format":Ljava/util/logging/Formatter;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1567
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
