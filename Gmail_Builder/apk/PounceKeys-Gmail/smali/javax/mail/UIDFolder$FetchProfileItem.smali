.class public Ljavax/mail/UIDFolder$FetchProfileItem;
.super Ljavax/mail/FetchProfile$Item;
.source "UIDFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/UIDFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchProfileItem"
.end annotation


# static fields
.field public static final UID:Ljavax/mail/UIDFolder$FetchProfileItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Ljavax/mail/UIDFolder$FetchProfileItem;

    const-string v1, "UID"

    invoke-direct {v0, v1}, Ljavax/mail/UIDFolder$FetchProfileItem;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method
