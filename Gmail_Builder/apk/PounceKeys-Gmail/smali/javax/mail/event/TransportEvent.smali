.class public Ljavax/mail/event/TransportEvent;
.super Ljavax/mail/event/MailEvent;
.source "TransportEvent.java"


# static fields
.field public static final MESSAGE_DELIVERED:I = 0x1

.field public static final MESSAGE_NOT_DELIVERED:I = 0x2

.field public static final MESSAGE_PARTIALLY_DELIVERED:I = 0x3

.field private static final serialVersionUID:J = -0x41a3cfaa750c25b1L


# instance fields
.field protected transient invalid:[Ljavax/mail/Address;

.field protected transient msg:Ljavax/mail/Message;

.field protected type:I

.field protected transient validSent:[Ljavax/mail/Address;

.field protected transient validUnsent:[Ljavax/mail/Address;


# direct methods
.method public constructor <init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 0
    .param p1, "transport"    # Ljavax/mail/Transport;
    .param p2, "type"    # I
    .param p3, "validSent"    # [Ljavax/mail/Address;
    .param p4, "validUnsent"    # [Ljavax/mail/Address;
    .param p5, "invalid"    # [Ljavax/mail/Address;
    .param p6, "msg"    # Ljavax/mail/Message;

    .line 90
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 91
    iput p2, p0, Ljavax/mail/event/TransportEvent;->type:I

    .line 92
    iput-object p3, p0, Ljavax/mail/event/TransportEvent;->validSent:[Ljavax/mail/Address;

    .line 93
    iput-object p4, p0, Ljavax/mail/event/TransportEvent;->validUnsent:[Ljavax/mail/Address;

    .line 94
    iput-object p5, p0, Ljavax/mail/event/TransportEvent;->invalid:[Ljavax/mail/Address;

    .line 95
    iput-object p6, p0, Ljavax/mail/event/TransportEvent;->msg:Ljavax/mail/Message;

    .line 96
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .line 147
    iget v0, p0, Ljavax/mail/event/TransportEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/TransportListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/TransportListener;->messageDelivered(Ljavax/mail/event/TransportEvent;)V

    goto :goto_0

    .line 149
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 150
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/TransportListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/TransportListener;->messageNotDelivered(Ljavax/mail/event/TransportEvent;)V

    goto :goto_0

    .line 152
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/TransportListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/TransportListener;->messagePartiallyDelivered(Ljavax/mail/event/TransportEvent;)V

    .line 153
    :goto_0
    return-void
.end method

.method public getInvalidAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 129
    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->invalid:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getMessage()Ljavax/mail/Message;
    .locals 1

    .line 139
    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->msg:Ljavax/mail/Message;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 103
    iget v0, p0, Ljavax/mail/event/TransportEvent;->type:I

    return v0
.end method

.method public getValidSentAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 111
    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->validSent:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getValidUnsentAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 121
    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->validUnsent:[Ljavax/mail/Address;

    return-object v0
.end method
