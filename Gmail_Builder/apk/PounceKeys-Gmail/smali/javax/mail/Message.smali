.class public abstract Ljavax/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljavax/mail/Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Message$RecipientType;
    }
.end annotation


# instance fields
.field protected expunged:Z

.field protected folder:Ljavax/mail/Folder;

.field protected msgnum:I

.field protected session:Ljavax/mail/Session;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    .line 68
    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    .line 78
    iput-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 83
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .locals 1
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "msgnum"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    .line 68
    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    .line 78
    iput-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 93
    iput-object p1, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    .line 94
    iput p2, p0, Ljavax/mail/Message;->msgnum:I

    .line 95
    iget-object v0, p1, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    iget-object v0, v0, Ljavax/mail/Store;->session:Ljavax/mail/Session;

    iput-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 96
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Message;->msgnum:I

    .line 68
    iput-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    .line 78
    iput-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 105
    iput-object p1, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    .line 106
    return-void
.end method


# virtual methods
.method public abstract addFrom([Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public addRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 392
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/mail/Address;

    .line 393
    .local v0, "a":[Ljavax/mail/Address;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 394
    invoke-virtual {p0, p1, v0}, Ljavax/mail/Message;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 395
    return-void
.end method

.method public abstract addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getAllRecipients()[Ljavax/mail/Address;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 295
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v0}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 296
    .local v0, "to":[Ljavax/mail/Address;
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    .line 297
    .local v1, "cc":[Ljavax/mail/Address;
    sget-object v2, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v2}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v2

    .line 299
    .local v2, "bcc":[Ljavax/mail/Address;
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 300
    return-object v0

    .line 303
    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    array-length v4, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 304
    :goto_0
    if-eqz v1, :cond_2

    array-length v5, v1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v4, v5

    .line 305
    if-eqz v2, :cond_3

    array-length v5, v2

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    add-int/2addr v4, v5

    .line 306
    .local v4, "numRecip":I
    new-array v5, v4, [Ljavax/mail/Address;

    .line 307
    .local v5, "addresses":[Ljavax/mail/Address;
    const/4 v6, 0x0

    .line 308
    .local v6, "pos":I
    if-eqz v0, :cond_4

    .line 309
    array-length v7, v0

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    array-length v7, v0

    add-int/2addr v6, v7

    .line 312
    :cond_4
    if-eqz v1, :cond_5

    .line 313
    array-length v7, v1

    invoke-static {v1, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    array-length v7, v1

    add-int/2addr v6, v7

    .line 316
    :cond_5
    if-eqz v2, :cond_6

    .line 317
    array-length v7, v2

    invoke-static {v2, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    :cond_6
    return-object v5
.end method

.method public abstract getFlags()Ljavax/mail/Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 610
    iget-object v0, p0, Ljavax/mail/Message;->folder:Ljavax/mail/Folder;

    return-object v0
.end method

.method public abstract getFrom()[Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessageNumber()I
    .locals 1

    .line 589
    iget v0, p0, Ljavax/mail/Message;->msgnum:I

    return v0
.end method

.method public abstract getReceivedDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSentDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getSession()Ljavax/mail/Session;
    .locals 1

    .line 115
    iget-object v0, p0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public abstract getSubject()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public isExpunged()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Ljavax/mail/Message;->expunged:Z

    return v0
.end method

.method public isSet(Ljavax/mail/Flags$Flag;)Z
    .locals 1
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/search/SearchTerm;)Z
    .locals 1
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 702
    invoke-virtual {p1, p0}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v0

    return v0
.end method

.method public abstract reply(Z)Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract saveChanges()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method protected setExpunged(Z)V
    .locals 0
    .param p1, "expunged"    # Z

    .line 642
    iput-boolean p1, p0, Ljavax/mail/Message;->expunged:Z

    .line 643
    return-void
.end method

.method public setFlag(Ljavax/mail/Flags$Flag;Z)V
    .locals 1
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 571
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0, p1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    .line 572
    .local v0, "f":Ljavax/mail/Flags;
    invoke-virtual {p0, v0, p2}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V

    .line 573
    return-void
.end method

.method public abstract setFlags(Ljavax/mail/Flags;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFrom()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFrom(Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method protected setMessageNumber(I)V
    .locals 0
    .param p1, "msgnum"    # I

    .line 599
    iput p1, p0, Ljavax/mail/Message;->msgnum:I

    .line 600
    return-void
.end method

.method public setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    .locals 2
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 354
    if-nez p2, :cond_0

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    goto :goto_0

    .line 357
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/mail/Address;

    .line 358
    .local v0, "a":[Ljavax/mail/Address;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 359
    invoke-virtual {p0, p1, v0}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 361
    .end local v0    # "a":[Ljavax/mail/Address;
    :goto_0
    return-void
.end method

.method public abstract setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .locals 2
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 438
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "setReplyTo not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setSentDate(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSubject(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
