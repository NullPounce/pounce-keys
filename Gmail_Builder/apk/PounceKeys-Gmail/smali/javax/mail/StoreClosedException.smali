.class public Ljavax/mail/StoreClosedException;
.super Ljavax/mail/MessagingException;
.source "StoreClosedException.java"


# static fields
.field private static final serialVersionUID:J = -0x2ba6adaa29ac70dfL


# instance fields
.field private transient store:Ljavax/mail/Store;


# direct methods
.method public constructor <init>(Ljavax/mail/Store;)V
    .locals 1
    .param p1, "store"    # Ljavax/mail/Store;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Store;Ljava/lang/String;)V
    .locals 0
    .param p1, "store"    # Ljavax/mail/Store;
    .param p2, "message"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Ljavax/mail/StoreClosedException;->store:Ljavax/mail/Store;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Store;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "store"    # Ljavax/mail/Store;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 71
    invoke-direct {p0, p2, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    iput-object p1, p0, Ljavax/mail/StoreClosedException;->store:Ljavax/mail/Store;

    .line 73
    return-void
.end method


# virtual methods
.method public getStore()Ljavax/mail/Store;
    .locals 1

    .line 81
    iget-object v0, p0, Ljavax/mail/StoreClosedException;->store:Ljavax/mail/Store;

    return-object v0
.end method
