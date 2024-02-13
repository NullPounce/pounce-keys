.class public Lcom/sun/mail/imap/MessageVanishedEvent;
.super Ljavax/mail/event/MessageCountEvent;
.source "MessageVanishedEvent.java"


# static fields
.field private static final noMessages:[Ljavax/mail/Message;

.field private static final serialVersionUID:J = 0x1dba032059e3b7daL


# instance fields
.field private uids:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/Message;

    sput-object v0, Lcom/sun/mail/imap/MessageVanishedEvent;->noMessages:[Ljavax/mail/Message;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;[J)V
    .locals 3
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "uids"    # [J

    .line 50
    const/4 v0, 0x1

    sget-object v1, Lcom/sun/mail/imap/MessageVanishedEvent;->noMessages:[Ljavax/mail/Message;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2, v0, v1}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 51
    iput-object p2, p0, Lcom/sun/mail/imap/MessageVanishedEvent;->uids:[J

    .line 52
    return-void
.end method


# virtual methods
.method public getUIDs()[J
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sun/mail/imap/MessageVanishedEvent;->uids:[J

    return-object v0
.end method
