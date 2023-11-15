.class public Lcom/sun/mail/imap/protocol/UID;
.super Ljava/lang/Object;
.source "UID.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C


# instance fields
.field public seqnum:I

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/UID;->name:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x55s
        0x49s
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/UID;->seqnum:I

    .line 42
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 43
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/imap/protocol/UID;->uid:J

    .line 44
    return-void
.end method
