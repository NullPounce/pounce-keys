.class public Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;
.super Ljavax/mail/FetchProfile$Item;
.source "IMAPFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/IMAPFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchProfileItem"
.end annotation


# static fields
.field public static final HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

.field public static final INTERNALDATE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

.field public static final MESSAGE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

.field public static final SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 296
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    const-string v1, "HEADERS"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    .line 310
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    .line 334
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->MESSAGE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    .line 355
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    const-string v1, "INTERNALDATE"

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->INTERNALDATE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 278
    invoke-direct {p0, p1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    .line 279
    return-void
.end method
