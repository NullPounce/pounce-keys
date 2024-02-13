.class Lcom/sun/mail/imap/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljavax/mail/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 132
    check-cast p1, Ljavax/mail/Message;

    check-cast p2, Ljavax/mail/Message;

    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/imap/Utility$1;->compare(Ljavax/mail/Message;Ljavax/mail/Message;)I

    move-result p1

    return p1
.end method

.method public compare(Ljavax/mail/Message;Ljavax/mail/Message;)I
    .locals 2
    .param p1, "msg1"    # Ljavax/mail/Message;
    .param p2, "msg2"    # Ljavax/mail/Message;

    .line 135
    invoke-virtual {p1}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v0

    invoke-virtual {p2}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
