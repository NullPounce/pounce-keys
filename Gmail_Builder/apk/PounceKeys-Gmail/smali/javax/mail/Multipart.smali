.class public abstract Ljavax/mail/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"


# instance fields
.field protected contentType:Ljava/lang/String;

.field protected parent:Ljavax/mail/Part;

.field protected parts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/BodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 54
    const-string v0, "multipart/mixed"

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 195
    .end local p0    # "this":Ljavax/mail/Multipart;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p1, p0}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 191
    .end local p1    # "part":Ljavax/mail/BodyPart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    .line 218
    .end local p0    # "this":Ljavax/mail/Multipart;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 219
    invoke-virtual {p1, p0}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 214
    .end local p1    # "part":Ljavax/mail/BodyPart;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    .end local p0    # "this":Ljavax/mail/Multipart;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "No such BodyPart"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContentType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 103
    .end local p0    # "this":Ljavax/mail/Multipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 115
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 117
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 113
    .end local p0    # "this":Ljavax/mail/Multipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Part;
    .locals 1

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parent:Ljavax/mail/Part;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 243
    .end local p0    # "this":Ljavax/mail/Multipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeBodyPart(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/BodyPart;

    .line 176
    .local v0, "part":Ljavax/mail/BodyPart;
    iget-object v1, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 173
    .end local v0    # "part":Ljavax/mail/BodyPart;
    .end local p0    # "this":Ljavax/mail/Multipart;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "No such BodyPart"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 2
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavax/mail/BodyPart;->setParent(Ljavax/mail/Multipart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return v0

    .line 151
    .end local v0    # "ret":Z
    .end local p0    # "this":Ljavax/mail/Multipart;
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No such body part"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local p1    # "part":Ljavax/mail/BodyPart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V
    .locals 3
    .param p1, "mp"    # Ljavax/mail/MultipartDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-interface {p1}, Ljavax/mail/MultipartDataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 88
    invoke-interface {p1}, Ljavax/mail/MultipartDataSource;->getCount()I

    move-result v0

    .line 89
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    invoke-interface {p1, v1}, Ljavax/mail/MultipartDataSource;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    .end local p0    # "this":Ljavax/mail/Multipart;
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "count":I
    .end local p1    # "mp":Ljavax/mail/MultipartDataSource;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParent(Ljavax/mail/Part;)V
    .locals 0
    .param p1, "parent"    # Ljavax/mail/Part;

    monitor-enter p0

    .line 258
    :try_start_0
    iput-object p1, p0, Ljavax/mail/Multipart;->parent:Ljavax/mail/Part;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 257
    .end local p0    # "this":Ljavax/mail/Multipart;
    .end local p1    # "parent":Ljavax/mail/Part;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
