.class public Lcom/sun/mail/util/logging/CollectorFormatter;
.super Ljava/util/logging/Formatter;
.source "CollectorFormatter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INIT_TIME:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private count:J

.field private final fmt:Ljava/lang/String;

.field private final formatter:Ljava/util/logging/Formatter;

.field private generation:J

.field private last:Ljava/util/logging/LogRecord;

.field private maxMillis:J

.field private minMillis:J

.field private thrown:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    nop

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 100
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 108
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 112
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 125
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 126
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 100
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 108
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 112
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "p":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 141
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 142
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/logging/Formatter;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/logging/Formatter;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 100
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 108
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 112
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "p":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 163
    iput-object p3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    .line 164
    return-void
.end method

.method private declared-synchronized accept(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z
    .locals 8
    .param p1, "e"    # Ljava/util/logging/LogRecord;
    .param p2, "u"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 362
    :try_start_0
    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v0

    .line 363
    .local v0, "millis":J
    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v2

    .line 364
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    if-ne v3, p1, :cond_2

    .line 365
    iget-wide v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 366
    iget-wide v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    goto :goto_0

    .line 368
    .end local p0    # "this":Lcom/sun/mail/util/logging/CollectorFormatter;
    :cond_0
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 370
    :goto_0
    iget-wide v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 372
    if-eqz v2, :cond_1

    .line 373
    iget-wide v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_1
    monitor-exit p0

    const/4 v3, 0x1

    return v3

    .line 377
    :cond_2
    monitor-exit p0

    const/4 v3, 0x0

    return v3

    .line 361
    .end local v0    # "millis":J
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local p1    # "e":Ljava/util/logging/LogRecord;
    .end local p2    # "u":Ljava/util/logging/LogRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized acceptAndUpdate(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "e"    # Ljava/util/logging/LogRecord;
    .param p2, "u"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 499
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/CollectorFormatter;->accept(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iput-object p2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 503
    .end local p0    # "this":Lcom/sun/mail/util/logging/CollectorFormatter;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 498
    .end local p1    # "e":Ljava/util/logging/LogRecord;
    .end local p2    # "u":Ljava/util/logging/LogRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;
    .locals 25
    .param p1, "h"    # Ljava/util/logging/Handler;
    .param p2, "reset"    # Z

    .line 414
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    move-object v3, v0

    .line 416
    .local v3, "record":Ljava/util/logging/LogRecord;
    iget-wide v4, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    .line 417
    .local v4, "c":J
    iget-wide v6, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 418
    .local v6, "g":J
    iget-wide v8, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    .line 419
    .local v8, "t":J
    iget-wide v10, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 420
    .local v10, "msl":J
    iget-wide v12, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 421
    .local v12, "msh":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 422
    .local v14, "now":J
    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-nez v0, :cond_0

    .line 423
    move-wide v12, v14

    .line 426
    :cond_0
    if-eqz p2, :cond_1

    .line 427
    invoke-direct {v1, v12, v13}, Lcom/sun/mail/util/logging/CollectorFormatter;->reset(J)V

    .line 429
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 434
    move-wide/from16 v16, v6

    .end local v6    # "g":J
    .local v16, "g":J
    iget-object v6, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 435
    .local v6, "f":Ljava/util/logging/Formatter;
    if-eqz v6, :cond_3

    .line 436
    monitor-enter v6

    .line 437
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "head":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const-string v7, ""

    .line 439
    .local v7, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v2}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v18

    .line 440
    .local v18, "tail":Ljava/lang/String;
    monitor-exit v6

    move-object/from16 v2, v18

    goto :goto_2

    .end local v0    # "head":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v18    # "tail":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 442
    :cond_3
    const-string v0, ""

    .line 443
    .restart local v0    # "head":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    const-string v7, ""

    .line 444
    .restart local v7    # "msg":Ljava/lang/String;
    :goto_1
    const-string v18, ""

    move-object/from16 v2, v18

    .line 447
    .local v2, "tail":Ljava/lang/String;
    :goto_2
    const/16 v18, 0x0

    .line 448
    .local v18, "l":Ljava/util/Locale;
    if-eqz v3, :cond_6

    .line 449
    invoke-virtual {v3}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v19

    .line 450
    .local v19, "rb":Ljava/util/ResourceBundle;
    if-nez v19, :cond_5

    const/16 v20, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v20

    :goto_3
    move-object/from16 v18, v20

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    goto :goto_4

    .line 448
    .end local v19    # "rb":Ljava/util/ResourceBundle;
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v3, v18

    .line 454
    .end local v18    # "l":Ljava/util/Locale;
    .local v3, "l":Ljava/util/Locale;
    .local v19, "record":Ljava/util/logging/LogRecord;
    :goto_4
    if-nez v3, :cond_7

    .line 455
    move-wide/from16 v20, v14

    .end local v14    # "now":J
    .local v20, "now":J
    new-instance v14, Ljava/text/MessageFormat;

    iget-object v15, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .local v14, "mf":Ljava/text/MessageFormat;
    goto :goto_5

    .line 457
    .end local v20    # "now":J
    .local v14, "now":J
    :cond_7
    move-wide/from16 v20, v14

    .end local v14    # "now":J
    .restart local v20    # "now":J
    new-instance v14, Ljava/text/MessageFormat;

    iget-object v15, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    invoke-direct {v14, v15, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 463
    .local v14, "mf":Ljava/text/MessageFormat;
    :goto_5
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x1

    invoke-virtual {v1, v7}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v18

    .line 464
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v22, 0x3

    aput-object v18, v15, v22

    const-wide/16 v22, 0x1

    sub-long v22, v4, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v22, 0x4

    aput-object v18, v15, v22

    const/16 v18, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    sub-long v22, v4, v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v22, 0x6

    aput-object v18, v15, v22

    const/16 v18, 0x7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    sub-long v22, v12, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v22, 0x9

    aput-object v18, v15, v22

    sget-wide v22, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v24, 0xa

    aput-object v18, v15, v24

    const/16 v18, 0xb

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v15, v18

    sub-long v22, v20, v22

    .line 465
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v22, 0xc

    aput-object v18, v15, v22

    const/16 v18, 0xd

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    .line 463
    invoke-virtual {v14, v15}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 429
    .end local v0    # "head":Ljava/lang/String;
    .end local v2    # "tail":Ljava/lang/String;
    .end local v3    # "l":Ljava/util/Locale;
    .end local v4    # "c":J
    .end local v6    # "f":Ljava/util/logging/Formatter;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "t":J
    .end local v10    # "msl":J
    .end local v12    # "msh":J
    .end local v14    # "mf":Ljava/text/MessageFormat;
    .end local v16    # "g":J
    .end local v19    # "record":Ljava/util/logging/LogRecord;
    .end local v20    # "now":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private initComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 4
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .line 569
    const-string v0, ".comparator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".comparator.reverse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "reverse":Ljava/lang/String;
    const-string v2, "No comparator to reverse."

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 573
    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 574
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v2

    .line 575
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 576
    if-eqz v2, :cond_0

    .line 577
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 576
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "reverse":Ljava/lang/String;
    .end local p1    # "p":Ljava/lang/String;
    throw v3

    .line 580
    .end local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "reverse":Ljava/lang/String;
    .restart local p1    # "p":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 584
    const/4 v2, 0x0

    .restart local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    goto :goto_0

    .line 581
    .end local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "reverse":Ljava/lang/String;
    .end local p1    # "p":Ljava/lang/String;
    throw v3

    .line 598
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "reverse":Ljava/lang/String;
    .restart local p1    # "p":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 596
    :catch_1
    move-exception v2

    goto :goto_2

    .line 588
    :cond_3
    if-nez v1, :cond_5

    .line 593
    const-class v2, Ljava/util/Comparator;

    invoke-static {}, Lcom/sun/mail/util/logging/SeverityComparator;->getInstance()Lcom/sun/mail/util/logging/SeverityComparator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;

    .line 600
    .restart local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_4
    :goto_0
    nop

    .line 601
    return-object v2

    .line 589
    .end local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "reverse":Ljava/lang/String;
    .end local p1    # "p":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "reverse":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    .restart local p1    # "p":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v3, v2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 597
    .local v2, "re":Ljava/lang/RuntimeException;
    :goto_2
    throw v2
.end method

.method private initFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .line 516
    const-string v0, ".format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 518
    :cond_0
    const-string/jumbo v0, "{0}{1}{2}{4,choice,-1#|0#|0<... {4,number,integer} more}\n"

    .line 520
    :cond_1
    return-object v0
.end method

.method private initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 534
    const-string v0, ".formatter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    :try_start_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .local v1, "f":Ljava/util/logging/Formatter;
    goto :goto_0

    .line 541
    .end local v1    # "f":Ljava/util/logging/Formatter;
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v2, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 539
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 540
    .local v1, "re":Ljava/lang/RuntimeException;
    throw v1

    .line 545
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v1, 0x0

    .local v1, "f":Ljava/util/logging/Formatter;
    goto :goto_0

    .line 549
    .end local v1    # "f":Ljava/util/logging/Formatter;
    :cond_1
    const-class v1, Ljava/util/logging/Formatter;

    new-instance v2, Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-direct {v2}, Lcom/sun/mail/util/logging/CompactFormatter;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Formatter;

    .line 551
    .restart local v1    # "f":Ljava/util/logging/Formatter;
    :goto_0
    return-object v1
.end method

.method private declared-synchronized peek()Ljava/util/logging/LogRecord;
    .locals 1

    monitor-enter p0

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 486
    .end local p0    # "this":Lcom/sun/mail/util/logging/CollectorFormatter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reset(J)V
    .locals 4
    .param p1, "min"    # J

    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    .line 388
    iget-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 391
    .end local p0    # "this":Lcom/sun/mail/util/logging/CollectorFormatter;
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    .line 392
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    .line 393
    iput-wide p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 394
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 385
    .end local p1    # "min":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected apply(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Ljava/util/logging/LogRecord;
    .locals 1
    .param p1, "t"    # Ljava/util/logging/LogRecord;
    .param p2, "u"    # Ljava/util/logging/LogRecord;

    .line 336
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 340
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 341
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 343
    :cond_1
    return-object p2

    .line 337
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected finish(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 177
    if-eqz p1, :cond_3

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/CollectorFormatter;->peek()Ljava/util/logging/LogRecord;

    move-result-object v0

    .line 185
    .local v0, "peek":Ljava/util/logging/LogRecord;
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/sun/mail/util/logging/CollectorFormatter;->apply(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Ljava/util/logging/LogRecord;

    move-result-object v1

    .line 186
    .local v1, "update":Ljava/util/logging/LogRecord;
    if-eq v0, v1, :cond_2

    .line 187
    invoke-virtual {v1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    .line 188
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/CollectorFormatter;->acceptAndUpdate(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z

    move-result v2

    .local v2, "accepted":Z
    goto :goto_1

    .line 190
    .end local v2    # "accepted":Z
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/logging/CollectorFormatter;->accept(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z

    move-result v2

    .line 192
    .end local v0    # "peek":Ljava/util/logging/LogRecord;
    .end local v1    # "update":Ljava/util/logging/LogRecord;
    .restart local v2    # "accepted":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 193
    const-string v0, ""

    return-object v0

    .line 178
    .end local v2    # "accepted":Z
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 304
    invoke-super {p0, p1}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    .line 305
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 319
    const/4 v0, 0x0

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/util/logging/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 320
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "ignore":Ljava/lang/RuntimeException;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 323
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0
.end method
