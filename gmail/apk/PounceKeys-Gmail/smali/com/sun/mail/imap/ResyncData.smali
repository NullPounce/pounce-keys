.class public Lcom/sun/mail/imap/ResyncData;
.super Ljava/lang/Object;
.source "ResyncData.java"


# static fields
.field public static final CONDSTORE:Lcom/sun/mail/imap/ResyncData;


# instance fields
.field private modseq:J

.field private uids:[Lcom/sun/mail/imap/protocol/UIDSet;

.field private uidvalidity:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/sun/mail/imap/ResyncData;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/sun/mail/imap/ResyncData;-><init>(JJ)V

    sput-object v0, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "uidvalidity"    # J
    .param p3, "modseq"    # J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    .line 39
    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    .line 58
    iput-wide p1, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    .line 59
    iput-wide p3, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    .line 60
    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    .line 61
    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 2
    .param p1, "uidvalidity"    # J
    .param p3, "modseq"    # J
    .param p5, "uidFirst"    # J
    .param p7, "uidLast"    # J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    .line 39
    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    .line 74
    iput-wide p1, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    .line 75
    iput-wide p3, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    .line 76
    new-instance v0, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v0, p5, p6, p7, p8}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>(JJ)V

    filled-new-array {v0}, [Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    .line 77
    return-void
.end method

.method public constructor <init>(JJ[J)V
    .locals 2
    .param p1, "uidvalidity"    # J
    .param p3, "modseq"    # J
    .param p5, "uids"    # [J

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    .line 39
    iput-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    .line 88
    iput-wide p1, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    .line 89
    iput-wide p3, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    .line 90
    invoke-static {p5}, Lcom/sun/mail/imap/protocol/UIDSet;->createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    .line 91
    return-void
.end method


# virtual methods
.method public getModSeq()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->modseq:J

    return-wide v0
.end method

.method getUIDSet()[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sun/mail/imap/ResyncData;->uids:[Lcom/sun/mail/imap/protocol/UIDSet;

    return-object v0
.end method

.method public getUIDValidity()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/sun/mail/imap/ResyncData;->uidvalidity:J

    return-wide v0
.end method
