.class public Lcom/sun/mail/imap/DefaultFolder;
.super Lcom/sun/mail/imap/IMAPFolder;
.source "DefaultFolder.java"


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/IMAPStore;)V
    .locals 3
    .param p1, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .line 36
    const v0, 0xffff

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/DefaultFolder;->exists:Z

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/DefaultFolder;->type:I

    .line 39
    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .locals 2
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot append to Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Z)Z
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot delete Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot expunge Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    const v1, 0xffff

    invoke-virtual {v0, p1, v1}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/DefaultFolder;->fullName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 43
    .end local p0    # "this":Lcom/sun/mail/imap/DefaultFolder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .locals 1

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNewMessages()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    new-instance v1, Lcom/sun/mail/imap/DefaultFolder$1;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$1;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v1

    .line 63
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 66
    .end local p0    # "this":Lcom/sun/mail/imap/DefaultFolder;
    :cond_0
    :try_start_1
    array-length v1, v0

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    .line 67
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    return-object v1

    .line 53
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v1    # "folders":[Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "pattern":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    new-instance v1, Lcom/sun/mail/imap/DefaultFolder$2;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$2;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v1

    .line 84
    if-nez v0, :cond_0

    .line 85
    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 87
    .end local p0    # "this":Lcom/sun/mail/imap/DefaultFolder;
    :cond_0
    :try_start_1
    array-length v1, v0

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    .line 88
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    return-object v1

    .line 74
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v1    # "folders":[Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "pattern":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot rename Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
