.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 171
    const-string v0, "()<>@,;:\\\"\t .[]"

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "skipComments"    # Z

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 147
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 148
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 149
    const/4 v1, 0x0

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 151
    return-void
.end method

.method private collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 7
    .param p1, "eos"    # C
    .param p2, "keepEscapes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "filter":Z
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v1, "start":I
    :goto_0
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    const/4 v4, -0x2

    const/16 v5, 0x22

    if-ge v2, v3, :cond_5

    .line 363
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 364
    .local v2, "c":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 365
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 366
    const/4 v0, 0x1

    goto :goto_2

    .line 367
    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 368
    const/4 v0, 0x1

    goto :goto_2

    .line 369
    :cond_1
    if-ne v2, p1, :cond_4

    .line 370
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 373
    if-eqz v0, :cond_2

    .line 374
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-static {v6, v1, v3, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    goto :goto_1

    .line 376
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 378
    .restart local v3    # "s":Ljava/lang/String;
    :goto_1
    if-eq v2, v5, :cond_3

    .line 379
    invoke-static {v3}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 383
    :cond_3
    new-instance v5, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {v5, v4, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v5

    .line 362
    .end local v2    # "c":C
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    :goto_2
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0

    .line 390
    :cond_5
    if-eq p1, v5, :cond_7

    .line 395
    if-eqz v0, :cond_6

    .line 396
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-static {v3, v1, v2, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "s":Ljava/lang/String;
    goto :goto_3

    .line 398
    .end local v2    # "s":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 399
    .restart local v2    # "s":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {v3, v4, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 391
    .end local v2    # "s":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljavax/mail/internet/ParseException;

    const-string v3, "Unbalanced quoted string"

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "keepEscapes"    # Z

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 436
    .local v1, "gotEscape":Z
    const/4 v2, 0x0

    .line 438
    .local v2, "gotCR":Z
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_5

    .line 439
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 440
    .local v4, "c":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    if-eqz v2, :cond_0

    .line 443
    const/4 v2, 0x0

    .line 444
    goto :goto_1

    .line 447
    :cond_0
    const/4 v2, 0x0

    .line 448
    const/16 v5, 0x5c

    if-nez v1, :cond_3

    .line 450
    if-ne v4, v5, :cond_1

    .line 451
    const/4 v1, 0x1

    goto :goto_1

    .line 452
    :cond_1
    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 453
    const/4 v2, 0x1

    goto :goto_1

    .line 455
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 463
    :cond_3
    if-eqz p3, :cond_4

    .line 464
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    const/4 v1, 0x0

    .line 438
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 10
    .param p1, "endOfAtom"    # C
    .param p2, "keepEscapes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 266
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 267
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    .line 270
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 271
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    .line 275
    :cond_1
    const/4 v0, 0x0

    .line 277
    .local v0, "filter":Z
    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 281
    .local v2, "c":C
    :goto_0
    const/16 v3, 0x28

    const/4 v4, 0x1

    if-ne v2, v3, :cond_b

    .line 284
    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v5, v4

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v5, "start":I
    const/4 v6, 0x1

    .line 285
    .local v6, "nesting":I
    :goto_1
    if-lez v6, :cond_6

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v7, v8, :cond_6

    .line 287
    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 288
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_2

    .line 289
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v4

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 290
    const/4 v0, 0x1

    goto :goto_2

    .line 291
    :cond_2
    const/16 v7, 0xd

    if-ne v2, v7, :cond_3

    .line 292
    const/4 v0, 0x1

    goto :goto_2

    .line 293
    :cond_3
    if-ne v2, v3, :cond_4

    .line 294
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 295
    :cond_4
    const/16 v7, 0x29

    if-ne v2, v7, :cond_5

    .line 296
    add-int/lit8 v6, v6, -0x1

    .line 286
    :cond_5
    :goto_2
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v4

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_1

    .line 298
    :cond_6
    if-nez v6, :cond_a

    .line 301
    iget-boolean v3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v3, :cond_8

    .line 305
    if-eqz v0, :cond_7

    .line 306
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v3, v4

    invoke-static {v1, v5, v3, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    goto :goto_3

    .line 308
    .end local v1    # "s":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "s":Ljava/lang/String;
    :goto_3
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v4, -0x3

    invoke-direct {v3, v4, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 314
    .end local v1    # "s":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v3

    if-ne v3, v1, :cond_9

    .line 315
    sget-object v1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v1

    .line 316
    :cond_9
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 317
    .end local v6    # "nesting":I
    goto :goto_0

    .line 299
    .restart local v6    # "nesting":I
    :cond_a
    new-instance v1, Ljavax/mail/internet/ParseException;

    const-string v3, "Unbalanced comments"

    invoke-direct {v1, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    .end local v5    # "start":I
    .end local v6    # "nesting":I
    :cond_b
    const/16 v1, 0x22

    if-ne v2, v1, :cond_c

    .line 322
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v3, v4

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 323
    invoke-direct {p0, v1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    return-object v1

    .line 327
    :cond_c
    const/16 v5, 0x20

    if-lt v2, v5, :cond_11

    const/16 v6, 0x7f

    if-ge v2, v6, :cond_11

    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_d

    goto :goto_6

    .line 340
    :cond_d
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v7, "start":I
    :goto_4
    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v8, v9, :cond_10

    .line 341
    iget-object v9, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 344
    if-lt v2, v5, :cond_f

    if-ge v2, v6, :cond_f

    if-eq v2, v3, :cond_f

    if-eq v2, v5, :cond_f

    if-eq v2, v1, :cond_f

    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 345
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_e

    goto :goto_5

    .line 340
    :cond_e
    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v8, v4

    iput v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_4

    .line 346
    :cond_f
    :goto_5
    if-lez p1, :cond_10

    if-eq v2, p1, :cond_10

    .line 349
    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 350
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    return-object v1

    .line 355
    :cond_10
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 328
    .end local v7    # "start":I
    :cond_11
    :goto_6
    if-lez p1, :cond_12

    if-eq v2, p1, :cond_12

    .line 331
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    return-object v1

    .line 333
    :cond_12
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v4

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 334
    new-array v1, v4, [C

    .line 335
    .local v1, "ch":[C
    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 336
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v2, v4}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3
.end method

.method private skipWhiteSpace()I
    .locals 3

    .line 406
    nop

    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v1, :cond_1

    .line 407
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    .line 409
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    return v0

    .line 406
    :cond_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0

    .line 410
    .end local v1    # "c":C
    :cond_1
    const/4 v0, -0x4

    return v0
.end method

.method private static trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "c":C
    const/16 v3, 0x20

    if-eq v1, v3, :cond_0

    const/16 v1, 0x9

    if-eq v2, v1, :cond_0

    const/16 v1, 0xd

    if-eq v2, v1, :cond_0

    const/16 v1, 0xa

    if-eq v2, v1, :cond_0

    .line 420
    goto :goto_1

    .line 417
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 422
    .end local v2    # "c":C
    :cond_1
    :goto_1
    if-gtz v0, :cond_2

    .line 423
    const-string v1, ""

    return-object v1

    .line 425
    :cond_2
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .line 253
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public next(C)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 1
    .param p1, "endOfAtom"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .param p1, "endOfAtom"    # C
    .param p2, "keepEscapes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 222
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 223
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 224
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    .line 225
    return-object v0
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 240
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 242
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    .line 243
    return-object v0
.end method
