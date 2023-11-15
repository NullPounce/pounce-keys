.class public Lcom/sun/mail/imap/Rights;
.super Ljava/lang/Object;
.source "Rights.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Rights$Right;
    }
.end annotation


# instance fields
.field private rights:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 175
    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights;)V
    .locals 4
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 156
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rights"    # Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/Rights;->add(Lcom/sun/mail/imap/Rights$Right;)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 184
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 185
    return-void
.end method

.method public add(Lcom/sun/mail/imap/Rights;)V
    .locals 3
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 195
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "r":Lcom/sun/mail/imap/Rights;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/Rights;

    move-object v0, v1

    .line 302
    const/16 v1, 0x80

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 303
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 307
    :goto_0
    return-object v0
.end method

.method public contains(Lcom/sun/mail/imap/Rights$Right;)Z
    .locals 2
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 227
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    aget-boolean v0, v0, v1

    return v0
.end method

.method public contains(Lcom/sun/mail/imap/Rights;)Z
    .locals 3
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 240
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 241
    const/4 v1, 0x0

    return v1

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 254
    instance-of v0, p1, Lcom/sun/mail/imap/Rights;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 255
    return v1

    .line 257
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/Rights;

    .line 259
    .local v0, "rights":Lcom/sun/mail/imap/Rights;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 260
    aget-boolean v3, v3, v2

    iget-object v4, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v4, v4, v2

    if-eq v3, v4, :cond_1

    .line 261
    return v1

    .line 259
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public getRights()[Lcom/sun/mail/imap/Rights$Right;
    .locals 4

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/Rights$Right;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 289
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 290
    int-to-char v2, v1

    invoke-static {v2}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/Rights$Right;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/Rights$Right;

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 275
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 276
    add-int/lit8 v0, v0, 0x1

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public remove(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 205
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 206
    return-void
.end method

.method public remove(Lcom/sun/mail/imap/Rights;)V
    .locals 3
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 216
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 314
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 315
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
