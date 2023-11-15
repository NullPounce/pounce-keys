.class public interface abstract Ljavax/mail/QuotaAwareStore;
.super Ljava/lang/Object;
.source "QuotaAwareStore.java"


# virtual methods
.method public abstract getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setQuota(Ljavax/mail/Quota;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
