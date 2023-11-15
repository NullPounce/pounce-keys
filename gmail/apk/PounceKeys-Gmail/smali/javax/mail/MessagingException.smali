.class public Ljavax/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field private static final serialVersionUID:J = -0x690b2c48c7581fd5L


# instance fields
.field private next:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p2, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 72
    return-void
.end method

.method private final superToString()Ljava/lang/String;
    .locals 1

    .line 150
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 93
    .end local p0    # "this":Ljavax/mail/MessagingException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextException()Ljava/lang/Exception;
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 82
    .end local p0    # "this":Ljavax/mail/MessagingException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNextException(Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    monitor-enter p0

    .line 106
    move-object v0, p0

    .line 107
    .local v0, "theEnd":Ljava/lang/Exception;
    :goto_0
    :try_start_0
    instance-of v1, v0, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljavax/mail/MessagingException;

    iget-object v1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 109
    move-object v1, v0

    check-cast v1, Ljavax/mail/MessagingException;

    iget-object v1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    move-object v0, v1

    goto :goto_0

    .line 113
    .end local p0    # "this":Ljavax/mail/MessagingException;
    :cond_0
    instance-of v1, v0, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_1

    .line 114
    move-object v1, v0

    check-cast v1, Ljavax/mail/MessagingException;

    iput-object p1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 117
    :cond_1
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 105
    .end local v0    # "theEnd":Ljava/lang/Exception;
    .end local p1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .local v1, "n":Ljava/lang/Exception;
    if-nez v1, :cond_0

    .line 129
    monitor-exit p0

    return-object v0

    .line 130
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v3, ""

    goto :goto_0

    .end local p0    # "this":Ljavax/mail/MessagingException;
    :cond_1
    move-object v3, v0

    :goto_0
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_1
    if-eqz v1, :cond_3

    .line 132
    const-string v3, ";\n  nested exception is:\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    instance-of v3, v1, Ljavax/mail/MessagingException;

    if-eqz v3, :cond_2

    .line 134
    move-object v3, v1

    check-cast v3, Ljavax/mail/MessagingException;

    .line 135
    .local v3, "mex":Ljavax/mail/MessagingException;
    invoke-direct {v3}, Ljavax/mail/MessagingException;->superToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v4, v3, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    move-object v1, v4

    .line 137
    .end local v3    # "mex":Ljavax/mail/MessagingException;
    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v1, 0x0

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 125
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "n":Ljava/lang/Exception;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
