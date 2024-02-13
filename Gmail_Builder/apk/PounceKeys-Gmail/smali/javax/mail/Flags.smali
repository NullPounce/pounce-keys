.class public Ljavax/mail/Flags;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Flags$Flag;
    }
.end annotation


# static fields
.field private static final ANSWERED_BIT:I = 0x1

.field private static final DELETED_BIT:I = 0x2

.field private static final DRAFT_BIT:I = 0x4

.field private static final FLAGGED_BIT:I = 0x8

.field private static final RECENT_BIT:I = 0x10

.field private static final SEEN_BIT:I = 0x20

.field private static final USER_BIT:I = -0x80000000

.field private static final serialVersionUID:J = 0x56a5b06539097bc4L


# instance fields
.field private system_flags:I

.field private user_flags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 194
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 195
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags$Flag;)V
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 185
    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 186
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags;)V
    .locals 1
    .param p1, "flags"    # Ljavax/mail/Flags;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 174
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 175
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 215
    :cond_0
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public add(Ljavax/mail/Flags$Flag;)V
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;

    .line 204
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 205
    return-void
.end method

.method public add(Ljavax/mail/Flags;)V
    .locals 4
    .param p1, "f"    # Ljavax/mail/Flags;

    .line 225
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 227
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 231
    :cond_0
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 233
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    iget-object v3, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public clearSystemFlags()V
    .locals 1

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 467
    return-void
.end method

.method public clearUserFlags()V
    .locals 1

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 476
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 484
    const/4 v0, 0x0

    .line 486
    .local v0, "f":Ljavax/mail/Flags;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Flags;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 489
    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    .line 490
    :goto_0
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 492
    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljavax/mail/Flags$Flag;)Z
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;

    .line 324
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljavax/mail/Flags;)Z
    .locals 4
    .param p1, "f"    # Ljavax/mail/Flags;

    .line 350
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 351
    return v2

    .line 354
    :cond_0
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    .line 355
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 356
    return v2

    .line 357
    :cond_1
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 359
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 361
    return v2

    .line 366
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 376
    instance-of v0, p1, Ljavax/mail/Flags;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 377
    return v1

    .line 379
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/Flags;

    .line 382
    .local v0, "f":Ljavax/mail/Flags;
    iget v2, v0, Ljavax/mail/Flags;->system_flags:I

    iget v3, p0, Ljavax/mail/Flags;->system_flags:I

    if-eq v2, v3, :cond_1

    .line 383
    return v1

    .line 386
    :cond_1
    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    .line 387
    .local v2, "size":I
    :goto_0
    iget-object v3, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    .line 388
    .local v3, "fsize":I
    :goto_1
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 389
    const/4 v1, 0x1

    return v1

    .line 390
    :cond_4
    iget-object v4, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v4, :cond_5

    iget-object v4, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v4, :cond_5

    if-ne v3, v2, :cond_5

    .line 391
    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v4, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 393
    :cond_5
    return v1
.end method

.method public getSystemFlags()[Ljavax/mail/Flags$Flag;
    .locals 3

    .line 419
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 420
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljavax/mail/Flags$Flag;>;"
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 421
    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 422
    :cond_0
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 423
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 424
    :cond_1
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 425
    sget-object v1, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 426
    :cond_2
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 427
    sget-object v1, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 428
    :cond_3
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 429
    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 430
    :cond_4
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 431
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 432
    :cond_5
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 433
    sget-object v1, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 435
    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Flags$Flag;

    .line 436
    .local v1, "f":[Ljavax/mail/Flags$Flag;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 437
    return-object v1
.end method

.method public getUserFlags()[Ljava/lang/String;
    .locals 3

    .line 447
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 448
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 451
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 456
    .local v1, "f":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 457
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 403
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 404
    .local v0, "hash":I
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 406
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 409
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 255
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 256
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_0
    return-void
.end method

.method public remove(Ljavax/mail/Flags$Flag;)V
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;

    .line 246
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$000(Ljavax/mail/Flags$Flag;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 247
    return-void
.end method

.method public remove(Ljavax/mail/Flags;)V
    .locals 3
    .param p1, "f"    # Ljavax/mail/Flags;

    .line 266
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 268
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 273
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public retainAll(Ljavax/mail/Flags;)Z
    .locals 5
    .param p1, "f"    # Ljavax/mail/Flags;

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "changed":Z
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    iget v2, p1, Ljavax/mail/Flags;->system_flags:I

    and-int/2addr v2, v1

    .line 291
    .local v2, "sf":I
    if-eq v1, v2, :cond_0

    .line 292
    iput v2, p0, Ljavax/mail/Flags;->system_flags:I

    .line 293
    const/4 v0, 0x1

    .line 298
    :cond_0
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_5

    iget v3, p1, Ljavax/mail/Flags;->system_flags:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 299
    iget-object v3, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v3, :cond_3

    .line 300
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 301
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 304
    iget-object v4, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const/4 v0, 0x1

    .line 307
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 308
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    goto :goto_2

    .line 310
    :cond_3
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 314
    :cond_5
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 503
    const-string v1, "\\Answered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_0
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 505
    const-string v1, "\\Deleted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_1
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 507
    const-string v1, "\\Draft "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_2
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 509
    const-string v1, "\\Flagged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_3
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 511
    const-string v1, "\\Recent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_4
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 513
    const-string v1, "\\Seen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_5
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 515
    const-string v1, "\\* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_6
    const/4 v1, 0x1

    .line 518
    .local v1, "first":Z
    iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v3, :cond_8

    .line 519
    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 521
    .local v3, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 522
    if-eqz v1, :cond_7

    .line 523
    const/4 v1, 0x0

    goto :goto_1

    .line 525
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 530
    .end local v3    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 533
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
