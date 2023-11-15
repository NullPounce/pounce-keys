.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field protected allowEmpty:Z

.field protected complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected ignoreExistingBoundaryParameter:Z

.field protected ignoreMissingBoundaryParameter:Z

.field protected ignoreMissingEndBoundary:Z

.field protected parsed:Z

.field protected preamble:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 169
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 111
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 119
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 157
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 188
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "boundary":Ljava/lang/String;
    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    move-object v0, v2

    .line 190
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "boundary"

    invoke-virtual {v0, v2, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->initializeProperties()V

    .line 193
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljavax/mail/BodyPart;)V
    .locals 3
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 221
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 222
    .local v2, "bp":Ljavax/mail/BodyPart;
    invoke-super {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 221
    .end local v2    # "bp":Ljavax/mail/BodyPart;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 111
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 119
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 157
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 248
    instance-of v1, p1, Ljavax/mail/MessageAware;

    if-eqz v1, :cond_0

    .line 249
    move-object v1, p1

    check-cast v1, Ljavax/mail/MessageAware;

    invoke-interface {v1}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v1

    .line 250
    .local v1, "mc":Ljavax/mail/MessageContext;
    invoke-virtual {v1}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 253
    .end local v1    # "mc":Ljavax/mail/MessageContext;
    :cond_0
    instance-of v1, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v1, :cond_1

    .line 255
    move-object v0, p1

    check-cast v0, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 256
    return-void

    .line 261
    :cond_1
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 262
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 263
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public varargs constructor <init>([Ljavax/mail/BodyPart;)V
    .locals 3
    .param p1, "parts"    # [Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 205
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 206
    .local v2, "bp":Ljavax/mail/BodyPart;
    invoke-super {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 205
    .end local v2    # "bp":Ljavax/mail/BodyPart;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private static allDashes(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 895
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 896
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    .line 897
    const/4 v1, 0x0

    return v1

    .line 895
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private createMimeBodyPartIs(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1000
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1006
    goto :goto_0

    .line 1004
    :catch_0
    move-exception v1

    .line 1000
    :goto_0
    return-object v0

    .line 1002
    :catchall_0
    move-exception v0

    .line 1003
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1006
    goto :goto_1

    .line 1004
    :catch_1
    move-exception v1

    .line 1007
    :goto_1
    throw v0
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    if-nez p3, :cond_0

    .line 919
    const/4 v0, 0x0

    return v0

    .line 920
    :cond_0
    const/4 v0, 0x0

    .line 921
    .local v0, "total":I
    :goto_0
    if-lez p3, :cond_2

    .line 922
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 923
    .local v1, "bsize":I
    if-gtz v1, :cond_1

    .line 924
    goto :goto_1

    .line 925
    :cond_1
    add-int/2addr p2, v1

    .line 926
    add-int/2addr v0, v1

    .line 927
    sub-int/2addr p3, v1

    .line 928
    .end local v1    # "bsize":I
    goto :goto_0

    .line 929
    :cond_2
    :goto_1
    if-lez v0, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    return v1
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    nop

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 938
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 939
    .local v2, "cur":J
    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 941
    sub-long/2addr p2, v2

    .line 942
    .end local v2    # "cur":J
    goto :goto_0

    .line 940
    .restart local v2    # "cur":J
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "can\'t skip"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    .end local v2    # "cur":J
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 401
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 399
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "part":Ljavax/mail/BodyPart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 421
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 422
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 420
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "part":Ljavax/mail/BodyPart;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 959
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 994
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 977
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 326
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 327
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 325
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 5
    .param p1, "CID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 340
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 342
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0

    .line 343
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 344
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 345
    .local v2, "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 347
    monitor-exit p0

    return-object v2

    .line 343
    .end local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "s":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 339
    .end local v0    # "count":I
    .end local p1    # "CID":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 312
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 313
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 311
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 455
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 456
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 454
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initializeProperties()V
    .locals 2

    .line 277
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 280
    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 283
    const-string v0, "mail.mime.multipart.ignoreexistingboundaryparameter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 286
    const-string v0, "mail.mime.multipart.allowempty"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 288
    return-void
.end method

.method public declared-synchronized isComplete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 442
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 440
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 560
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_15

    if-eqz v0, :cond_0

    .line 561
    monitor-exit p0

    return-void

    .line 563
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->initializeProperties()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_15

    .line 565
    const/4 v2, 0x0

    .line 566
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 567
    .local v3, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v4, 0x0

    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 570
    .local v6, "end":J
    :try_start_2
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 571
    nop

    instance-of v0, v2, Ljava/io/ByteArrayInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18
    .catchall {:try_start_2 .. :try_end_2} :catchall_15

    if-nez v0, :cond_1

    :try_start_3
    instance-of v0, v2, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_1

    .line 574
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_15

    move-object v2, v0

    goto :goto_0

    .line 575
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catch_0
    move-exception v0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    goto/16 :goto_27

    .line 577
    :cond_1
    :goto_0
    nop

    .line 578
    :try_start_4
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_2

    .line 579
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v3, v0

    .line 581
    :cond_2
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v8, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 582
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    const/4 v0, 0x0

    .line 583
    .local v0, "boundary":Ljava/lang/String;
    iget-boolean v9, v1, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    if-nez v9, :cond_3

    .line 584
    const-string v9, "boundary"

    invoke-virtual {v8, v9}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 585
    .local v9, "bp":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 586
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    move-object v9, v0

    goto :goto_1

    .line 588
    .end local v9    # "bp":Ljava/lang/String;
    :cond_3
    move-object v9, v0

    .end local v0    # "boundary":Ljava/lang/String;
    .local v9, "boundary":Ljava/lang/String;
    :goto_1
    if-nez v9, :cond_5

    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v0, :cond_5

    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 590
    :cond_4
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v10, "Missing boundary parameter"

    invoke-direct {v0, v10}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_15

    .line 594
    :cond_5
    :goto_2
    :try_start_5
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 595
    .local v10, "lin":Lcom/sun/mail/util/LineInputStream;
    const/4 v0, 0x0

    move-object v11, v0

    .line 597
    .local v11, "preamblesb":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual {v10}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_16
    .catchall {:try_start_5 .. :try_end_5} :catchall_13

    move-object v12, v0

    .local v12, "line":Ljava/lang/String;
    const/16 v13, 0x9

    const/16 v14, 0x20

    const/4 v15, 0x1

    if-eqz v0, :cond_e

    .line 605
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v15

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_7

    .line 606
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v18, v17

    .line 607
    .local v18, "c":C
    move/from16 v15, v18

    .end local v18    # "c":C
    .local v15, "c":C
    if-eq v15, v14, :cond_6

    if-eq v15, v13, :cond_6

    .line 608
    goto :goto_5

    .line 605
    .end local v15    # "c":C
    :cond_6
    add-int/lit8 v0, v0, -0x1

    const/4 v15, 0x1

    goto :goto_4

    .line 610
    :cond_7
    :goto_5
    add-int/lit8 v15, v0, 0x1

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 611
    if-eqz v9, :cond_9

    .line 612
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 613
    goto/16 :goto_7

    .line 614
    :cond_8
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    if-ne v13, v15, :cond_b

    .line 615
    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "--"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 616
    const/4 v12, 0x0

    .line 617
    goto :goto_7

    .line 625
    :cond_9
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x2

    if-le v13, v15, :cond_b

    const-string v13, "--"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 626
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x4

    if-le v13, v15, :cond_a

    invoke-static {v12}, Ljavax/mail/internet/MimeMultipart;->allDashes(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_6

    .line 634
    :cond_a
    move-object v9, v12

    .line 635
    goto :goto_7

    .line 641
    :cond_b
    :goto_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_d

    .line 643
    if-nez v11, :cond_c

    .line 644
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v13

    .line 645
    :cond_c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .end local v0    # "i":I
    :cond_d
    goto/16 :goto_3

    .line 881
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v24, v8

    move-object v8, v0

    goto/16 :goto_25

    .line 878
    :catch_1
    move-exception v0

    move-object/from16 v24, v8

    goto/16 :goto_24

    .line 649
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v12    # "line":Ljava/lang/String;
    :cond_e
    :goto_7
    if-eqz v11, :cond_f

    .line 650
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 652
    :cond_f
    if-nez v12, :cond_11

    .line 653
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_10

    .line 882
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_15

    .line 885
    goto :goto_8

    .line 883
    :catch_2
    move-exception v0

    .line 654
    :goto_8
    monitor-exit p0

    return-void

    .line 656
    :cond_10
    :try_start_8
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v13, "Missing start boundary"

    invoke-direct {v0, v13}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 660
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :cond_11
    :try_start_9
    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 661
    .local v0, "bndbytes":[B
    array-length v13, v0

    .line 668
    .local v13, "bl":I
    const/16 v15, 0x100

    new-array v15, v15, [I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_15
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    .line 669
    .local v15, "bcs":[I
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "i":I
    :goto_9
    if-ge v14, v13, :cond_12

    .line 670
    move-wide/from16 v20, v4

    .end local v4    # "start":J
    .local v20, "start":J
    :try_start_a
    aget-byte v4, v0, v14

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v14, 0x1

    aput v5, v15, v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 669
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v4, v20

    goto :goto_9

    .line 881
    .end local v0    # "bndbytes":[B
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "bl":I
    .end local v14    # "i":I
    .end local v15    # "bcs":[I
    :catchall_1
    move-exception v0

    move-object/from16 v24, v8

    move-wide/from16 v4, v20

    move-object v8, v0

    goto/16 :goto_25

    .line 878
    :catch_3
    move-exception v0

    move-object/from16 v24, v8

    move-wide/from16 v4, v20

    goto/16 :goto_24

    .line 669
    .end local v20    # "start":J
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "start":J
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "bl":I
    .restart local v14    # "i":I
    .restart local v15    # "bcs":[I
    :cond_12
    move-wide/from16 v20, v4

    .line 673
    .end local v4    # "start":J
    .end local v14    # "i":I
    .restart local v20    # "start":J
    :try_start_b
    new-array v4, v13, [I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_14
    .catchall {:try_start_b .. :try_end_b} :catchall_11

    .line 675
    .local v4, "gss":[I
    move v5, v13

    .local v5, "i":I
    :goto_a
    if-lez v5, :cond_15

    .line 677
    add-int/lit8 v14, v13, -0x1

    .local v14, "j":I
    :goto_b
    if-lt v14, v5, :cond_13

    .line 679
    move-wide/from16 v22, v6

    .end local v6    # "end":J
    .local v22, "end":J
    :try_start_c
    aget-byte v6, v0, v14

    sub-int v7, v14, v5

    aget-byte v7, v0, v7

    if-ne v6, v7, :cond_14

    .line 681
    add-int/lit8 v6, v14, -0x1

    aput v5, v4, v6

    .line 677
    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v6, v22

    goto :goto_b

    .line 881
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v5    # "i":I
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "bl":I
    .end local v14    # "j":I
    .end local v15    # "bcs":[I
    :catchall_2
    move-exception v0

    move-object/from16 v24, v8

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    move-object v8, v0

    goto/16 :goto_25

    .line 878
    :catch_4
    move-exception v0

    move-object/from16 v24, v8

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    goto/16 :goto_24

    .line 677
    .end local v22    # "end":J
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v5    # "i":I
    .restart local v6    # "end":J
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "bl":I
    .restart local v14    # "j":I
    .restart local v15    # "bcs":[I
    :cond_13
    move-wide/from16 v22, v6

    .line 688
    .end local v6    # "end":J
    .restart local v22    # "end":J
    :goto_c
    if-lez v14, :cond_14

    .line 689
    add-int/lit8 v14, v14, -0x1

    aput v5, v4, v14
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_c

    .line 675
    .end local v14    # "j":I
    :cond_14
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v6, v22

    goto :goto_a

    .end local v22    # "end":J
    .restart local v6    # "end":J
    :cond_15
    move-wide/from16 v22, v6

    .line 691
    .end local v5    # "i":I
    .end local v6    # "end":J
    .restart local v22    # "end":J
    add-int/lit8 v5, v13, -0x1

    const/4 v6, 0x1

    :try_start_d
    aput v6, v4, v5
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_13
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    .line 697
    const/4 v5, 0x0

    move-wide/from16 v6, v22

    .line 699
    .end local v22    # "end":J
    .local v5, "done":Z
    .restart local v6    # "end":J
    :goto_d
    if-nez v5, :cond_36

    .line 700
    const/4 v14, 0x0

    .line 701
    .local v14, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v3, :cond_19

    .line 702
    :try_start_e
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 704
    :goto_e
    invoke-virtual {v10}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v19
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v12, v19

    if-eqz v19, :cond_16

    :try_start_f
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-lez v19, :cond_16

    .line 705
    goto :goto_e

    .line 706
    :cond_16
    if-nez v12, :cond_18

    .line 707
    move/from16 v19, v5

    .end local v5    # "done":Z
    .local v19, "done":Z
    :try_start_10
    iget-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v5, :cond_17

    .line 711
    const/4 v5, 0x0

    :try_start_11
    iput-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 712
    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    goto/16 :goto_22

    .line 708
    :cond_17
    :try_start_12
    new-instance v5, Ljavax/mail/internet/ParseException;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-wide/from16 v22, v6

    .end local v6    # "end":J
    .restart local v22    # "end":J
    :try_start_13
    const-string v6, "missing multipart end boundary"

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v20    # "start":J
    .end local v22    # "end":J
    throw v5
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 706
    .end local v19    # "done":Z
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v5    # "done":Z
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v20    # "start":J
    :cond_18
    move/from16 v19, v5

    move-wide/from16 v22, v6

    .end local v5    # "done":Z
    .end local v6    # "end":J
    .restart local v19    # "done":Z
    .restart local v22    # "end":J
    move-wide/from16 v5, v20

    goto :goto_f

    .line 881
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "bl":I
    .end local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v15    # "bcs":[I
    .end local v19    # "done":Z
    .end local v22    # "end":J
    .restart local v6    # "end":J
    :catchall_3
    move-exception v0

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-wide/from16 v4, v20

    move-object v8, v0

    .end local v6    # "end":J
    .restart local v22    # "end":J
    goto/16 :goto_25

    .line 878
    .end local v22    # "end":J
    .restart local v6    # "end":J
    :catch_5
    move-exception v0

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-wide/from16 v4, v20

    .end local v6    # "end":J
    .restart local v22    # "end":J
    goto/16 :goto_24

    .line 716
    .end local v22    # "end":J
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v5    # "done":Z
    .restart local v6    # "end":J
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "bl":I
    .restart local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v15    # "bcs":[I
    :cond_19
    move/from16 v19, v5

    move-wide/from16 v22, v6

    .end local v5    # "done":Z
    .end local v6    # "end":J
    .restart local v19    # "done":Z
    .restart local v22    # "end":J
    :try_start_14
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v5
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    move-object v14, v5

    move-wide/from16 v5, v20

    .line 719
    .end local v20    # "start":J
    .local v5, "start":J
    :goto_f
    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v7
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    if-eqz v7, :cond_35

    .line 722
    const/4 v7, 0x0

    .line 724
    .local v7, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v3, :cond_1a

    .line 725
    :try_start_16
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v7, v20

    move-wide/from16 v20, v22

    goto :goto_10

    .line 881
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "bl":I
    .end local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v15    # "bcs":[I
    .end local v19    # "done":Z
    :catchall_4
    move-exception v0

    move-wide v4, v5

    move-object/from16 v24, v8

    move-wide/from16 v6, v22

    move-object v8, v0

    goto/16 :goto_25

    .line 878
    :catch_6
    move-exception v0

    move-wide v4, v5

    move-object/from16 v24, v8

    move-wide/from16 v6, v22

    goto/16 :goto_24

    .line 727
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "bl":I
    .restart local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v15    # "bcs":[I
    .restart local v19    # "done":Z
    :cond_1a
    :try_start_17
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v20
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    .line 739
    .end local v22    # "end":J
    .local v20, "end":J
    :goto_10
    move-object/from16 v24, v8

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .local v24, "cType":Ljavax/mail/internet/ContentType;
    :try_start_18
    new-array v8, v13, [B

    .line 740
    .local v8, "inbuf":[B
    move-object/from16 v22, v8

    .end local v8    # "inbuf":[B
    .local v22, "inbuf":[B
    new-array v8, v13, [B
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 741
    .local v8, "previnbuf":[B
    const/16 v23, 0x0

    .line 742
    .local v23, "inSize":I
    const/16 v25, 0x0

    .line 744
    .local v25, "prevSize":I
    const/16 v26, 0x1

    move-object/from16 v38, v9

    move-object v9, v8

    move-object/from16 v8, v22

    move/from16 v22, v26

    move-object/from16 v26, v10

    move/from16 v10, v25

    move-object/from16 v25, v38

    .line 750
    .local v8, "inbuf":[B
    .local v9, "previnbuf":[B
    .local v10, "prevSize":I
    .local v22, "first":Z
    .local v25, "boundary":Ljava/lang/String;
    .local v26, "lin":Lcom/sun/mail/util/LineInputStream;
    :goto_11
    move-object/from16 v27, v11

    .end local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .local v27, "preamblesb":Ljava/lang/StringBuilder;
    add-int/lit8 v11, v13, 0x4

    add-int/lit16 v11, v11, 0x3e8

    :try_start_19
    invoke-virtual {v2, v11}, Ljava/io/InputStream;->mark(I)V

    .line 751
    const/4 v11, 0x0

    .line 752
    .local v11, "eolLen":I
    move/from16 v28, v11

    const/4 v11, 0x0

    .end local v11    # "eolLen":I
    .local v28, "eolLen":I
    invoke-static {v2, v8, v11, v13}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v29
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    move/from16 v11, v29

    .line 753
    .end local v23    # "inSize":I
    .local v11, "inSize":I
    if-ge v11, v13, :cond_1d

    .line 755
    move-object/from16 v29, v12

    .end local v12    # "line":Ljava/lang/String;
    .local v29, "line":Ljava/lang/String;
    :try_start_1a
    iget-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v12, :cond_1c

    .line 758
    if-eqz v3, :cond_1b

    .line 759
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v30

    move-wide/from16 v20, v30

    .line 760
    :cond_1b
    const/4 v12, 0x0

    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 761
    const/4 v12, 0x1

    .line 762
    .end local v19    # "done":Z
    .local v12, "done":Z
    move-object/from16 v32, v0

    move-object/from16 v30, v4

    move/from16 v19, v12

    move-object v0, v14

    move-object/from16 v31, v15

    move-wide/from16 v14, v20

    move/from16 v12, v28

    goto/16 :goto_1a

    .line 756
    .end local v12    # "done":Z
    .restart local v19    # "done":Z
    :cond_1c
    new-instance v12, Ljavax/mail/internet/ParseException;

    move-object/from16 v30, v4

    .end local v4    # "gss":[I
    .local v30, "gss":[I
    const-string v4, "missing multipart end boundary"

    invoke-direct {v12, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v5    # "start":J
    .end local v20    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    throw v12

    .line 881
    .end local v0    # "bndbytes":[B
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "inbuf":[B
    .end local v9    # "previnbuf":[B
    .end local v10    # "prevSize":I
    .end local v11    # "inSize":I
    .end local v13    # "bl":I
    .end local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v15    # "bcs":[I
    .end local v19    # "done":Z
    .end local v22    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v28    # "eolLen":I
    .end local v29    # "line":Ljava/lang/String;
    .end local v30    # "gss":[I
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v5    # "start":J
    .restart local v20    # "end":J
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v8, v0

    move-wide v4, v5

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    goto/16 :goto_25

    .line 878
    :catch_7
    move-exception v0

    move-wide v4, v5

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    goto/16 :goto_24

    .line 766
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "inbuf":[B
    .restart local v9    # "previnbuf":[B
    .restart local v10    # "prevSize":I
    .restart local v11    # "inSize":I
    .local v12, "line":Ljava/lang/String;
    .restart local v13    # "bl":I
    .restart local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v15    # "bcs":[I
    .restart local v19    # "done":Z
    .restart local v22    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v28    # "eolLen":I
    :cond_1d
    move-object/from16 v30, v4

    move-object/from16 v29, v12

    .end local v4    # "gss":[I
    .end local v12    # "line":Ljava/lang/String;
    .restart local v29    # "line":Ljava/lang/String;
    .restart local v30    # "gss":[I
    add-int/lit8 v4, v13, -0x1

    .local v4, "i":I
    :goto_12
    if-ltz v4, :cond_1f

    .line 767
    aget-byte v12, v8, v4

    move-object/from16 v31, v15

    .end local v15    # "bcs":[I
    .local v31, "bcs":[I
    aget-byte v15, v0, v4

    if-eq v12, v15, :cond_1e

    .line 768
    goto :goto_13

    .line 766
    :cond_1e
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v15, v31

    goto :goto_12

    .end local v31    # "bcs":[I
    .restart local v15    # "bcs":[I
    :cond_1f
    move-object/from16 v31, v15

    .line 770
    .end local v15    # "bcs":[I
    .restart local v31    # "bcs":[I
    :goto_13
    if-gez v4, :cond_30

    .line 771
    const/4 v12, 0x0

    .line 772
    .end local v28    # "eolLen":I
    .local v12, "eolLen":I
    if-nez v22, :cond_21

    .line 775
    add-int/lit8 v28, v10, -0x1

    aget-byte v28, v9, v28

    move/from16 v32, v28

    .line 776
    .local v32, "b":I
    move/from16 v15, v32

    move-object/from16 v32, v0

    const/16 v0, 0xd

    .end local v0    # "bndbytes":[B
    .local v15, "b":I
    .local v32, "bndbytes":[B
    if-eq v15, v0, :cond_20

    const/16 v0, 0xa

    if-ne v15, v0, :cond_22

    goto :goto_14

    :cond_20
    const/16 v0, 0xa

    .line 777
    :goto_14
    const/4 v12, 0x1

    .line 778
    if-ne v15, v0, :cond_22

    const/4 v0, 0x2

    if-lt v10, v0, :cond_22

    .line 779
    add-int/lit8 v0, v10, -0x2

    aget-byte v0, v9, v0

    .line 780
    .end local v15    # "b":I
    .local v0, "b":I
    const/16 v15, 0xd

    if-ne v0, v15, :cond_22

    .line 781
    const/4 v12, 0x2

    goto :goto_15

    .line 772
    .end local v32    # "bndbytes":[B
    .local v0, "bndbytes":[B
    :cond_21
    move-object/from16 v32, v0

    .line 785
    .end local v0    # "bndbytes":[B
    .restart local v32    # "bndbytes":[B
    :cond_22
    :goto_15
    if-nez v22, :cond_24

    if-lez v12, :cond_23

    goto :goto_16

    :cond_23
    move/from16 v35, v4

    move-wide/from16 v36, v5

    move-object v0, v14

    goto/16 :goto_1d

    .line 786
    :cond_24
    :goto_16
    if-eqz v3, :cond_25

    .line 789
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v33
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    move-object v0, v14

    .end local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .local v0, "headers":Ljavax/mail/internet/InternetHeaders;
    int-to-long v14, v13

    sub-long v33, v33, v14

    int-to-long v14, v12

    sub-long v33, v33, v14

    .end local v20    # "end":J
    .local v33, "end":J
    goto :goto_17

    .line 786
    .end local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v33    # "end":J
    .restart local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v20    # "end":J
    :cond_25
    move-object v0, v14

    .end local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    move-wide/from16 v33, v20

    .line 792
    .end local v20    # "end":J
    .restart local v33    # "end":J
    :goto_17
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v14
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 793
    .local v14, "b2":I
    const/16 v15, 0x2d

    if-ne v14, v15, :cond_26

    .line 794
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v15

    move/from16 v35, v4

    const/16 v4, 0x2d

    .end local v4    # "i":I
    .local v35, "i":I
    if-ne v15, v4, :cond_27

    .line 795
    const/4 v4, 0x1

    iput-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 796
    const/4 v4, 0x1

    .line 797
    .end local v19    # "done":Z
    .local v4, "done":Z
    move/from16 v19, v4

    move-wide/from16 v14, v33

    goto :goto_1a

    .line 881
    .end local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v4    # "done":Z
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "inbuf":[B
    .end local v9    # "previnbuf":[B
    .end local v10    # "prevSize":I
    .end local v11    # "inSize":I
    .end local v12    # "eolLen":I
    .end local v13    # "bl":I
    .end local v14    # "b2":I
    .end local v22    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v29    # "line":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v32    # "bndbytes":[B
    .end local v35    # "i":I
    :catchall_6
    move-exception v0

    move-object v8, v0

    move-wide v4, v5

    move-object/from16 v9, v25

    move-wide/from16 v6, v33

    goto/16 :goto_25

    .line 878
    :catch_8
    move-exception v0

    move-wide v4, v5

    move-object/from16 v9, v25

    move-wide/from16 v6, v33

    goto/16 :goto_24

    .line 793
    .restart local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .local v4, "i":I
    .restart local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "inbuf":[B
    .restart local v9    # "previnbuf":[B
    .restart local v10    # "prevSize":I
    .restart local v11    # "inSize":I
    .restart local v12    # "eolLen":I
    .restart local v13    # "bl":I
    .restart local v14    # "b2":I
    .restart local v19    # "done":Z
    .restart local v22    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v29    # "line":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    .restart local v32    # "bndbytes":[B
    :cond_26
    move/from16 v35, v4

    .line 801
    .end local v4    # "i":I
    .restart local v35    # "i":I
    :cond_27
    :goto_18
    const/16 v4, 0x20

    if-eq v14, v4, :cond_2f

    const/16 v15, 0x9

    if-ne v14, v15, :cond_28

    move-wide/from16 v36, v5

    const/16 v4, 0xd

    const/16 v15, 0xa

    goto/16 :goto_1e

    .line 804
    :cond_28
    const/16 v4, 0xa

    if-ne v14, v4, :cond_29

    .line 805
    goto :goto_19

    .line 806
    :cond_29
    const/16 v4, 0xd

    if-ne v14, v4, :cond_2e

    .line 807
    const/4 v4, 0x1

    :try_start_1d
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    .line 808
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    const/16 v15, 0xa

    if-eq v4, v15, :cond_2a

    .line 809
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 864
    .end local v14    # "b2":I
    .end local v35    # "i":I
    :cond_2a
    :goto_19
    move-wide/from16 v14, v33

    .end local v33    # "end":J
    .local v14, "end":J
    :goto_1a
    if-eqz v3, :cond_2b

    .line 865
    :try_start_1f
    invoke-interface {v3, v5, v6, v14, v15}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPartIs(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_9
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    move-wide/from16 v36, v5

    .local v4, "part":Ljavax/mail/internet/MimeBodyPart;
    goto :goto_1c

    .line 881
    .end local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v4    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "inbuf":[B
    .end local v9    # "previnbuf":[B
    .end local v10    # "prevSize":I
    .end local v11    # "inSize":I
    .end local v12    # "eolLen":I
    .end local v13    # "bl":I
    .end local v19    # "done":Z
    .end local v22    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v29    # "line":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v32    # "bndbytes":[B
    :catchall_7
    move-exception v0

    move-object v8, v0

    move-wide v4, v5

    move-wide v6, v14

    move-object/from16 v9, v25

    goto/16 :goto_25

    .line 878
    :catch_9
    move-exception v0

    move-wide v4, v5

    move-wide v6, v14

    move-object/from16 v9, v25

    goto/16 :goto_24

    .line 868
    .restart local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "inbuf":[B
    .restart local v9    # "previnbuf":[B
    .restart local v10    # "prevSize":I
    .restart local v11    # "inSize":I
    .restart local v12    # "eolLen":I
    .restart local v13    # "bl":I
    .restart local v19    # "done":Z
    .restart local v22    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v29    # "line":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    .restart local v32    # "bndbytes":[B
    :cond_2b
    sub-int v4, v10, v12

    if-lez v4, :cond_2c

    .line 869
    sub-int v4, v10, v12

    move-wide/from16 v36, v5

    const/4 v5, 0x0

    .end local v5    # "start":J
    .local v36, "start":J
    :try_start_20
    invoke-virtual {v7, v9, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 868
    .end local v36    # "start":J
    .restart local v5    # "start":J
    :cond_2c
    move-wide/from16 v36, v5

    .line 872
    .end local v5    # "start":J
    .restart local v36    # "start":J
    :goto_1b
    iget-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v4, :cond_2d

    if-lez v11, :cond_2d

    .line 873
    const/4 v4, 0x0

    invoke-virtual {v7, v8, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 874
    :cond_2d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    .line 876
    .restart local v4    # "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_1c
    invoke-super {v1, v4}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 877
    .end local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v4    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "inbuf":[B
    .end local v9    # "previnbuf":[B
    .end local v10    # "prevSize":I
    .end local v11    # "inSize":I
    .end local v12    # "eolLen":I
    .end local v22    # "first":Z
    move-wide v6, v14

    move/from16 v5, v19

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v29

    move-object/from16 v4, v30

    move-object/from16 v15, v31

    move-object/from16 v0, v32

    move-wide/from16 v20, v36

    goto/16 :goto_d

    .line 881
    .end local v13    # "bl":I
    .end local v19    # "done":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v29    # "line":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v32    # "bndbytes":[B
    :catchall_8
    move-exception v0

    move-object v8, v0

    move-wide v6, v14

    move-object/from16 v9, v25

    move-wide/from16 v4, v36

    goto/16 :goto_25

    .line 878
    :catch_a
    move-exception v0

    move-wide v6, v14

    move-object/from16 v9, v25

    move-wide/from16 v4, v36

    goto/16 :goto_24

    .line 806
    .end local v36    # "start":J
    .restart local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v5    # "start":J
    .restart local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "inbuf":[B
    .restart local v9    # "previnbuf":[B
    .restart local v10    # "prevSize":I
    .restart local v11    # "inSize":I
    .restart local v12    # "eolLen":I
    .restart local v13    # "bl":I
    .local v14, "b2":I
    .restart local v19    # "done":Z
    .restart local v22    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v29    # "line":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    .restart local v32    # "bndbytes":[B
    .restart local v33    # "end":J
    .restart local v35    # "i":I
    :cond_2e
    move-wide/from16 v36, v5

    .end local v5    # "start":J
    .restart local v36    # "start":J
    move-wide/from16 v20, v33

    .line 813
    .end local v14    # "b2":I
    .end local v33    # "end":J
    .restart local v20    # "end":J
    :goto_1d
    const/4 v4, 0x0

    .end local v35    # "i":I
    .local v4, "i":I
    goto :goto_1f

    .line 801
    .end local v4    # "i":I
    .end local v20    # "end":J
    .end local v36    # "start":J
    .restart local v5    # "start":J
    .restart local v14    # "b2":I
    .restart local v33    # "end":J
    .restart local v35    # "i":I
    :cond_2f
    move-wide/from16 v36, v5

    const/16 v4, 0xd

    const/16 v15, 0xa

    .line 802
    .end local v5    # "start":J
    .restart local v36    # "start":J
    :goto_1e
    :try_start_21
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    move v14, v5

    move-wide/from16 v5, v36

    goto/16 :goto_18

    .line 881
    .end local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "inbuf":[B
    .end local v9    # "previnbuf":[B
    .end local v10    # "prevSize":I
    .end local v11    # "inSize":I
    .end local v12    # "eolLen":I
    .end local v13    # "bl":I
    .end local v14    # "b2":I
    .end local v19    # "done":Z
    .end local v22    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v29    # "line":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v32    # "bndbytes":[B
    .end local v35    # "i":I
    :catchall_9
    move-exception v0

    move-object v8, v0

    move-object/from16 v9, v25

    move-wide/from16 v6, v33

    move-wide/from16 v4, v36

    goto/16 :goto_25

    .line 878
    :catch_b
    move-exception v0

    move-object/from16 v9, v25

    move-wide/from16 v6, v33

    move-wide/from16 v4, v36

    goto/16 :goto_24

    .line 881
    .end local v36    # "start":J
    .restart local v5    # "start":J
    :catchall_a
    move-exception v0

    move-wide/from16 v36, v5

    move-object v8, v0

    move-object/from16 v9, v25

    move-wide/from16 v6, v33

    move-wide/from16 v4, v36

    .end local v5    # "start":J
    .restart local v36    # "start":J
    goto/16 :goto_25

    .line 878
    .end local v36    # "start":J
    .restart local v5    # "start":J
    :catch_c
    move-exception v0

    move-wide/from16 v36, v5

    move-object/from16 v9, v25

    move-wide/from16 v6, v33

    move-wide/from16 v4, v36

    .end local v5    # "start":J
    .restart local v36    # "start":J
    goto/16 :goto_24

    .line 770
    .end local v33    # "end":J
    .end local v36    # "start":J
    .local v0, "bndbytes":[B
    .restart local v4    # "i":I
    .restart local v5    # "start":J
    .restart local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "inbuf":[B
    .restart local v9    # "previnbuf":[B
    .restart local v10    # "prevSize":I
    .restart local v11    # "inSize":I
    .restart local v13    # "bl":I
    .local v14, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v19    # "done":Z
    .restart local v20    # "end":J
    .restart local v22    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v28    # "eolLen":I
    .restart local v29    # "line":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    :cond_30
    move-object/from16 v32, v0

    move/from16 v35, v4

    move-wide/from16 v36, v5

    move-object v0, v14

    .end local v4    # "i":I
    .end local v5    # "start":J
    .end local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .local v0, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v32    # "bndbytes":[B
    .restart local v35    # "i":I
    .restart local v36    # "start":J
    move/from16 v12, v28

    .line 823
    .end local v28    # "eolLen":I
    .end local v35    # "i":I
    .restart local v4    # "i":I
    .restart local v12    # "eolLen":I
    :goto_1f
    add-int/lit8 v5, v4, 0x1

    :try_start_22
    aget-byte v6, v8, v4

    and-int/lit8 v6, v6, 0x7f

    aget v6, v31, v6

    sub-int/2addr v5, v6

    aget v6, v30, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 825
    .local v5, "skip":I
    const/4 v6, 0x2

    if-ge v5, v6, :cond_33

    .line 829
    if-nez v3, :cond_31

    const/4 v14, 0x1

    if-le v10, v14, :cond_31

    .line 830
    add-int/lit8 v14, v10, -0x1

    const/4 v15, 0x0

    invoke-virtual {v7, v9, v15, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 831
    :cond_31
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 832
    const-wide/16 v14, 0x1

    invoke-direct {v1, v2, v14, v15}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 833
    const/4 v14, 0x1

    if-lt v10, v14, :cond_32

    .line 835
    add-int/lit8 v14, v10, -0x1

    aget-byte v14, v9, v14

    const/4 v15, 0x0

    aput-byte v14, v9, v15

    .line 836
    aget-byte v14, v8, v15

    const/4 v15, 0x1

    aput-byte v14, v9, v15

    .line 837
    const/4 v10, 0x2

    move-object v15, v7

    const/4 v14, 0x0

    goto :goto_21

    .line 840
    :cond_32
    const/4 v14, 0x0

    aget-byte v15, v8, v14

    aput-byte v15, v9, v14

    .line 841
    const/4 v10, 0x1

    move-object v15, v7

    const/4 v14, 0x0

    goto :goto_21

    .line 846
    :cond_33
    if-lez v10, :cond_34

    if-nez v3, :cond_34

    .line 847
    const/4 v14, 0x0

    invoke-virtual {v7, v9, v14, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_20

    .line 846
    :cond_34
    const/4 v14, 0x0

    .line 849
    :goto_20
    move v10, v5

    .line 850
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 851
    move-object v15, v7

    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .local v15, "buf":Ljava/io/ByteArrayOutputStream;
    int-to-long v6, v10

    invoke-direct {v1, v2, v6, v7}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_d
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 853
    move-object v6, v8

    .line 854
    .local v6, "tmp":[B
    move-object v7, v9

    .line 855
    .end local v8    # "inbuf":[B
    .local v7, "inbuf":[B
    move-object v9, v8

    move-object v8, v7

    .line 857
    .end local v6    # "tmp":[B
    .end local v7    # "inbuf":[B
    .restart local v8    # "inbuf":[B
    :goto_21
    const/16 v22, 0x0

    .line 858
    .end local v4    # "i":I
    .end local v5    # "skip":I
    move-object v14, v0

    move/from16 v23, v11

    move-object v7, v15

    move-object/from16 v11, v27

    move-object/from16 v12, v29

    move-object/from16 v4, v30

    move-object/from16 v15, v31

    move-object/from16 v0, v32

    move-wide/from16 v5, v36

    goto/16 :goto_11

    .line 881
    .end local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v8    # "inbuf":[B
    .end local v9    # "previnbuf":[B
    .end local v10    # "prevSize":I
    .end local v11    # "inSize":I
    .end local v12    # "eolLen":I
    .end local v13    # "bl":I
    .end local v15    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "done":Z
    .end local v22    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v29    # "line":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v32    # "bndbytes":[B
    :catchall_b
    move-exception v0

    move-object v8, v0

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    move-wide/from16 v4, v36

    goto/16 :goto_25

    .line 878
    :catch_d
    move-exception v0

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    move-wide/from16 v4, v36

    goto/16 :goto_24

    .line 881
    .end local v36    # "start":J
    .local v5, "start":J
    :catchall_c
    move-exception v0

    move-wide/from16 v36, v5

    move-object v8, v0

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    move-wide/from16 v4, v36

    .end local v5    # "start":J
    .restart local v36    # "start":J
    goto/16 :goto_25

    .line 878
    .end local v36    # "start":J
    .restart local v5    # "start":J
    :catch_e
    move-exception v0

    move-wide/from16 v36, v5

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    move-wide/from16 v4, v36

    .end local v5    # "start":J
    .restart local v36    # "start":J
    goto/16 :goto_24

    .line 881
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v36    # "start":J
    .restart local v5    # "start":J
    .local v9, "boundary":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-wide/from16 v36, v5

    move-object/from16 v25, v9

    move-object v8, v0

    move-wide/from16 v6, v20

    move-wide/from16 v4, v36

    .end local v5    # "start":J
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v36    # "start":J
    goto/16 :goto_25

    .line 878
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v36    # "start":J
    .restart local v5    # "start":J
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-wide/from16 v36, v5

    move-object/from16 v25, v9

    move-wide/from16 v6, v20

    move-wide/from16 v4, v36

    .end local v5    # "start":J
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v36    # "start":J
    goto/16 :goto_24

    .line 720
    .end local v20    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v36    # "start":J
    .local v0, "bndbytes":[B
    .local v4, "gss":[I
    .restart local v5    # "start":J
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    .local v10, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v11, "preamblesb":Ljava/lang/StringBuilder;
    .local v12, "line":Ljava/lang/String;
    .restart local v13    # "bl":I
    .restart local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .local v15, "bcs":[I
    .restart local v19    # "done":Z
    .local v22, "end":J
    :cond_35
    move-object/from16 v32, v0

    move-object/from16 v30, v4

    move-wide/from16 v36, v5

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v29, v12

    move-object v0, v14

    move-object/from16 v31, v15

    .end local v4    # "gss":[I
    .end local v5    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v15    # "bcs":[I
    .local v0, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v29    # "line":Ljava/lang/String;
    .restart local v30    # "gss":[I
    .restart local v31    # "bcs":[I
    .restart local v32    # "bndbytes":[B
    .restart local v36    # "start":J
    :try_start_23
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Stream doesn\'t support mark"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v22    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v36    # "start":J
    throw v4
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_10
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 881
    .end local v0    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v13    # "bl":I
    .end local v19    # "done":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v29    # "line":Ljava/lang/String;
    .end local v30    # "gss":[I
    .end local v31    # "bcs":[I
    .end local v32    # "bndbytes":[B
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v22    # "end":J
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v36    # "start":J
    :catchall_e
    move-exception v0

    move-object v8, v0

    move-wide/from16 v6, v22

    move-object/from16 v9, v25

    move-wide/from16 v4, v36

    goto/16 :goto_25

    .line 878
    :catch_10
    move-exception v0

    move-wide/from16 v6, v22

    move-object/from16 v9, v25

    move-wide/from16 v4, v36

    goto/16 :goto_24

    .line 881
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v36    # "start":J
    .restart local v5    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-wide/from16 v36, v5

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v8, v0

    move-wide/from16 v6, v22

    move-wide/from16 v4, v36

    .end local v5    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v36    # "start":J
    goto/16 :goto_25

    .line 878
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v36    # "start":J
    .restart local v5    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_11
    move-exception v0

    move-wide/from16 v36, v5

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-wide/from16 v6, v22

    move-wide/from16 v4, v36

    .end local v5    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v36    # "start":J
    goto/16 :goto_24

    .line 699
    .end local v22    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v36    # "start":J
    .local v0, "bndbytes":[B
    .restart local v4    # "gss":[I
    .local v5, "done":Z
    .local v6, "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "bl":I
    .restart local v15    # "bcs":[I
    .local v20, "start":J
    :cond_36
    move-object/from16 v32, v0

    move-object/from16 v30, v4

    move/from16 v19, v5

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v31, v15

    .line 882
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v5    # "done":Z
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuilder;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "bl":I
    .end local v15    # "bcs":[I
    .restart local v22    # "end":J
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    :goto_22
    :try_start_24
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_12
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    .line 885
    goto :goto_23

    .line 883
    :catch_12
    move-exception v0

    .line 886
    nop

    .line 888
    :goto_23
    const/4 v4, 0x1

    :try_start_25
    iput-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    .line 889
    monitor-exit p0

    return-void

    .line 881
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v8, v0

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto :goto_25

    .line 878
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_13
    move-exception v0

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto :goto_24

    .line 881
    .end local v22    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catchall_11
    move-exception v0

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v8, v0

    move-wide/from16 v4, v20

    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v22    # "end":J
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto :goto_25

    .line 878
    .end local v22    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_14
    move-exception v0

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-wide/from16 v4, v20

    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v22    # "end":J
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto :goto_24

    .line 881
    .end local v20    # "start":J
    .end local v22    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .local v4, "start":J
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catchall_12
    move-exception v0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object v8, v0

    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v20    # "start":J
    .restart local v22    # "end":J
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto :goto_25

    .line 878
    .end local v20    # "start":J
    .end local v22    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v20    # "start":J
    .restart local v22    # "end":J
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto :goto_24

    .line 881
    .end local v20    # "start":J
    .end local v22    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catchall_13
    move-exception v0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    move-object v8, v0

    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v20    # "start":J
    .restart local v22    # "end":J
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    goto :goto_25

    .line 878
    .end local v20    # "start":J
    .end local v22    # "end":J
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    :catch_16
    move-exception v0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-object/from16 v24, v8

    .line 879
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .local v0, "ioex":Ljava/io/IOException;
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    :goto_24
    :try_start_26
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v10, "IO Error"

    invoke-direct {v8, v10, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    throw v8
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    .line 881
    .end local v0    # "ioex":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v24    # "cType":Ljavax/mail/internet/ContentType;
    :catchall_14
    move-exception v0

    move-object v8, v0

    .line 882
    :goto_25
    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_17
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    .line 885
    goto :goto_26

    .line 883
    :catch_17
    move-exception v0

    .line 886
    :goto_26
    :try_start_28
    throw v8

    .line 575
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v24    # "cType":Ljavax/mail/internet/ContentType;
    :catch_18
    move-exception v0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    .line 576
    .end local v4    # "start":J
    .end local v6    # "end":J
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v20    # "start":J
    .restart local v22    # "end":J
    :goto_27
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "No inputstream from datasource"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_15

    .line 559
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v20    # "start":J
    .end local v22    # "end":J
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBodyPart(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 384
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    .line 385
    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 366
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .locals 0
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 473
    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 472
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "preamble":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 299
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "subtype":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 496
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 498
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    .end local v0    # "i":I
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_0
    monitor-exit p0

    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 508
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    .line 511
    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 515
    .local v1, "los":Lcom/sun/mail/util/LineOutputStream;
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 516
    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 517
    .local v2, "pb":[B
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 519
    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 521
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 526
    .end local v2    # "pb":[B
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_0
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 527
    iget-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    if-eqz v2, :cond_1

    .line 529
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    goto :goto_1

    .line 532
    :cond_1
    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty multipart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 535
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 536
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 537
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 538
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v2    # "i":I
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    .line 507
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "los":Lcom/sun/mail/util/LineOutputStream;
    .end local p1    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
