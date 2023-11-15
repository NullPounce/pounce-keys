.class public Ljavax/mail/event/MessageCountEvent;
.super Ljavax/mail/event/MailEvent;
.source "MessageCountEvent.java"


# static fields
.field public static final ADDED:I = 0x1

.field public static final REMOVED:I = 0x2

.field private static final serialVersionUID:J = -0x6759235cec0a7499L


# instance fields
.field protected transient msgs:[Ljavax/mail/Message;

.field protected removed:Z

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "type"    # I
    .param p3, "removed"    # Z
    .param p4, "msgs"    # [Ljavax/mail/Message;

    .line 85
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 86
    iput p2, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    .line 87
    iput-boolean p3, p0, Ljavax/mail/event/MessageCountEvent;->removed:Z

    .line 88
    iput-object p4, p0, Ljavax/mail/event/MessageCountEvent;->msgs:[Ljavax/mail/Message;

    .line 89
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .line 129
    iget v0, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/MessageCountListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/MessageCountListener;->messagesAdded(Ljavax/mail/event/MessageCountEvent;)V

    goto :goto_0

    .line 132
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/MessageCountListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/MessageCountListener;->messagesRemoved(Ljavax/mail/event/MessageCountEvent;)V

    .line 133
    :goto_0
    return-void
.end method

.method public getMessages()[Ljavax/mail/Message;
    .locals 1

    .line 121
    iget-object v0, p0, Ljavax/mail/event/MessageCountEvent;->msgs:[Ljavax/mail/Message;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 96
    iget v0, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Ljavax/mail/event/MessageCountEvent;->removed:Z

    return v0
.end method
