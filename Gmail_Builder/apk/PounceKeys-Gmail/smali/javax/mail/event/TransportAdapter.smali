.class public abstract Ljavax/mail/event/TransportAdapter;
.super Ljava/lang/Object;
.source "TransportAdapter.java"

# interfaces
.implements Ljavax/mail/event/TransportListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageDelivered(Ljavax/mail/event/TransportEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/TransportEvent;

    .line 29
    return-void
.end method

.method public messageNotDelivered(Ljavax/mail/event/TransportEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/TransportEvent;

    .line 31
    return-void
.end method

.method public messagePartiallyDelivered(Ljavax/mail/event/TransportEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/TransportEvent;

    .line 33
    return-void
.end method
