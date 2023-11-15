.class public final Lcom/sun/mail/imap/SortTerm;
.super Ljava/lang/Object;
.source "SortTerm.java"


# static fields
.field public static final ARRIVAL:Lcom/sun/mail/imap/SortTerm;

.field public static final CC:Lcom/sun/mail/imap/SortTerm;

.field public static final DATE:Lcom/sun/mail/imap/SortTerm;

.field public static final FROM:Lcom/sun/mail/imap/SortTerm;

.field public static final REVERSE:Lcom/sun/mail/imap/SortTerm;

.field public static final SIZE:Lcom/sun/mail/imap/SortTerm;

.field public static final SUBJECT:Lcom/sun/mail/imap/SortTerm;

.field public static final TO:Lcom/sun/mail/imap/SortTerm;


# instance fields
.field private term:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/sun/mail/imap/SortTerm;

    const-string v1, "ARRIVAL"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/SortTerm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/SortTerm;->ARRIVAL:Lcom/sun/mail/imap/SortTerm;

    .line 38
    new-instance v0, Lcom/sun/mail/imap/SortTerm;

    const-string v1, "CC"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/SortTerm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/SortTerm;->CC:Lcom/sun/mail/imap/SortTerm;

    .line 43
    new-instance v0, Lcom/sun/mail/imap/SortTerm;

    const-string v1, "DATE"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/SortTerm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/SortTerm;->DATE:Lcom/sun/mail/imap/SortTerm;

    .line 48
    new-instance v0, Lcom/sun/mail/imap/SortTerm;

    const-string v1, "FROM"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/SortTerm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/SortTerm;->FROM:Lcom/sun/mail/imap/SortTerm;

    .line 53
    new-instance v0, Lcom/sun/mail/imap/SortTerm;

    const-string v1, "REVERSE"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/SortTerm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/SortTerm;->REVERSE:Lcom/sun/mail/imap/SortTerm;

    .line 58
    new-instance v0, Lcom/sun/mail/imap/SortTerm;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/SortTerm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/SortTerm;->SIZE:Lcom/sun/mail/imap/SortTerm;

    .line 65
    new-instance v0, Lcom/sun/mail/imap/SortTerm;

    const-string v1, "SUBJECT"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/SortTerm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/SortTerm;->SUBJECT:Lcom/sun/mail/imap/SortTerm;

    .line 70
    new-instance v0, Lcom/sun/mail/imap/SortTerm;

    const-string v1, "TO"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/SortTerm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/SortTerm;->TO:Lcom/sun/mail/imap/SortTerm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "term"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/sun/mail/imap/SortTerm;->term:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sun/mail/imap/SortTerm;->term:Ljava/lang/String;

    return-object v0
.end method
