.class public Ljavax/mail/SendFailedException;
.super Ljavax/mail/MessagingException;
.source "SendFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x599dc2cbe43ae131L


# instance fields
.field protected transient invalid:[Ljavax/mail/Address;

.field protected transient validSent:[Ljavax/mail/Address;

.field protected transient validUnsent:[Ljavax/mail/Address;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 66
    invoke-direct {p0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "validSent"    # [Ljavax/mail/Address;
    .param p4, "validUnsent"    # [Ljavax/mail/Address;
    .param p5, "invalid"    # [Ljavax/mail/Address;

    .line 84
    invoke-direct {p0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 85
    iput-object p3, p0, Ljavax/mail/SendFailedException;->validSent:[Ljavax/mail/Address;

    .line 86
    iput-object p4, p0, Ljavax/mail/SendFailedException;->validUnsent:[Ljavax/mail/Address;

    .line 87
    iput-object p5, p0, Ljavax/mail/SendFailedException;->invalid:[Ljavax/mail/Address;

    .line 88
    return-void
.end method


# virtual methods
.method public getInvalidAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 114
    iget-object v0, p0, Ljavax/mail/SendFailedException;->invalid:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getValidSentAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 95
    iget-object v0, p0, Ljavax/mail/SendFailedException;->validSent:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getValidUnsentAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 105
    iget-object v0, p0, Ljavax/mail/SendFailedException;->validUnsent:[Ljavax/mail/Address;

    return-object v0
.end method
