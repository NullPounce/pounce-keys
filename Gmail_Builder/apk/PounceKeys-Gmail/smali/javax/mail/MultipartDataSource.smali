.class public interface abstract Ljavax/mail/MultipartDataSource;
.super Ljava/lang/Object;
.source "MultipartDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# virtual methods
.method public abstract getBodyPart(I)Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method
