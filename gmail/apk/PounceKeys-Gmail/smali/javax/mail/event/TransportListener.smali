.class public interface abstract Ljavax/mail/event/TransportListener;
.super Ljava/lang/Object;
.source "TransportListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract messageDelivered(Ljavax/mail/event/TransportEvent;)V
.end method

.method public abstract messageNotDelivered(Ljavax/mail/event/TransportEvent;)V
.end method

.method public abstract messagePartiallyDelivered(Ljavax/mail/event/TransportEvent;)V
.end method
