.class public Ljavax/mail/internet/InternetHeaders;
.super Ljava/lang/Object;
.source "InternetHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;,
        Ljavax/mail/internet/InternetHeaders$MatchStringEnum;,
        Ljavax/mail/internet/InternetHeaders$MatchEnum;,
        Ljavax/mail/internet/InternetHeaders$InternetHeader;
    }
.end annotation


# static fields
.field private static final ignoreWhitespaceLines:Z


# instance fields
.field protected headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetHeaders$InternetHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    nop

    .line 62
    const-string v0, "mail.mime.ignorewhitespacelines"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/InternetHeaders;->ignoreWhitespaceLines:Z

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    .line 285
    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Return-Path"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Received"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Date"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-From"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Sender"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Cc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Bcc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Message-Id"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Date"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "From"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Sender"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Reply-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Cc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Bcc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Message-Id"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "In-Reply-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "References"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Subject"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Comments"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Keywords"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Errors-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "MIME-Version"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Content-Type"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Content-Transfer-Encoding"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Content-MD5"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, ":"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Content-Length"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Status"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;Z)V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "allowutf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    .line 356
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;Z)V

    .line 357
    return-void
.end method

.method private static final isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "line"    # Ljava/lang/String;

    .line 448
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Ljavax/mail/internet/InternetHeaders;->ignoreWhitespaceLines:Z

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 448
    :goto_1
    return v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 561
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 562
    .local v0, "pos":I
    nop

    .line 563
    const-string v1, "Received"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 564
    const-string v1, "Return-Path"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 565
    .local v1, "addReverse":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 566
    const/4 v0, 0x0

    .line 567
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_6

    .line 568
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 569
    .local v2, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    invoke-virtual {v2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 570
    if-eqz v1, :cond_3

    .line 571
    move v0, v3

    goto :goto_3

    .line 573
    :cond_3
    iget-object v4, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    add-int/lit8 v5, v3, 0x1

    new-instance v6, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v6, p1, p2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 574
    return-void

    .line 578
    :cond_4
    :goto_3
    if-nez v1, :cond_5

    invoke-virtual {v2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 579
    move v0, v3

    .line 567
    .end local v2    # "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 581
    .end local v3    # "i":I
    :cond_6
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v3, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v3, p1, p2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .line 641
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 642
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v2, p1}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 643
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 644
    .local v1, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v1    # "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    nop

    .line 652
    .end local v0    # "c":C
    :goto_1
    goto :goto_2

    .line 650
    :catch_0
    move-exception v0

    .line 653
    :goto_2
    return-void

    .line 647
    :catch_1
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return-void
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 661
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljavax/mail/Header;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .line 492
    invoke-virtual {p0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "s":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 495
    const/4 v1, 0x0

    return-object v1

    .line 497
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 500
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 502
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 498
    .end local v1    # "r":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    aget-object v1, v0, v2

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 461
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 463
    .local v0, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/mail/internet/InternetHeaders$InternetHeader;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 467
    .local v2, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    invoke-virtual {v2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 468
    invoke-virtual {v2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v2    # "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    :cond_0
    goto :goto_0

    .line 471
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 472
    const/4 v2, 0x0

    return-object v2

    .line 474
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 475
    .local v2, "r":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 476
    return-object v2
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 671
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljavax/mail/Header;",
            ">;"
        }
    .end annotation

    .line 616
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 681
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljavax/mail/Header;",
            ">;"
        }
    .end annotation

    .line 626
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;Z)V

    .line 375
    return-void
.end method

.method public load(Ljava/io/InputStream;Z)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "allowutf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 398
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1, p2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 399
    .local v0, "lis":Lcom/sun/mail/util/LineInputStream;
    const/4 v1, 0x0

    .line 401
    .local v1, "prevline":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v2, "lineBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 409
    .local v3, "first":Z
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_6

    const-string v5, " "

    .line 411
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 413
    :cond_1
    if-eqz v1, :cond_2

    .line 414
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const/4 v1, 0x0

    .line 417
    :cond_2
    if-eqz v3, :cond_4

    .line 418
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "lt":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 420
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .end local v5    # "lt":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 422
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 423
    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 428
    :cond_6
    if-eqz v1, :cond_7

    .line 429
    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    .line 433
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 435
    :cond_8
    :goto_0
    move-object v1, v4

    .line 437
    :goto_1
    const/4 v3, 0x0

    .line 438
    if-eqz v4, :cond_9

    invoke-static {v4}, Ljavax/mail/internet/InternetHeaders;->isEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 441
    .end local v3    # "first":Z
    :cond_9
    nop

    .line 442
    return-void

    .line 439
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 440
    .local v3, "ioex":Ljava/io/IOException;
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Error in input stream"

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 589
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 590
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 591
    .local v1, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    invoke-virtual {v1}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 589
    .end local v1    # "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 522
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 523
    .local v2, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    invoke-virtual {v2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 524
    if-nez v0, :cond_1

    .line 526
    iget-object v3, v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v4, v3

    .local v4, "j":I
    if-ltz v3, :cond_0

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    goto :goto_1

    .line 530
    .end local v4    # "j":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 532
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 534
    :cond_1
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 535
    add-int/lit8 v1, v1, -0x1

    .line 521
    .end local v2    # "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 541
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_4
    return-void
.end method
