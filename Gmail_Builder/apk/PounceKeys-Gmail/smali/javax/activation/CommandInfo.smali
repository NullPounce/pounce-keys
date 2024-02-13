.class public Ljavax/activation/CommandInfo;
.super Ljava/lang/Object;
.source "CommandInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/activation/CommandInfo$Beans;
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private verb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "verb"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getCommandClass()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandObject(Ljavax/activation/DataHandler;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 4
    .param p1, "dh"    # Ljavax/activation/DataHandler;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, "new_bean":Ljava/lang/Object;
    iget-object v1, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    invoke-static {p2, v1}, Ljavax/activation/CommandInfo$Beans;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    instance-of v1, v0, Ljavax/activation/CommandObject;

    if-eqz v1, :cond_0

    .line 119
    move-object v1, v0

    check-cast v1, Ljavax/activation/CommandObject;

    iget-object v2, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljavax/activation/CommandObject;->setCommandContext(Ljava/lang/String;Ljavax/activation/DataHandler;)V

    goto :goto_0

    .line 120
    :cond_0
    instance-of v1, v0, Ljava/io/Externalizable;

    if-eqz v1, :cond_1

    .line 121
    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 123
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 124
    move-object v2, v0

    check-cast v2, Ljava/io/Externalizable;

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    .line 131
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v0
.end method
