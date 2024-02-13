.class public final Lcom/sun/mail/imap/ModifiedSinceTerm;
.super Ljavax/mail/search/SearchTerm;
.source "ModifiedSinceTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x477da746691c5038L


# instance fields
.field private modseq:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "modseq"    # J

    .line 41
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 82
    instance-of v0, p1, Lcom/sun/mail/imap/ModifiedSinceTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    return v1

    .line 84
    :cond_0
    iget-wide v2, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/ModifiedSinceTerm;

    iget-wide v4, v0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getModSeq()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    long-to-int v1, v0

    return v1
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 6
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 66
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, p1

    check-cast v1, Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getModSeq()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v1, "m":J
    nop

    .line 74
    iget-wide v3, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 69
    .end local v1    # "m":J
    :cond_1
    return v0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
