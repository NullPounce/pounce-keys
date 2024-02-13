.class public Ljavax/mail/event/StoreEvent;
.super Ljavax/mail/event/MailEvent;
.source "StoreEvent.java"


# static fields
.field public static final ALERT:I = 0x1

.field public static final NOTICE:I = 0x2

.field private static final serialVersionUID:J = 0x1ae7a9da6074bb02L


# instance fields
.field protected message:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Store;ILjava/lang/String;)V
    .locals 0
    .param p1, "store"    # Ljavax/mail/Store;
    .param p2, "type"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 68
    iput p2, p0, Ljavax/mail/event/StoreEvent;->type:I

    .line 69
    iput-object p3, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    .line 97
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/StoreListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/StoreListener;->notification(Ljavax/mail/event/StoreEvent;)V

    .line 98
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 80
    iget v0, p0, Ljavax/mail/event/StoreEvent;->type:I

    return v0
.end method
