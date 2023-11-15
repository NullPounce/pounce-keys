.class public abstract Ljavax/mail/Store;
.super Ljavax/mail/Service;
.source "Store.java"


# instance fields
.field private volatile folderListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile storeListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/StoreListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 50
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    .line 223
    iput-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    .line 240
    .end local p0    # "this":Ljavax/mail/Store;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 237
    .end local p1    # "l":Ljavax/mail/event/FolderListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStoreListener(Ljavax/mail/event/StoreListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/StoreListener;

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    .line 184
    .end local p0    # "this":Ljavax/mail/Store;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 181
    .end local p1    # "l":Ljavax/mail/event/StoreListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract getDefaultFolder()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Ljavax/mail/Store;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v0

    filled-new-array {v0}, [Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/Folder;

    return-object v0
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/Folder;

    return-object v0
.end method

.method protected notifyFolderListeners(ILjavax/mail/Folder;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "folder"    # Ljavax/mail/Folder;

    .line 272
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    new-instance v0, Ljavax/mail/event/FolderEvent;

    invoke-direct {v0, p0, p2, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V

    .line 276
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 277
    return-void
.end method

.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V
    .locals 2
    .param p1, "oldF"    # Ljavax/mail/Folder;
    .param p2, "newF"    # Ljavax/mail/Folder;

    .line 295
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljavax/mail/event/FolderEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 299
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 300
    return-void
.end method

.method protected notifyStoreListeners(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljavax/mail/event/StoreEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/StoreEvent;-><init>(Ljavax/mail/Store;ILjava/lang/String;)V

    .line 219
    .local v0, "e":Ljavax/mail/event/StoreEvent;
    iget-object v1, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Store;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 220
    return-void
.end method

.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Ljavax/mail/Store;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local p0    # "this":Ljavax/mail/Store;
    :cond_0
    monitor-exit p0

    return-void

    .line 252
    .end local p1    # "l":Ljavax/mail/event/FolderListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeStoreListener(Ljavax/mail/event/StoreListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/StoreListener;

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Ljavax/mail/Store;->storeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local p0    # "this":Ljavax/mail/Store;
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    .end local p1    # "l":Ljavax/mail/event/StoreListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
