.class public Ljavax/mail/FetchProfile;
.super Ljava/lang/Object;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/FetchProfile$Item;
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private specials:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/FetchProfile$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    .line 146
    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    .line 147
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    .line 173
    :cond_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public add(Ljavax/mail/FetchProfile$Item;)V
    .locals 1
    .param p1, "item"    # Ljavax/mail/FetchProfile$Item;

    .line 159
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    .line 161
    :cond_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljavax/mail/FetchProfile$Item;)Z
    .locals 1
    .param p1, "item"    # Ljavax/mail/FetchProfile$Item;

    .line 183
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeaderNames()[Ljava/lang/String;
    .locals 2

    .line 216
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 220
    .local v0, "s":[Ljava/lang/String;
    iget-object v1, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 221
    return-object v0
.end method

.method public getItems()[Ljavax/mail/FetchProfile$Item;
    .locals 2

    .line 202
    iget-object v0, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/FetchProfile$Item;

    return-object v0

    .line 205
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/FetchProfile$Item;

    .line 206
    .local v0, "s":[Ljavax/mail/FetchProfile$Item;
    iget-object v1, p0, Ljavax/mail/FetchProfile;->specials:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 207
    return-object v0
.end method
