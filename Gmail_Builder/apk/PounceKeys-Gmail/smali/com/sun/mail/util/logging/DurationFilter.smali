.class public Lcom/sun/mail/util/logging/DurationFilter;
.super Ljava/lang/Object;
.source "DurationFilter.java"

# interfaces
.implements Ljava/util/logging/Filter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private count:J

.field private final duration:J

.field private peak:J

.field private final records:J

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, ".records"

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/DurationFilter;->initLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->checkRecords(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    .line 99
    const-string v0, ".duration"

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/DurationFilter;->initLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->checkDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    .line 100
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "records"    # J
    .param p3, "duration"    # J

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1, p2}, Lcom/sun/mail/util/logging/DurationFilter;->checkRecords(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    .line 112
    invoke-static {p3, p4}, Lcom/sun/mail/util/logging/DurationFilter;->checkDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    .line 113
    return-void
.end method

.method private declared-synchronized accept(J)Z
    .locals 9
    .param p1, "millis"    # J

    monitor-enter p0

    .line 285
    :try_start_0
    iget-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    .line 286
    iget-wide v6, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    sub-long v6, p1, v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 287
    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    .line 291
    .end local p0    # "this":Lcom/sun/mail/util/logging/DurationFilter;
    :cond_0
    iget-wide v4, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 292
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 293
    const/4 v0, 0x1

    .local v0, "allow":Z
    goto :goto_1

    .line 295
    .end local v0    # "allow":Z
    :cond_1
    iget-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    iget-wide v4, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 296
    iput-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 297
    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 298
    const/4 v0, 0x1

    .restart local v0    # "allow":Z
    goto :goto_1

    .line 300
    .end local v0    # "allow":Z
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 301
    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 302
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_1

    .line 308
    .end local v0    # "allow":Z
    :cond_3
    iget-wide v6, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    sub-long v6, p1, v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_5

    cmp-long v6, v0, v4

    if-nez v6, :cond_4

    goto :goto_0

    .line 314
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_1

    .line 309
    .end local v0    # "allow":Z
    :cond_5
    :goto_0
    iput-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 310
    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 311
    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    const/4 v0, 0x1

    .line 317
    .restart local v0    # "allow":Z
    :goto_1
    monitor-exit p0

    return v0

    .line 284
    .end local v0    # "allow":Z
    .end local p1    # "millis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static checkDuration(J)J
    .locals 3
    .param p0, "duration"    # J

    .line 442
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xdbba0

    :goto_0
    return-wide v0
.end method

.method private static checkRecords(J)J
    .locals 3
    .param p0, "records"    # J

    .line 431
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    :goto_0
    return-wide v0
.end method

.method private initLong(Ljava/lang/String;)J
    .locals 11
    .param p1, "suffix"    # Ljava/lang/String;

    .line 330
    const-wide/16 v0, 0x0

    .line 331
    .local v0, "result":J
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-direct {p0, p1, v3}, Lcom/sun/mail/util/logging/DurationFilter;->isTimeEntry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    :try_start_0
    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->parseDurationToMillis(Ljava/lang/CharSequence;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 341
    :goto_0
    goto :goto_1

    .line 340
    :catch_0
    move-exception v4

    goto :goto_1

    .line 339
    :catch_1
    move-exception v4

    goto :goto_0

    .line 338
    :catch_2
    move-exception v4

    goto :goto_0

    .line 344
    :cond_0
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_5

    .line 346
    const-wide/16 v0, 0x1

    .line 347
    :try_start_1
    invoke-static {v3}, Lcom/sun/mail/util/logging/DurationFilter;->tokenizeLongs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    .line 348
    .local v8, "s":Ljava/lang/String;
    const-string v9, "L"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "l"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 349
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 351
    :cond_2
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v0, v1, v9, v10}, Lcom/sun/mail/util/logging/DurationFilter;->multiplyExact(JJ)J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-wide v0, v9

    .line 347
    .end local v8    # "s":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 353
    :catch_3
    move-exception v4

    .line 354
    .local v4, "ignore":Ljava/lang/RuntimeException;
    const-wide/high16 v0, -0x8000000000000000L

    .line 355
    .end local v4    # "ignore":Ljava/lang/RuntimeException;
    :cond_3
    goto :goto_3

    .line 358
    :cond_4
    const-wide/high16 v0, -0x8000000000000000L

    .line 360
    :cond_5
    :goto_3
    return-wide v0
.end method

.method private isTimeEntry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 375
    :cond_0
    const-string v1, ".duration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 374
    :goto_0
    return v0
.end method

.method private static multiplyExact(JJ)J
    .locals 7
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 413
    mul-long v0, p0, p2

    .line 414
    .local v0, "r":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    or-long/2addr v2, v4

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 415
    cmp-long v2, p2, v4

    if-eqz v2, :cond_0

    div-long v2, v0, p2

    cmp-long v4, v2, p0

    if-nez v4, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p0, v2

    if-nez v4, :cond_2

    const-wide/16 v2, -0x1

    cmp-long v4, p2, v2

    if-eqz v4, :cond_1

    goto :goto_0

    .line 417
    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    invoke-direct {v2}, Ljava/lang/ArithmeticException;-><init>()V

    throw v2

    .line 420
    :cond_2
    :goto_0
    return-wide v0
.end method

.method private test(JJ)Z
    .locals 10
    .param p1, "limit"    # J
    .param p3, "millis"    # J

    .line 256
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 261
    .local v2, "c":J
    iget-wide v4, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 262
    .local v4, "s":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    const/4 v6, 0x1

    cmp-long v7, v2, v0

    if-lez v7, :cond_1

    .line 265
    sub-long v0, p3, v4

    iget-wide v7, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    cmp-long v9, v0, v7

    if-gez v9, :cond_0

    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    .line 266
    :cond_0
    return v6

    .line 269
    :cond_1
    sub-long v7, p3, v4

    cmp-long v9, v7, v0

    if-gez v9, :cond_3

    cmp-long v7, v2, v0

    if-nez v7, :cond_2

    goto :goto_0

    .line 273
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_3
    :goto_0
    return v6

    .line 262
    .end local v2    # "c":J
    .end local v4    # "s":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 256
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1, p2}, Ljava/lang/AssertionError;-><init>(J)V

    throw v0
.end method

.method private static tokenizeLongs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 388
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 389
    .local v1, "i":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    const-string v2, "\\s*\\*\\s*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "e":[Ljava/lang/String;
    array-length v2, v2

    if-eqz v2, :cond_2

    .line 390
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_1

    .line 394
    array-length v0, v3

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    .end local v3    # "e":[Ljava/lang/String;
    :cond_2
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 400
    .restart local v3    # "e":[Ljava/lang/String;
    :goto_0
    return-object v3
.end method


# virtual methods
.method protected clone()Lcom/sun/mail/util/logging/DurationFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 241
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/util/logging/DurationFilter;

    .line 242
    .local v0, "clone":Lcom/sun/mail/util/logging/DurationFilter;
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 243
    iput-wide v1, v0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    .line 244
    iput-wide v1, v0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 245
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/DurationFilter;->clone()Lcom/sun/mail/util/logging/DurationFilter;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 124
    return v0

    .line 127
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/sun/mail/util/logging/DurationFilter;

    .line 132
    .local v2, "other":Lcom/sun/mail/util/logging/DurationFilter;
    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    iget-wide v5, v2, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 133
    return v1

    .line 136
    :cond_2
    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    iget-wide v5, v2, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 137
    return v1

    .line 143
    :cond_3
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 145
    .local v3, "c":J
    iget-wide v5, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    .line 146
    .local v5, "p":J
    iget-wide v7, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 147
    .local v7, "s":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    monitor-enter v2

    .line 150
    :try_start_1
    iget-wide v9, v2, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    cmp-long v11, v3, v9

    if-nez v11, :cond_5

    iget-wide v9, v2, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    cmp-long v11, v5, v9

    if-nez v11, :cond_5

    iget-wide v9, v2, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    cmp-long v11, v7, v9

    if-eqz v11, :cond_4

    goto :goto_0

    .line 153
    :cond_4
    monitor-exit v2

    .line 154
    return v0

    .line 151
    :cond_5
    :goto_0
    monitor-exit v2

    return v1

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 147
    .end local v3    # "c":J
    .end local v5    # "p":J
    .end local v7    # "s":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 128
    .end local v2    # "other":Lcom/sun/mail/util/logging/DurationFilter;
    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 176
    const/4 v0, 0x3

    .line 177
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x59

    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 178
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x59

    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 179
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public isIdle()Z
    .locals 4

    .line 166
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/mail/util/logging/DurationFilter;->test(JJ)Z

    move-result v0

    return v0
.end method

.method public isLoggable()Z
    .locals 4

    .line 204
    iget-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/mail/util/logging/DurationFilter;->test(JJ)Z

    move-result v0

    return v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 192
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->accept(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 220
    .local v0, "millis":J
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->test(JJ)Z

    move-result v2

    .line 221
    .local v2, "idle":Z
    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->test(JJ)Z

    move-result v3

    move v0, v3

    .line 222
    .local v0, "loggable":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "{records="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", duration="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", idle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", loggable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    .end local v0    # "loggable":Z
    .end local v2    # "idle":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
