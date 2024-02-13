.class public Ljavax/mail/search/SearchException;
.super Ljavax/mail/MessagingException;
.source "SearchException.java"


# static fields
.field private static final serialVersionUID:J = -0x626efef1f03dda0eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
