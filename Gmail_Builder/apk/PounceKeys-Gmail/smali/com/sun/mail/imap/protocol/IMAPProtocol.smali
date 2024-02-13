.class public Lcom/sun/mail/imap/protocol/IMAPProtocol;
.super Lcom/sun/mail/iap/Protocol;
.source "IMAPProtocol.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CRLF:[B

.field private static final DONE:[B

.field private static final fetchItems:[Lcom/sun/mail/imap/protocol/FetchItem;


# instance fields
.field private authenticated:Z

.field private authmechs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Lcom/sun/mail/iap/ByteArray;

.field private capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connected:Z

.field protected enabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile idleTag:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private noauthdebug:Z

.field private proxyAuthUser:Ljava/lang/String;

.field private referralException:Z

.field private rev1:Z

.field private saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

.field protected searchCharsets:[Ljava/lang/String;

.field protected searchSequence:Lcom/sun/mail/imap/protocol/SearchSequence;

.field private utf8:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    nop

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sun/mail/imap/protocol/FetchItem;

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchItems:[Lcom/sun/mail/imap/protocol/FetchItem;

    .line 3232
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x44t
        0x4ft
        0x4et
        0x45t
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/util/Properties;Z)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "debug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/util/Properties;Z)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 61
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 157
    const-string v2, "imap"

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    .line 158
    nop

    .line 159
    const-string v2, "mail.debug.auth"

    invoke-static {p3, v2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 161
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 162
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 164
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 165
    const-string v3, "UTF-8"

    aput-object v3, v2, v0

    .line 166
    nop

    .line 167
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 170
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Properties;ZLcom/sun/mail/util/MailLogger;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "props"    # Ljava/util/Properties;
    .param p5, "isSSL"    # Z
    .param p6, "logger"    # Lcom/sun/mail/util/MailLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mail."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;ZLcom/sun/mail/util/MailLogger;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 61
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 110
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    .line 111
    const-string v2, "mail.debug.auth"

    .line 112
    invoke-static {p4, v2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".referralexception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->referralException:Z

    .line 118
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    .line 121
    :cond_1
    const-string v2, "IMAP4rev1"

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 124
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 125
    const-string v3, "UTF-8"

    aput-object v3, v2, v0

    .line 126
    nop

    .line 127
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 130
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    nop

    .line 141
    return-void

    .line 138
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    if-nez v1, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 140
    :cond_3
    throw v0
.end method

.method private checkReferral(Lcom/sun/mail/iap/Response;)V
    .locals 6
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/imap/protocol/IMAPReferralException;
        }
    .end annotation

    .line 328
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "s":Ljava/lang/String;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 331
    .local v1, "i":I
    if-lez v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "REFERRAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 334
    .local v2, "j":I
    if-lez v2, :cond_0

    .line 335
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "url":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .local v4, "msg":Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    .restart local v3    # "url":Ljava/lang/String;
    const-string v4, ""

    .line 341
    .restart local v4    # "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 343
    :cond_1
    new-instance v5, Lcom/sun/mail/imap/protocol/IMAPReferralException;

    invoke-direct {v5, v4, v3}, Lcom/sun/mail/imap/protocol/IMAPReferralException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 346
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;
    .locals 3
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "mbox"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2197
    if-eqz p3, :cond_1

    const-string v0, "UIDPLUS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2198
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UIDPLUS not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2200
    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2201
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2202
    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 2204
    const-string v1, "COPY"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2207
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2210
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2212
    if-eqz p3, :cond_2

    .line 2213
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v2

    return-object v2

    .line 2215
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
    .locals 5
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2133
    const/4 v0, 0x0

    const-string v1, ")"

    const-string v2, " ("

    if-eqz p3, :cond_0

    .line 2134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID FETCH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0

    .line 2136
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FETCH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method private getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 1633
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1634
    return-object v1

    .line 1636
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    move v2, v0

    .local v2, "b":B
    if-lez v0, :cond_1

    const/16 v0, 0x5b

    if-eq v2, v0, :cond_1

    .line 1637
    goto :goto_0

    .line 1638
    :cond_1
    if-nez v2, :cond_2

    .line 1639
    return-object v1

    .line 1641
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 1642
    .local v0, "s":Ljava/lang/String;
    const-string v3, "APPENDUID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1643
    return-object v1

    .line 1645
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v3

    .line 1646
    .local v3, "uidvalidity":J
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v5

    .line 1647
    .local v5, "uid":J
    new-instance v1, Lcom/sun/mail/imap/AppendUID;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    return-object v1
.end method

.method private issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    .locals 16
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2532
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getSearchSequence()Lcom/sun/mail/imap/protocol/SearchSequence;

    move-result-object v2

    .line 2533
    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 2534
    :cond_0
    invoke-static/range {p3 .. p3}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2532
    :goto_0
    move-object/from16 v5, p2

    invoke-virtual {v2, v5, v4}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    .line 2536
    .local v2, "args":Lcom/sun/mail/iap/Argument;
    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2540
    const-string v6, "SEARCH"

    if-nez v1, :cond_1

    .line 2541
    invoke-virtual {v0, v6, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v7

    .local v7, "r":[Lcom/sun/mail/iap/Response;
    goto :goto_1

    .line 2543
    .end local v7    # "r":[Lcom/sun/mail/iap/Response;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SEARCH CHARSET "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v7

    .line 2545
    .restart local v7    # "r":[Lcom/sun/mail/iap/Response;
    :goto_1
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    .line 2546
    .local v8, "response":Lcom/sun/mail/iap/Response;
    const/4 v9, 0x0

    .line 2549
    .local v9, "matches":[I
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2550
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2552
    .local v10, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    array-length v12, v7

    .local v12, "len":I
    :goto_2
    if-ge v11, v12, :cond_5

    .line 2553
    aget-object v13, v7, v11

    instance-of v13, v13, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v13, :cond_2

    .line 2554
    const/4 v3, 0x0

    goto :goto_4

    .line 2556
    :cond_2
    aget-object v13, v7, v11

    check-cast v13, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2558
    .local v13, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v13, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2559
    :goto_3
    invoke-virtual {v13}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v14

    move v15, v14

    .local v15, "num":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_3

    .line 2560
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2561
    :cond_3
    const/4 v3, 0x0

    aput-object v3, v7, v11

    goto :goto_4

    .line 2558
    .end local v15    # "num":I
    :cond_4
    const/4 v3, 0x0

    .line 2552
    .end local v13    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2566
    .end local v11    # "i":I
    .end local v12    # "len":I
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .line 2567
    .local v3, "vsize":I
    new-array v9, v3, [I

    .line 2568
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v3, :cond_6

    .line 2569
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v6

    .line 2568
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2573
    .end local v3    # "vsize":I
    .end local v6    # "i":I
    .end local v10    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2574
    invoke-virtual {v0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2575
    return-object v9
.end method

.method private moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;
    .locals 3
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "mbox"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2291
    const-string v0, "MOVE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2293
    if-eqz p3, :cond_1

    const-string v1, "UIDPLUS"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2294
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UIDPLUS not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2296
    :cond_1
    :goto_0
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2297
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2298
    invoke-virtual {p0, v1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 2300
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2303
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2306
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2308
    if-eqz p3, :cond_2

    .line 2309
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v2

    return-object v2

    .line 2311
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 2292
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    .end local v1    # "args":Lcom/sun/mail/iap/Argument;
    :cond_3
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "MOVE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
    .locals 16
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 2885
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v0

    .line 2886
    .local v0, "quotaRoot":Ljava/lang/String;
    new-instance v1, Ljavax/mail/Quota;

    invoke-direct {v1, v0}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    .line 2887
    .local v1, "q":Ljavax/mail/Quota;
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 2889
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 2892
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2893
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota$Resource;>;"
    :goto_0
    const/16 v3, 0x29

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2895
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v3

    .line 2896
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2897
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v11

    .line 2898
    .local v11, "usage":J
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v13

    .line 2899
    .local v13, "limit":J
    new-instance v15, Ljavax/mail/Quota$Resource;

    move-object v5, v15

    move-object v6, v3

    move-wide v7, v11

    move-wide v9, v13

    invoke-direct/range {v5 .. v10}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    .line 2900
    .local v5, "res":Ljavax/mail/Quota$Resource;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2902
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "res":Ljavax/mail/Quota$Resource;
    .end local v11    # "usage":J
    .end local v13    # "limit":J
    :cond_0
    goto :goto_0

    .line 2903
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Quota$Resource;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavax/mail/Quota$Resource;

    iput-object v3, v1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 2904
    return-object v1

    .line 2890
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota$Resource;>;"
    :cond_2
    move-object/from16 v4, p1

    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "parse error in QUOTA"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p0, "rd"    # Lcom/sun/mail/imap/ResyncData;

    .line 1292
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1293
    .local v0, "cmd":Lcom/sun/mail/iap/Argument;
    const-string v1, "QRESYNC"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1294
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1295
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getUIDValidity()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 1296
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getModSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 1297
    invoke-static {p0}, Lcom/sun/mail/imap/Utility;->getResyncUIDSet(Lcom/sun/mail/imap/ResyncData;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v2

    .line 1298
    .local v2, "uids":[Lcom/sun/mail/imap/protocol/UIDSet;
    if-eqz v2, :cond_0

    .line 1299
    invoke-static {v2}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1300
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 1301
    return-object v0
.end method

.method private search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
    .locals 4
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 2477
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->supportsUtf8()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2480
    :catch_0
    move-exception v0

    .line 2493
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 2494
    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 2495
    goto :goto_1

    .line 2498
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I

    move-result-object v1
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 2513
    :catch_1
    move-exception v1

    .line 2514
    .local v1, "sex":Ljavax/mail/search/SearchException;
    throw v1

    .line 2511
    .end local v1    # "sex":Ljavax/mail/search/SearchException;
    :catch_2
    move-exception v1

    .line 2512
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    throw v1

    .line 2508
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v2

    .line 2510
    .local v2, "ioex":Ljava/io/IOException;
    goto :goto_1

    .line 2499
    .end local v2    # "ioex":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 2506
    .local v2, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 2507
    nop

    .line 2493
    .end local v2    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2519
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Search failed"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
    .locals 3
    .param p1, "msgset"    # Ljava/lang/String;
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2375
    const/4 v0, 0x0

    const-string v1, "STORE "

    if-eqz p3, :cond_0

    .line 2376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " +FLAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2377
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2376
    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .local v0, "r":[Lcom/sun/mail/iap/Response;
    goto :goto_0

    .line 2379
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -FLAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2380
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2379
    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2383
    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2384
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2385
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)V
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1566
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    .line 1567
    return-void
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/imap/AppendUID;
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1582
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    move-result-object v0

    return-object v0
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;
    .locals 3
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .param p5, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1587
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1588
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1590
    if-eqz p2, :cond_1

    .line 1592
    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p2, v1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1, p2}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    move-object p2, v1

    .line 1594
    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p2, v1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags$Flag;)V

    .line 1607
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1609
    :cond_1
    if-eqz p3, :cond_2

    .line 1610
    invoke-static {p3}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1612
    :cond_2
    invoke-virtual {v0, p4}, Lcom/sun/mail/iap/Argument;->writeBytes(Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/iap/Argument;

    .line 1614
    const-string v1, "APPEND"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1617
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1620
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1622
    if-eqz p5, :cond_3

    .line 1623
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;

    move-result-object v2

    return-object v2

    .line 1625
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public declared-synchronized authlogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 526
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 527
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v1, 0x0

    .line 528
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 529
    .local v2, "r":Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 533
    .local v3, "done":Z
    :try_start_1
    iget-boolean v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "AUTHENTICATE LOGIN command trace suppressed"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    :cond_0
    :try_start_3
    const-string v4, "AUTHENTICATE LOGIN"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    .line 544
    goto :goto_0

    .line 603
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 540
    :catch_0
    move-exception v4

    .line 542
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v5

    move-object v2, v5

    .line 543
    const/4 v3, 0x1

    .line 546
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 564
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 565
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lcom/sun/mail/util/BASE64EncoderStream;

    const v7, 0x7fffffff

    invoke-direct {v6, v5, v7}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 566
    .local v6, "b64os":Ljava/io/OutputStream;
    const/4 v7, 0x1

    .line 568
    .local v7, "first":Z
    :goto_1
    if-nez v3, :cond_5

    .line 570
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v8

    move-object v2, v8

    .line 571
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 574
    if-eqz v7, :cond_1

    .line 575
    move-object v8, p1

    .line 576
    .local v8, "s":Ljava/lang/String;
    const/4 v7, 0x0

    goto :goto_2

    .line 578
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    move-object v8, p2

    .line 581
    .restart local v8    # "s":Ljava/lang/String;
    :goto_2
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 582
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 584
    sget-object v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 585
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    .line 586
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 587
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 588
    .end local v8    # "s":Ljava/lang/String;
    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 590
    const/4 v3, 0x1

    goto :goto_3

    .line 591
    :cond_3
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_4

    .line 592
    const/4 v3, 0x1

    .line 598
    :cond_4
    :goto_3
    goto :goto_4

    .line 594
    :catch_1
    move-exception v8

    .line 596
    .local v8, "ioex":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v8}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v9

    move-object v2, v9

    .line 597
    const/4 v3, 0x1

    .line 599
    .end local v8    # "ioex":Ljava/lang/Exception;
    :goto_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 603
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "b64os":Ljava/io/OutputStream;
    .end local v7    # "first":Z
    :cond_5
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 604
    nop

    .line 606
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/iap/Response;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/iap/Response;

    .line 609
    .local v4, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleCapabilityResponse([Lcom/sun/mail/iap/Response;)V

    .line 618
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 621
    iget-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 622
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTHENTICATE LOGIN command result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 623
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleLoginResult(Lcom/sun/mail/iap/Response;)V

    .line 625
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 627
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 628
    monitor-exit p0

    return-void

    .line 603
    .end local v4    # "responses":[Lcom/sun/mail/iap/Response;
    :catchall_1
    move-exception v4

    :goto_5
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 604
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 525
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    .end local v3    # "done":Z
    .end local p1    # "u":Ljava/lang/String;
    .end local p2    # "p":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authntlm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "authzid"    # Ljava/lang/String;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 759
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 760
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v3, 0x0

    .line 761
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 762
    .local v4, "r":Lcom/sun/mail/iap/Response;
    const/4 v5, 0x0

    .line 764
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 765
    .local v6, "type1Msg":Ljava/lang/String;
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mail."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".auth.ntlm.flags"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 767
    .local v7, "flags":I
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mail."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".auth.ntlm.v2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    move v8, v0

    .line 769
    .local v8, "v2":Z
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mail."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".auth.ntlm.domain"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 771
    .local v13, "domain":Ljava/lang/String;
    new-instance v0, Lcom/sun/mail/auth/Ntlm;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getLocalHost()Ljava/lang/String;

    move-result-object v14

    iget-object v10, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    move-object v12, v0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Lcom/sun/mail/auth/Ntlm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/mail/util/MailLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v10, v0

    .line 775
    .local v10, "ntlm":Lcom/sun/mail/auth/Ntlm;
    :try_start_1
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v11, "AUTHENTICATE NTLM command trace suppressed"

    invoke-virtual {v0, v11}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 781
    :cond_0
    :try_start_3
    const-string v0, "AUTHENTICATE NTLM"

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    .line 786
    goto :goto_0

    .line 822
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 782
    :catch_0
    move-exception v0

    .line 784
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v11

    move-object v4, v11

    .line 785
    const/4 v5, 0x1

    .line 788
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v11, v0

    .line 789
    .local v11, "os":Ljava/io/OutputStream;
    const/4 v0, 0x1

    move v12, v5

    move-object v5, v4

    move v4, v0

    .line 791
    .local v4, "first":Z
    .local v5, "r":Lcom/sun/mail/iap/Response;
    .local v12, "done":Z
    :goto_1
    if-nez v12, :cond_5

    .line 793
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    move-object v5, v0

    .line 794
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    if-eqz v4, :cond_1

    .line 798
    invoke-virtual {v10, v7, v8}, Lcom/sun/mail/auth/Ntlm;->generateType1Msg(IZ)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "s":Ljava/lang/String;
    const/4 v4, 0x0

    goto :goto_2

    .line 801
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sun/mail/auth/Ntlm;->generateType3Msg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .restart local v0    # "s":Ljava/lang/String;
    :goto_2
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/OutputStream;->write([B)V

    .line 805
    sget-object v14, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v11, v14}, Ljava/io/OutputStream;->write([B)V

    .line 806
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 807
    .end local v0    # "s":Ljava/lang/String;
    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 809
    const/4 v12, 0x1

    goto :goto_3

    .line 810
    :cond_3
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_4

    .line 811
    const/4 v12, 0x1

    .line 817
    :cond_4
    :goto_3
    goto :goto_4

    .line 822
    .end local v4    # "first":Z
    .end local v11    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v0

    move-object v4, v5

    move v5, v12

    goto :goto_5

    .line 813
    .restart local v4    # "first":Z
    .restart local v11    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    move-object v5, v0

    move v0, v4

    move-object/from16 v4, v18

    .line 815
    .local v0, "first":Z
    .local v4, "r":Lcom/sun/mail/iap/Response;
    .local v5, "ioex":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v4, v14

    .line 816
    const/4 v12, 0x1

    move-object v5, v4

    move v4, v0

    .line 818
    .end local v0    # "first":Z
    .local v4, "first":Z
    .local v5, "r":Lcom/sun/mail/iap/Response;
    :goto_4
    :try_start_7
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 822
    .end local v5    # "r":Lcom/sun/mail/iap/Response;
    .end local v11    # "os":Ljava/io/OutputStream;
    .local v4, "r":Lcom/sun/mail/iap/Response;
    :catchall_2
    move-exception v0

    move v5, v12

    goto :goto_5

    .end local v4    # "r":Lcom/sun/mail/iap/Response;
    .restart local v5    # "r":Lcom/sun/mail/iap/Response;
    :cond_5
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 823
    nop

    .line 825
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/iap/Response;

    .line 828
    .local v0, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleCapabilityResponse([Lcom/sun/mail/iap/Response;)V

    .line 837
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 840
    iget-boolean v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 841
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AUTHENTICATE NTLM command result: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 842
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_6
    invoke-virtual {v1, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleLoginResult(Lcom/sun/mail/iap/Response;)V

    .line 844
    invoke-virtual {v1, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 846
    iput-boolean v9, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 847
    monitor-exit p0

    return-void

    .line 822
    .end local v0    # "responses":[Lcom/sun/mail/iap/Response;
    .end local v12    # "done":Z
    .restart local v4    # "r":Lcom/sun/mail/iap/Response;
    .local v5, "done":Z
    :catchall_3
    move-exception v0

    :goto_5
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 823
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 758
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "r":Lcom/sun/mail/iap/Response;
    .end local v5    # "done":Z
    .end local v6    # "type1Msg":Ljava/lang/String;
    .end local v7    # "flags":I
    .end local v8    # "v2":Z
    .end local v10    # "ntlm":Lcom/sun/mail/auth/Ntlm;
    .end local v13    # "domain":Ljava/lang/String;
    .end local p1    # "authzid":Ljava/lang/String;
    .end local p2    # "u":Ljava/lang/String;
    .end local p3    # "p":Ljava/lang/String;
    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authoauth2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 862
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 863
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v1, 0x0

    .line 864
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 865
    .local v2, "r":Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 869
    .local v3, "done":Z
    :try_start_1
    iget-boolean v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 870
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "AUTHENTICATE XOAUTH2 command trace suppressed"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 875
    :cond_0
    :try_start_3
    new-instance v4, Lcom/sun/mail/iap/Argument;

    invoke-direct {v4}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 876
    .local v4, "args":Lcom/sun/mail/iap/Argument;
    const-string v5, "XOAUTH2"

    invoke-virtual {v4, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 877
    const-string v5, "SASL-IR"

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 878
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u0001auth=Bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u0001\u0001"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 879
    .local v5, "resp":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 880
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 879
    invoke-static {v6}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v6

    .line 881
    .local v6, "ba":[B
    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v7

    .line 882
    .local v7, "irs":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 884
    .end local v5    # "resp":Ljava/lang/String;
    .end local v6    # "ba":[B
    .end local v7    # "irs":Ljava/lang/String;
    :cond_1
    const-string v5, "AUTHENTICATE"

    invoke-virtual {p0, v5, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v5

    .line 889
    .end local v4    # "args":Lcom/sun/mail/iap/Argument;
    goto :goto_0

    .line 920
    :catchall_0
    move-exception v4

    goto/16 :goto_4

    .line 885
    :catch_0
    move-exception v4

    .line 887
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v5

    move-object v2, v5

    .line 888
    const/4 v3, 0x1

    .line 891
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 893
    .local v4, "os":Ljava/io/OutputStream;
    :goto_1
    if-nez v3, :cond_5

    .line 895
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v5

    move-object v2, v5

    .line 896
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u0001auth=Bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u0001\u0001"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 900
    .restart local v5    # "resp":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 901
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 900
    invoke-static {v6}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v6

    .line 902
    .local v6, "b":[B
    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 903
    sget-object v7, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 904
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 905
    .end local v5    # "resp":Ljava/lang/String;
    .end local v6    # "b":[B
    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 907
    const/4 v3, 0x1

    goto :goto_2

    .line 908
    :cond_3
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_4

    .line 909
    const/4 v3, 0x1

    .line 915
    :cond_4
    :goto_2
    goto :goto_3

    .line 911
    :catch_1
    move-exception v5

    .line 913
    .local v5, "ioex":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v6

    move-object v2, v6

    .line 914
    const/4 v3, 0x1

    .line 916
    .end local v5    # "ioex":Ljava/lang/Exception;
    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 920
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_5
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 921
    nop

    .line 923
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/iap/Response;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/iap/Response;

    .line 926
    .local v4, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleCapabilityResponse([Lcom/sun/mail/iap/Response;)V

    .line 935
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 938
    iget-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 939
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTHENTICATE XOAUTH2 command result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 940
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleLoginResult(Lcom/sun/mail/iap/Response;)V

    .line 942
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 944
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 945
    monitor-exit p0

    return-void

    .line 920
    .end local v4    # "responses":[Lcom/sun/mail/iap/Response;
    :catchall_1
    move-exception v4

    :goto_4
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 921
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 861
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    .end local v3    # "done":Z
    .end local p1    # "u":Ljava/lang/String;
    .end local p2    # "p":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "authzid"    # Ljava/lang/String;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 645
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 646
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v1, 0x0

    .line 647
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 648
    .local v2, "r":Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 652
    .local v3, "done":Z
    :try_start_1
    iget-boolean v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "AUTHENTICATE PLAIN command trace suppressed"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 658
    :cond_0
    :try_start_3
    const-string v4, "AUTHENTICATE PLAIN"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    .line 663
    goto :goto_0

    .line 718
    :catchall_0
    move-exception v4

    goto/16 :goto_5

    .line 659
    :catch_0
    move-exception v4

    .line 661
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v5

    move-object v2, v5

    .line 662
    const/4 v3, 0x1

    .line 665
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 683
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 684
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lcom/sun/mail/util/BASE64EncoderStream;

    const v7, 0x7fffffff

    invoke-direct {v6, v5, v7}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 686
    .local v6, "b64os":Ljava/io/OutputStream;
    :goto_1
    if-nez v3, :cond_5

    .line 688
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v7

    move-object v2, v7

    .line 689
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 691
    const-string v7, "\u0000"

    .line 692
    .local v7, "nullByte":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_1

    const-string v9, ""

    goto :goto_2

    :cond_1
    move-object v9, p1

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "s":Ljava/lang/String;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 697
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 699
    sget-object v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 700
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V

    .line 701
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 702
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 703
    .end local v7    # "nullByte":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 705
    const/4 v3, 0x1

    goto :goto_3

    .line 706
    :cond_3
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_4

    .line 707
    const/4 v3, 0x1

    .line 713
    :cond_4
    :goto_3
    goto :goto_4

    .line 709
    :catch_1
    move-exception v7

    .line 711
    .local v7, "ioex":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v7}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v8

    move-object v2, v8

    .line 712
    const/4 v3, 0x1

    .line 714
    .end local v7    # "ioex":Ljava/lang/Exception;
    :goto_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 718
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "b64os":Ljava/io/OutputStream;
    :cond_5
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 719
    nop

    .line 721
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/iap/Response;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/iap/Response;

    .line 724
    .local v4, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleCapabilityResponse([Lcom/sun/mail/iap/Response;)V

    .line 733
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 736
    iget-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 737
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTHENTICATE PLAIN command result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 738
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleLoginResult(Lcom/sun/mail/iap/Response;)V

    .line 740
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 742
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 743
    monitor-exit p0

    return-void

    .line 718
    .end local v4    # "responses":[Lcom/sun/mail/iap/Response;
    :catchall_1
    move-exception v4

    :goto_5
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 719
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 644
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    .end local v3    # "done":Z
    .end local p1    # "authzid":Ljava/lang/String;
    .end local p2    # "u":Ljava/lang/String;
    .end local p3    # "p":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public capability()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 194
    const-string v0, "CAPABILITY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 195
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 197
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleCapabilityResponse([Lcom/sun/mail/iap/Response;)V

    .line 199
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 200
    return-void
.end method

.method public check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1657
    const-string v0, "CHECK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1658
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1667
    const-string v0, "CLOSE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1668
    return-void
.end method

.method public compress()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1137
    :try_start_0
    const-string v0, "COMPRESS DEFLATE"

    invoke-super {p0, v0}, Lcom/sun/mail/iap/Protocol;->startCompression(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    nop

    .line 1153
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "COMPRESS Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1148
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sun/mail/iap/Response;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1149
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1150
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 1151
    new-instance v2, Lcom/sun/mail/iap/ProtocolException;

    const-string v3, "COMPRESS failure"

    invoke-direct {v2, v3, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1138
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "r":[Lcom/sun/mail/iap/Response;
    :catch_1
    move-exception v0

    .line 1139
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "COMPRESS ProtocolException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1143
    throw v0
.end method

.method public copy(IILjava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    .line 2163
    return-void
.end method

.method public copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2148
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    .line 2149
    return-void
.end method

.method public copyuid(IILjava/lang/String;)Lcom/sun/mail/imap/CopyUID;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    move-result-object v0

    return-object v0
.end method

.method public copyuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2176
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1417
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1418
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1420
    const-string v1, "CREATE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1421
    return-void
.end method

.method protected createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
    .locals 7
    .param p1, "flags"    # Ljavax/mail/Flags;

    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2397
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v1

    .line 2398
    .local v1, "sf":[Ljavax/mail/Flags$Flag;
    const/4 v2, 0x1

    .line 2399
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/16 v5, 0x20

    if-ge v3, v4, :cond_7

    .line 2401
    aget-object v4, v1, v3

    .line 2402
    .local v4, "f":Ljavax/mail/Flags$Flag;
    sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_0

    .line 2403
    const-string v6, "\\Answered"

    .local v6, "s":Ljava/lang/String;
    goto :goto_1

    .line 2404
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_1

    .line 2405
    const-string v6, "\\Deleted"

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 2406
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_2

    .line 2407
    const-string v6, "\\Draft"

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 2408
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_3

    .line 2409
    const-string v6, "\\Flagged"

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 2410
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_4

    .line 2411
    const-string v6, "\\Recent"

    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_1

    .line 2412
    .end local v6    # "s":Ljava/lang/String;
    :cond_4
    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v4, v6, :cond_6

    .line 2413
    const-string v6, "\\Seen"

    .line 2416
    .restart local v6    # "s":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_5

    .line 2417
    const/4 v2, 0x0

    goto :goto_2

    .line 2419
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2420
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    .end local v4    # "f":Ljavax/mail/Flags$Flag;
    .end local v6    # "s":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2423
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v3

    .line 2424
    .local v3, "uf":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v6, v3

    if-ge v4, v6, :cond_9

    .line 2425
    if-eqz v2, :cond_8

    .line 2426
    const/4 v2, 0x0

    goto :goto_4

    .line 2428
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2429
    :goto_4
    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2424
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2432
    .end local v4    # "i":I
    :cond_9
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1431
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1432
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1434
    const-string v1, "DELETE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1435
    return-void
.end method

.method public deleteACL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2947
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2950
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2951
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 2952
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2954
    const-string v1, "DELETEACL"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2955
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 2958
    .local v2, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2959
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2960
    return-void

    .line 2948
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "r":[Lcom/sun/mail/iap/Response;
    .end local v2    # "response":Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 444
    return-void
.end method

.method protected doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "pat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1522
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1523
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0, v0, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1528
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .line 1529
    .local v2, "linfo":[Lcom/sun/mail/imap/protocol/ListInfo;
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    .line 1531
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1532
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v5

    .line 1533
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/ListInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v1

    .local v6, "len":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 1534
    aget-object v7, v1, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_0

    .line 1535
    goto :goto_1

    .line 1537
    :cond_0
    aget-object v7, v1, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1538
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1539
    new-instance v8, Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-direct {v8, v7}, Lcom/sun/mail/imap/protocol/ListInfo;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    const/4 v8, 0x0

    aput-object v8, v1, v5

    .line 1533
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1543
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1544
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 1549
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/ListInfo;>;"
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1550
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1551
    return-object v2
.end method

.method public enable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cap"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1313
    const-string v0, "ENABLE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1315
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1316
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1317
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1318
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1319
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1323
    const-string v0, "UTF8=ACCEPT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->utf8:Z

    .line 1324
    return-void

    .line 1314
    .end local v1    # "args":Lcom/sun/mail/iap/Argument;
    :cond_1
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ENABLE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 1
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v0

    return-object v0
.end method

.method public examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 5
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "rd"    # Lcom/sun/mail/imap/ResyncData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1259
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1260
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1262
    if-eqz p2, :cond_3

    .line 1263
    sget-object v1, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v1, :cond_1

    .line 1264
    const-string v1, "CONDSTORE"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1266
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 1265
    :cond_0
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "CONDSTORE not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1268
    :cond_1
    const-string v1, "QRESYNC"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1270
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 1269
    :cond_2
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "QRESYNC not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1274
    :cond_3
    :goto_0
    const-string v1, "EXAMINE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1278
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    new-instance v2, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 1279
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 1282
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1284
    array-length v4, v1

    sub-int/2addr v4, v3

    aget-object v3, v1, v4

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1285
    return-object v2
.end method

.method public expunge()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1677
    const-string v0, "EXPUNGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1678
    return-void
.end method

.method public fetch(IILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "msg"    # I
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2128
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2117
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 1
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1780
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1812
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method protected fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 2
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "peek"    # Z
    .param p6, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1817
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1818
    if-nez p2, :cond_0

    .line 1819
    const-string p2, ""

    .line 1820
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_1

    const-string v1, "BODY.PEEK["

    goto :goto_0

    :cond_1
    const-string v1, "BODY["

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1821
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1822
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSectionBody(ILjava/lang/String;Ljava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    return-object v1
.end method

.method protected fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
    .locals 2
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1747
    if-nez p2, :cond_0

    .line 1748
    const-string p2, ""

    .line 1749
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const-string v1, "BODY.PEEK["

    goto :goto_0

    :cond_1
    const-string v1, "BODY["

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1750
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSectionBody(ILjava/lang/String;Ljava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    return-object v1
.end method

.method public fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1702
    const-string v0, "BODYSTRUCTURE"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1703
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1705
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 1706
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1707
    const-class v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    return-object v2

    .line 1708
    :cond_0
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1709
    return-object v3

    .line 1711
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1712
    return-object v3
.end method

.method public fetchFlags(I)Ljavax/mail/Flags;
    .locals 6
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1919
    const/4 v0, 0x0

    .line 1920
    .local v0, "flags":Ljavax/mail/Flags;
    const-string v1, "FLAGS"

    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1923
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1924
    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    aget-object v4, v1, v2

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v4, :cond_1

    aget-object v4, v1, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1926
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 1927
    goto :goto_1

    .line 1929
    :cond_0
    aget-object v4, v1, v2

    check-cast v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1930
    .local v4, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v5, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v5

    check-cast v5, Ljavax/mail/Flags;

    move-object v0, v5

    if-eqz v5, :cond_1

    .line 1931
    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 1932
    goto :goto_2

    .line 1923
    .end local v4    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1937
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_2
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1938
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1939
    return-object v0
.end method

.method public fetchMODSEQ(I)Lcom/sun/mail/imap/protocol/MODSEQ;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1975
    const-string v0, "MODSEQ"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1978
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1980
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 1981
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1982
    const-class v2, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/MODSEQ;

    return-object v2

    .line 1983
    :cond_0
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1984
    return-object v3

    .line 1986
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1987
    return-object v3
.end method

.method public fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;
    .locals 4
    .param p1, "msgno"    # I
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1893
    nop

    .line 1894
    if-nez p2, :cond_0

    const-string v0, "RFC822"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RFC822."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1893
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1898
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1900
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 1901
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1902
    const-class v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    return-object v2

    .line 1903
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1904
    return-object v3

    .line 1906
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1907
    return-object v3
.end method

.method protected fetchSectionBody(ILjava/lang/String;Ljava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 9
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1840
    invoke-virtual {p0, p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1841
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1843
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    .line 1844
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 1845
    const-class v3, Lcom/sun/mail/imap/protocol/BODY;

    invoke-static {v0, p1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItems([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 1846
    .local v3, "bl":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODY;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 1847
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODY;

    return-object v2

    .line 1848
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1849
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BODY responses for section "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 1852
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/protocol/BODY;

    .line 1853
    .local v5, "br":Lcom/sun/mail/imap/protocol/BODY;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1854
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got BODY section "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/BODY;->getSection()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 1855
    :cond_2
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/BODY;->getSection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1856
    return-object v5

    .line 1857
    .end local v5    # "br":Lcom/sun/mail/imap/protocol/BODY;
    :cond_3
    goto :goto_0

    .line 1858
    :cond_4
    return-object v4

    .line 1859
    .end local v3    # "bl":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODY;>;"
    :cond_5
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1860
    return-object v4

    .line 1862
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1863
    return-object v4
.end method

.method public fetchSequenceNumber(J)V
    .locals 3
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2002
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UID"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2004
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2005
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2006
    return-void
.end method

.method public fetchSequenceNumbers([J)V
    .locals 4
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2062
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2063
    if-lez v1, :cond_0

    .line 2064
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    :cond_0
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2068
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UID"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2070
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2071
    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2072
    return-void
.end method

.method public fetchSequenceNumbers(JJ)[J
    .locals 8
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2025
    const-wide/16 v1, -0x1

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    const-string v1, "*"

    goto :goto_0

    .line 2026
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2024
    const-string v1, "UID"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 2030
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UID;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v0

    .local v4, "len":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 2032
    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    aget-object v5, v0, v3

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v5, :cond_1

    .line 2033
    goto :goto_2

    .line 2035
    :cond_1
    aget-object v5, v0, v3

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 2036
    .local v5, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v6, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v5, v6}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v6

    check-cast v6, Lcom/sun/mail/imap/protocol/UID;

    move-object v7, v6

    .local v7, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v6, :cond_2

    .line 2037
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2031
    .end local v5    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v7    # "u":Lcom/sun/mail/imap/protocol/UID;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2040
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2041
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2043
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 2044
    .local v2, "lv":[J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2045
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/UID;

    iget-wide v4, v4, Lcom/sun/mail/imap/protocol/UID;->uid:J

    aput-wide v4, v2, v3

    .line 2044
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2046
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method public fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1950
    const-string v0, "UID"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1953
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1955
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 1956
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1957
    const-class v2, Lcom/sun/mail/imap/protocol/UID;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/UID;

    return-object v2

    .line 1958
    :cond_0
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1959
    return-object v3

    .line 1961
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1962
    return-object v3
.end method

.method public getACL(Ljava/lang/String;)[Lcom/sun/mail/imap/ACL;
    .locals 12
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2971
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2974
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2975
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 2977
    const-string v2, "GETACL"

    invoke-virtual {p0, v2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2978
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2981
    .local v3, "response":Lcom/sun/mail/iap/Response;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2982
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/ACL;>;"
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2983
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 2984
    aget-object v7, v2, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_0

    .line 2985
    goto :goto_3

    .line 2987
    :cond_0
    aget-object v7, v2, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2988
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2992
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2993
    const/4 v8, 0x0

    .line 2994
    .local v8, "name":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    if-eqz v9, :cond_2

    .line 2995
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v9

    .line 2996
    .local v9, "rights":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2997
    goto :goto_2

    .line 2998
    :cond_1
    new-instance v10, Lcom/sun/mail/imap/ACL;

    new-instance v11, Lcom/sun/mail/imap/Rights;

    invoke-direct {v11, v9}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v8, v11}, Lcom/sun/mail/imap/ACL;-><init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V

    .line 2999
    .local v10, "acl":Lcom/sun/mail/imap/ACL;
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3000
    .end local v9    # "rights":Ljava/lang/String;
    .end local v10    # "acl":Lcom/sun/mail/imap/ACL;
    goto :goto_1

    .line 3001
    :cond_2
    :goto_2
    const/4 v9, 0x0

    aput-object v9, v2, v5

    .line 2983
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v8    # "name":Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3007
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3008
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3009
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/imap/ACL;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0

    .line 2972
    .end local v1    # "args":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/ACL;>;"
    :cond_5
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCapabilities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    return-object v0
.end method

.method protected getCopyUID([Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/CopyUID;
    .locals 11
    .param p1, "rr"    # [Lcom/sun/mail/iap/Response;

    .line 2324
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 2325
    aget-object v1, p1, v0

    .line 2326
    .local v1, "r":Lcom/sun/mail/iap/Response;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2327
    goto :goto_2

    .line 2329
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    move v3, v2

    .local v3, "b":B
    if-lez v2, :cond_1

    const/16 v2, 0x5b

    if-eq v3, v2, :cond_1

    .line 2330
    goto :goto_1

    .line 2331
    :cond_1
    if-nez v3, :cond_2

    .line 2332
    goto :goto_2

    .line 2334
    :cond_2
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v2

    .line 2335
    .local v2, "s":Ljava/lang/String;
    const-string v4, "COPYUID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2336
    goto :goto_2

    .line 2339
    :cond_3
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    .line 2340
    .local v4, "uidvalidity":J
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v6

    .line 2341
    .local v6, "src":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v7

    .line 2342
    .local v7, "dst":Ljava/lang/String;
    new-instance v8, Lcom/sun/mail/imap/CopyUID;

    .line 2343
    invoke-static {v6}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v9

    invoke-static {v7}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v10

    invoke-direct {v8, v4, v5, v9, v10}, Lcom/sun/mail/imap/CopyUID;-><init>(J[Lcom/sun/mail/imap/protocol/UIDSet;[Lcom/sun/mail/imap/protocol/UIDSet;)V

    .line 2342
    return-object v8

    .line 2324
    .end local v1    # "r":Lcom/sun/mail/iap/Response;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "b":B
    .end local v4    # "uidvalidity":J
    .end local v6    # "src":Ljava/lang/String;
    .end local v7    # "dst":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2345
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;
    .locals 1

    .line 183
    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchItems:[Lcom/sun/mail/imap/protocol/FetchItem;

    return-object v0
.end method

.method getIMAPOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1028
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 10
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2788
    const-string v0, "QUOTA"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2791
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2792
    .local v1, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2794
    const-string v2, "GETQUOTA"

    invoke-virtual {p0, v2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2796
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 2797
    .local v3, "quota":Ljavax/mail/Quota;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2798
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota;>;"
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    .line 2801
    .local v5, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2802
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v2

    .local v7, "len":I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 2803
    aget-object v8, v2, v6

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_0

    .line 2804
    goto :goto_1

    .line 2806
    :cond_0
    aget-object v8, v2, v6

    check-cast v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2807
    .local v8, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v8, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2808
    invoke-direct {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v3

    .line 2809
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2810
    const/4 v9, 0x0

    aput-object v9, v2, v6

    .line 2802
    .end local v8    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2816
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2817
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2818
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Quota;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0

    .line 2789
    .end local v1    # "args":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "quota":Ljavax/mail/Quota;
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Quota;>;"
    .end local v5    # "response":Lcom/sun/mail/iap/Response;
    :cond_3
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "QUOTA not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 18
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2719
    move-object/from16 v0, p0

    const-string v1, "QUOTA"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2722
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2723
    .local v2, "args":Lcom/sun/mail/iap/Argument;
    move-object/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 2725
    const-string v4, "GETQUOTAROOT"

    invoke-virtual {v0, v4, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 2727
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    .line 2729
    .local v5, "response":Lcom/sun/mail/iap/Response;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2732
    .local v6, "tab":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/mail/Quota;>;"
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2733
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v4

    .local v8, "len":I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 2734
    aget-object v9, v4, v7

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_0

    .line 2735
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_3

    .line 2737
    :cond_0
    aget-object v9, v4, v7

    check-cast v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2738
    .local v9, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v10, "QUOTAROOT"

    invoke-virtual {v9, v10}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    .line 2743
    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 2745
    const/4 v10, 0x0

    .line 2746
    .local v10, "root":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    if-eqz v12, :cond_1

    .line 2747
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 2748
    new-instance v12, Ljavax/mail/Quota;

    invoke-direct {v12, v10}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2749
    :cond_1
    aput-object v11, v4, v7

    .line 2750
    .end local v10    # "root":Ljava/lang/String;
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v9, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2751
    invoke-direct {v0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v10

    .line 2752
    .local v10, "quota":Ljavax/mail/Quota;
    iget-object v12, v10, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/mail/Quota;

    .line 2753
    .local v12, "q":Ljavax/mail/Quota;
    if-eqz v12, :cond_3

    iget-object v13, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v13, :cond_3

    .line 2755
    iget-object v13, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v13, v13

    iget-object v14, v10, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v14, v14

    add-int/2addr v13, v14

    .line 2756
    .local v13, "newl":I
    new-array v14, v13, [Ljavax/mail/Quota$Resource;

    .line 2757
    .local v14, "newr":[Ljavax/mail/Quota$Resource;
    iget-object v15, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    iget-object v11, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v11, v11

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-static {v15, v1, v14, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2759
    iget-object v11, v10, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    iget-object v15, v12, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v15, v15

    move-object/from16 v17, v2

    .end local v2    # "args":Lcom/sun/mail/iap/Argument;
    .local v17, "args":Lcom/sun/mail/iap/Argument;
    iget-object v2, v10, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v2, v2

    invoke-static {v11, v1, v14, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2761
    iput-object v14, v10, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    goto :goto_2

    .line 2753
    .end local v13    # "newl":I
    .end local v14    # "newr":[Ljavax/mail/Quota$Resource;
    .end local v17    # "args":Lcom/sun/mail/iap/Argument;
    .restart local v2    # "args":Lcom/sun/mail/iap/Argument;
    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 2763
    .end local v2    # "args":Lcom/sun/mail/iap/Argument;
    .restart local v17    # "args":Lcom/sun/mail/iap/Argument;
    :goto_2
    iget-object v1, v10, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-interface {v6, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    const/4 v1, 0x0

    aput-object v1, v4, v7

    goto :goto_3

    .line 2750
    .end local v10    # "quota":Ljavax/mail/Quota;
    .end local v12    # "q":Ljavax/mail/Quota;
    .end local v17    # "args":Lcom/sun/mail/iap/Argument;
    .restart local v2    # "args":Lcom/sun/mail/iap/Argument;
    :cond_4
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 2733
    .end local v2    # "args":Lcom/sun/mail/iap/Argument;
    .end local v9    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .restart local v17    # "args":Lcom/sun/mail/iap/Argument;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_0

    .end local v17    # "args":Lcom/sun/mail/iap/Argument;
    .restart local v2    # "args":Lcom/sun/mail/iap/Argument;
    :cond_5
    move-object/from16 v17, v2

    .end local v2    # "args":Lcom/sun/mail/iap/Argument;
    .restart local v17    # "args":Lcom/sun/mail/iap/Argument;
    goto :goto_4

    .line 2732
    .end local v7    # "i":I
    .end local v8    # "len":I
    .end local v17    # "args":Lcom/sun/mail/iap/Argument;
    .restart local v2    # "args":Lcom/sun/mail/iap/Argument;
    :cond_6
    move-object/from16 v17, v2

    .line 2770
    .end local v2    # "args":Lcom/sun/mail/iap/Argument;
    .restart local v17    # "args":Lcom/sun/mail/iap/Argument;
    :goto_4
    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2771
    invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2773
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/mail/Quota;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/mail/Quota;

    return-object v1

    .line 2720
    .end local v4    # "r":[Lcom/sun/mail/iap/Response;
    .end local v5    # "response":Lcom/sun/mail/iap/Response;
    .end local v6    # "tab":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/mail/Quota;>;"
    .end local v17    # "args":Lcom/sun/mail/iap/Argument;
    :cond_7
    move-object/from16 v3, p1

    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "GETQUOTAROOT not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
    .locals 2

    .line 1876
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1877
    .local v0, "ret":Lcom/sun/mail/iap/ByteArray;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1878
    return-object v0
.end method

.method protected getSearchSequence()Lcom/sun/mail/imap/protocol/SearchSequence;
    .locals 1

    .line 2589
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchSequence:Lcom/sun/mail/imap/protocol/SearchSequence;

    if-nez v0, :cond_0

    .line 2590
    new-instance v0, Lcom/sun/mail/imap/protocol/SearchSequence;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/SearchSequence;-><init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchSequence:Lcom/sun/mail/imap/protocol/SearchSequence;

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchSequence:Lcom/sun/mail/imap/protocol/SearchSequence;

    return-object v0
.end method

.method public handleCapabilityResponse([Lcom/sun/mail/iap/Response;)V
    .locals 6
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;

    .line 208
    const/4 v0, 0x1

    .line 209
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 210
    aget-object v3, p1, v1

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v3, :cond_0

    .line 211
    goto :goto_1

    .line 213
    :cond_0
    aget-object v3, p1, v1

    check-cast v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 219
    .local v3, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v4, "CAPABILITY"

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    if-eqz v0, :cond_1

    .line 222
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 223
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .line 224
    const/4 v0, 0x0

    .line 226
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 209
    .end local v3    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    return-void
.end method

.method protected handleLoginResult(Lcom/sun/mail/iap/Response;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1040
    const-string v0, "LOGIN-REFERRALS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->referralException:Z

    if-eqz v0, :cond_1

    .line 1042
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->checkReferral(Lcom/sun/mail/iap/Response;)V

    .line 1043
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1044
    return-void
.end method

.method public hasCapability(Ljava/lang/String;)Z
    .locals 4
    .param p1, "c"    # Ljava/lang/String;

    .line 403
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 405
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 406
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    return v1

    .line 410
    :cond_1
    return v2

    .line 412
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public id(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3266
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ID"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3269
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/ID;->getArgumentList(Ljava/util/Map;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 3271
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .line 3272
    .local v2, "id":Lcom/sun/mail/imap/protocol/ID;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    .line 3275
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 3276
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v6, v1

    .local v6, "len":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 3277
    aget-object v7, v1, v4

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_0

    .line 3278
    goto :goto_1

    .line 3280
    :cond_0
    aget-object v7, v1, v4

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 3281
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3282
    if-nez v2, :cond_1

    .line 3283
    new-instance v8, Lcom/sun/mail/imap/protocol/ID;

    invoke-direct {v8, v7}, Lcom/sun/mail/imap/protocol/ID;-><init>(Lcom/sun/mail/iap/Response;)V

    move-object v2, v8

    .line 3284
    :cond_1
    aput-object v5, v1, v4

    .line 3276
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3290
    .end local v4    # "i":I
    .end local v6    # "len":I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3291
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3292
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/ID;->getServerParams()Ljava/util/Map;

    move-result-object v5

    :goto_2
    return-object v5

    .line 3267
    .end local v1    # "r":[Lcom/sun/mail/iap/Response;
    .end local v2    # "id":Lcom/sun/mail/imap/protocol/ID;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    :cond_5
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ID not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public id(Ljava/lang/String;)V
    .locals 2
    .param p1, "guid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1098
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1099
    .local v0, "gmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "GUID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/util/Map;)Ljava/util/Map;

    .line 1101
    return-void
.end method

.method public idleAbort()V
    .locals 5

    .line 3245
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 3247
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_0
    sget-object v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3248
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3252
    goto :goto_0

    .line 3249
    :catch_0
    move-exception v1

    .line 3251
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Exception aborting IDLE"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3253
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized idleStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 3131
    :try_start_0
    const-string v0, "IDLE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3135
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    const/4 v1, 0x0

    .line 3136
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 3140
    .local v2, "r":Lcom/sun/mail/iap/Response;
    :try_start_1
    const-string v3, "IDLE"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
    :try_end_1
    .catch Lcom/sun/mail/iap/LiteralException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3148
    goto :goto_0

    .line 3144
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v3

    .line 3146
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3147
    const/4 v1, 0x1

    goto :goto_0

    .line 3141
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 3142
    .local v3, "lex":Lcom/sun/mail/iap/LiteralException;
    invoke-virtual {v3}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3143
    const/4 v1, 0x1

    .line 3148
    .end local v3    # "lex":Lcom/sun/mail/iap/LiteralException;
    nop

    .line 3150
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 3152
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .line 3158
    :goto_1
    goto :goto_2

    .line 3156
    :catch_2
    move-exception v3

    .line 3157
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    goto :goto_0

    .line 3153
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v3

    .line 3155
    .local v3, "ioex":Ljava/io/IOException;
    :try_start_4
    invoke-static {v3}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4

    move-object v2, v4

    .end local v3    # "ioex":Ljava/io/IOException;
    goto :goto_1

    .line 3160
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3162
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3163
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3166
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/mail/iap/Response;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/mail/iap/Response;

    .line 3167
    .local v3, "responses":[Lcom/sun/mail/iap/Response;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    move-object v2, v4

    .line 3170
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3171
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3172
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3173
    :cond_3
    monitor-exit p0

    return-void

    .line 3132
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v1    # "done":Z
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    .end local v3    # "responses":[Lcom/sun/mail/iap/Response;
    :cond_4
    :try_start_5
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "IDLE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    return v0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cap"    # Ljava/lang/String;

    .line 1335
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enabled:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1336
    const/4 v0, 0x0

    return v0

    .line 1338
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isREV1()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    return v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1492
    const-string v0, "LIST"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 10
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3023
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3026
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 3027
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 3028
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 3030
    const-string v1, "LISTRIGHTS"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 3031
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 3034
    .local v3, "response":Lcom/sun/mail/iap/Response;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3035
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/Rights;>;"
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3036
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 3037
    aget-object v7, v2, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_0

    .line 3038
    goto :goto_2

    .line 3040
    :cond_0
    aget-object v7, v2, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 3041
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3045
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 3047
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 3049
    :goto_1
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "rights":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 3050
    new-instance v8, Lcom/sun/mail/imap/Rights;

    invoke-direct {v8, v9}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3051
    :cond_1
    const/4 v8, 0x0

    aput-object v8, v2, v5

    .line 3036
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v9    # "rights":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3057
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3058
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3059
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/Rights;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/Rights;

    return-object v1

    .line 3024
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    .end local v4    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/Rights;>;"
    :cond_4
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 485
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 486
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 487
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 489
    const/4 v1, 0x0

    .line 491
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    :try_start_0
    iget-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "LOGIN command trace suppressed"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V

    .line 495
    :cond_0
    const-string v2, "LOGIN"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 497
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 498
    nop

    .line 501
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleCapabilityResponse([Lcom/sun/mail/iap/Response;)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 507
    iget-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOGIN command result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    sub-int/2addr v5, v3

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 509
    :cond_1
    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleLoginResult(Lcom/sun/mail/iap/Response;)V

    .line 511
    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 513
    iput-boolean v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 514
    return-void

    .line 497
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 498
    throw v2
.end method

.method public logout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 465
    :try_start_0
    const-string v0, "LOGOUT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 467
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 470
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 473
    nop

    .line 474
    return-void

    .line 472
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 473
    throw v0
.end method

.method public lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1506
    const-string v0, "LSUB"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public move(IILjava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    .line 2246
    return-void
.end method

.method public move([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2229
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    .line 2230
    return-void
.end method

.method public moveuid(IILjava/lang/String;)Lcom/sun/mail/imap/CopyUID;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    move-result-object v0

    return-object v0
.end method

.method public moveuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2261
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/imap/CopyUID;

    move-result-object v0

    return-object v0
.end method

.method public myRights(Ljava/lang/String;)Lcom/sun/mail/imap/Rights;
    .locals 10
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3071
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3074
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 3075
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 3077
    const-string v1, "MYRIGHTS"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 3078
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 3081
    .local v3, "response":Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 3082
    .local v4, "rights":Lcom/sun/mail/imap/Rights;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3083
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 3084
    aget-object v7, v2, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_0

    .line 3085
    goto :goto_1

    .line 3087
    :cond_0
    aget-object v7, v2, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 3088
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3091
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 3092
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v8

    .line 3093
    .local v8, "rs":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 3094
    new-instance v9, Lcom/sun/mail/imap/Rights;

    invoke-direct {v9, v8}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 3095
    :cond_1
    const/4 v9, 0x0

    aput-object v9, v2, v5

    .line 3083
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v8    # "rs":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3101
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3102
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3103
    return-object v4

    .line 3072
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    .end local v4    # "rights":Lcom/sun/mail/imap/Rights;
    :cond_4
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public namespace()Lcom/sun/mail/imap/protocol/Namespaces;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2677
    const-string v0, "NAMESPACE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2680
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2682
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 2683
    .local v3, "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    .line 2686
    .local v4, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2687
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 2688
    aget-object v7, v2, v5

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v7, :cond_0

    .line 2689
    goto :goto_1

    .line 2691
    :cond_0
    aget-object v7, v2, v5

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2692
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2693
    if-nez v3, :cond_1

    .line 2694
    new-instance v8, Lcom/sun/mail/imap/protocol/Namespaces;

    invoke-direct {v8, v7}, Lcom/sun/mail/imap/protocol/Namespaces;-><init>(Lcom/sun/mail/iap/Response;)V

    move-object v3, v8

    .line 2695
    :cond_1
    aput-object v1, v2, v5

    .line 2687
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2701
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2702
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2703
    return-object v3

    .line 2678
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    .end local v4    # "response":Lcom/sun/mail/iap/Response;
    :cond_4
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "NAMESPACE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IMAPProtocol noop"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 454
    const-string v0, "NOOP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 455
    return-void
.end method

.method protected parseCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 260
    nop

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "s":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 262
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1

    .line 263
    goto :goto_1

    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipToken()V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "AUTH="

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    :goto_1
    return-void
.end method

.method public peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 1
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1727
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public peekBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1765
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1796
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
    .locals 3
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 295
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-nez v0, :cond_4

    .line 299
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".referralexception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->referralException:Z

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->checkReferral(Lcom/sun/mail/iap/Response;)V

    .line 306
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 307
    return-void

    .line 310
    :cond_1
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v0, :cond_3

    .line 311
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 312
    .local v0, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v1, "PREAUTH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 314
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 319
    return-void

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 317
    new-instance v1, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v1

    .line 310
    .end local v0    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_4
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->checkReferral(Lcom/sun/mail/iap/Response;)V

    .line 297
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v0
.end method

.method public processIdleResponse(Lcom/sun/mail/iap/Response;)Z
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3212
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    .line 3213
    .local v0, "responses":[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3214
    const/4 v1, 0x0

    .line 3215
    .local v1, "done":Z
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 3217
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3218
    const/4 v1, 0x1

    .line 3221
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3222
    const/4 v1, 0x1

    .line 3224
    :cond_1
    if-eqz v1, :cond_2

    .line 3225
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    .line 3227
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 3228
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public proxyauth(Ljava/lang/String;)V
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1054
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1055
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1057
    const-string v1, "PROXYAUTH"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1058
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyAuthUser:Ljava/lang/String;

    .line 1059
    return-void
.end method

.method public declared-synchronized readIdleResponse()Lcom/sun/mail/iap/Response;
    .locals 3

    monitor-enter p0

    .line 3186
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3187
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 3188
    :cond_0
    const/4 v0, 0x0

    .line 3190
    .local v0, "r":Lcom/sun/mail/iap/Response;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 3197
    goto :goto_0

    .line 3194
    .end local p0    # "this":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v1

    .line 3196
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 3191
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 3193
    .local v1, "ioex":Ljava/io/IOException;
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 3197
    .end local v1    # "ioex":Ljava/io/IOException;
    nop

    .line 3198
    :goto_0
    monitor-exit p0

    return-object v0

    .line 3185
    .end local v0    # "r":Lcom/sun/mail/iap/Response;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 389
    .local v0, "r":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v1, "FETCH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    new-instance v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    move-object v0, v1

    .line 391
    :cond_0
    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1446
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1447
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1450
    const-string v1, "RENAME"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1451
    return-void
.end method

.method public sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "allowed"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 959
    move-object v1, p0

    move-object v2, p1

    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sasl.usecanonicalhostname"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    .line 962
    .local v3, "useCanonicalHostName":Z
    if-eqz v3, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v0, "serviceHost":Ljava/lang/String;
    goto :goto_0

    .line 965
    .end local v0    # "serviceHost":Ljava/lang/String;
    :cond_0
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->host:Ljava/lang/String;

    move-object v5, v0

    .line 966
    .local v5, "serviceHost":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    const/4 v6, 0x1

    if-nez v0, :cond_1

    .line 968
    :try_start_0
    const-string v0, "com.sun.mail.imap.protocol.IMAPSaslAuthenticator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 970
    .local v0, "sac":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    const-class v9, Ljava/util/Properties;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-class v9, Lcom/sun/mail/util/MailLogger;

    const/4 v11, 0x3

    aput-object v9, v8, v11

    const-class v9, Ljava/lang/String;

    const/4 v12, 0x4

    aput-object v9, v8, v12

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 977
    .local v8, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    aput-object v4, v7, v6

    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    aput-object v4, v7, v10

    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    aput-object v4, v7, v11

    aput-object v5, v7, v12

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    iput-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .end local v0    # "sac":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Can\'t load SASL authenticator"

    invoke-virtual {v4, v6, v7, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 988
    return-void

    .line 994
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    array-length v0, v2

    if-lez v0, :cond_4

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 997
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 998
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    aget-object v8, v2, v4

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 999
    aget-object v7, v2, v4

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v0

    .end local v4    # "i":I
    goto :goto_3

    .line 1002
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    move-object v4, v0

    .line 1004
    .local v4, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    .line 1008
    .local v13, "mechs":[Ljava/lang/String;
    :try_start_1
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1009
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "SASL authentication command trace suppressed"

    invoke-virtual {v0, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->suspendTracing()V

    .line 1013
    :cond_5
    iget-object v7, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    move-object v8, v13

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lcom/sun/mail/imap/protocol/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1014
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1015
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "SASL authentication succeeded"

    invoke-virtual {v0, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1016
    :cond_6
    iput-boolean v6, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    goto :goto_4

    .line 1018
    :cond_7
    iget-boolean v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noauthdebug:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1019
    iget-object v0, v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "SASL authentication failed"

    invoke-virtual {v0, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 1023
    nop

    .line 1024
    return-void

    .line 1022
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resumeTracing()V

    .line 1023
    throw v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[I
    .locals 1
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 2464
    const-string v0, "ALL"

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    return-object v0
.end method

.method public search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I
    .locals 1
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 2449
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 1
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 7
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "rd"    # Lcom/sun/mail/imap/ResyncData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1197
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1198
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1200
    if-eqz p2, :cond_3

    .line 1201
    sget-object v1, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v1, :cond_1

    .line 1202
    const-string v1, "CONDSTORE"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1204
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    invoke-virtual {v2, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 1203
    :cond_0
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "CONDSTORE not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1206
    :cond_1
    const-string v1, "QRESYNC"

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1208
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->resyncArgs(Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 1207
    :cond_2
    new-instance v1, Lcom/sun/mail/iap/BadCommandException;

    const-string v2, "QRESYNC not supported"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1212
    :cond_3
    :goto_0
    const-string v1, "SELECT"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1216
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    new-instance v2, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 1219
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1221
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, v1, v3

    .line 1223
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1224
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "READ-ONLY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 1225
    iput v4, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    goto :goto_1

    .line 1227
    :cond_4
    const/4 v4, 0x2

    iput v4, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 1230
    :cond_5
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1231
    return-object v2
.end method

.method public setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V
    .locals 4
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "modifier"    # C
    .param p3, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2919
    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2922
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2923
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 2924
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2925
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getRights()Lcom/sun/mail/imap/Rights;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/Rights;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2926
    .local v1, "rights":Ljava/lang/String;
    const/16 v2, 0x2b

    if-eq p2, v2, :cond_0

    const/16 v2, 0x2d

    if-ne p2, v2, :cond_1

    .line 2927
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2928
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2930
    const-string v2, "SETACL"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2931
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2934
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2935
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2936
    return-void

    .line 2920
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "rights":Ljava/lang/String;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "ACL not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 239
    nop

    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    move v1, v0

    .local v1, "b":B
    if-lez v0, :cond_0

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_0

    .line 240
    goto :goto_0

    .line 241
    :cond_0
    if-nez v1, :cond_1

    .line 242
    return-void

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "s":Ljava/lang/String;
    const-string v2, "CAPABILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    return-void

    .line 247
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .line 249
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 250
    return-void
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 5
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2831
    const-string v0, "QUOTA"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2834
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2835
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    iget-object v1, p1, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2836
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2837
    .local v1, "qargs":Lcom/sun/mail/iap/Argument;
    iget-object v2, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v2, :cond_0

    .line 2838
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 2839
    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v3, v3, v2

    iget-object v3, v3, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2840
    iget-object v3, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v3, v3, v2

    iget-wide v3, v3, Ljavax/mail/Quota$Resource;->limit:J

    invoke-virtual {v1, v3, v4}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 2838
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2843
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 2845
    const-string v2, "SETQUOTA"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2846
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 2873
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2874
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2878
    return-void

    .line 2832
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "qargs":Lcom/sun/mail/iap/Argument;
    .end local v2    # "r":[Lcom/sun/mail/iap/Response;
    .end local v3    # "response":Lcom/sun/mail/iap/Response;
    :cond_1
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "QUOTA not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sort([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[I
    .locals 13
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .param p2, "sterm"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 2612
    const-string v0, "SORT*"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2615
    if-eqz p1, :cond_7

    array-length v0, p1

    if-eqz v0, :cond_7

    .line 2618
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2619
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 2620
    .local v1, "sargs":Lcom/sun/mail/iap/Argument;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 2621
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/sun/mail/imap/SortTerm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2620
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2622
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 2624
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2625
    if-eqz p2, :cond_1

    .line 2627
    nop

    .line 2628
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getSearchSequence()Lcom/sun/mail/imap/protocol/SearchSequence;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    .line 2627
    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2632
    goto :goto_1

    .line 2629
    :catch_0
    move-exception v2

    .line 2631
    .local v2, "ioex":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/search/SearchException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2634
    .end local v2    # "ioex":Ljava/io/IOException;
    :cond_1
    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 2636
    :goto_1
    const-string v2, "SORT"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 2637
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    .line 2638
    .local v4, "response":Lcom/sun/mail/iap/Response;
    const/4 v5, 0x0

    .line 2641
    .local v5, "matches":[I
    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2642
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2644
    .local v6, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v3

    .local v8, "len":I
    :goto_2
    if-ge v7, v8, :cond_5

    .line 2645
    aget-object v9, v3, v7

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_2

    .line 2646
    goto :goto_4

    .line 2648
    :cond_2
    aget-object v9, v3, v7

    check-cast v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 2649
    .local v9, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v9, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2650
    :goto_3
    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v10

    move v11, v10

    .local v11, "num":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_3

    .line 2651
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2652
    :cond_3
    const/4 v10, 0x0

    aput-object v10, v3, v7

    .line 2644
    .end local v9    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v11    # "num":I
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2657
    .end local v7    # "i":I
    .end local v8    # "len":I
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 2658
    .local v2, "vsize":I
    new-array v5, v2, [I

    .line 2659
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v2, :cond_6

    .line 2660
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    .line 2659
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2664
    .end local v2    # "vsize":I
    .end local v6    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "i":I
    :cond_6
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2665
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2666
    return-object v5

    .line 2616
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "sargs":Lcom/sun/mail/iap/Argument;
    .end local v3    # "r":[Lcom/sun/mail/iap/Response;
    .end local v4    # "response":Lcom/sun/mail/iap/Response;
    .end local v5    # "matches":[I
    :cond_7
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "Must have at least one sort term"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2613
    :cond_8
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "SORT not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTLS()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1111
    :try_start_0
    const-string v0, "STARTTLS"

    invoke-super {p0, v0}, Lcom/sun/mail/iap/Protocol;->startTLS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    nop

    .line 1127
    return-void

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "STARTTLS Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1122
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sun/mail/iap/Response;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1123
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1124
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 1125
    new-instance v2, Lcom/sun/mail/iap/ProtocolException;

    const-string v3, "STARTTLS failure"

    invoke-direct {v2, v3, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1112
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "r":[Lcom/sun/mail/iap/Response;
    :catch_1
    move-exception v0

    .line 1113
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "STARTTLS ProtocolException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1117
    throw v0
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    .locals 10
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1365
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IMAP4SUNVERSION"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1368
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "STATUS not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_1
    :goto_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1371
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1373
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1374
    .local v1, "itemArgs":Lcom/sun/mail/iap/Argument;
    if-nez p2, :cond_2

    .line 1375
    sget-object p2, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    .line 1377
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p2

    .local v3, "len":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1378
    aget-object v4, p2, v2

    invoke-virtual {v1, v4}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1377
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1379
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_3
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 1381
    const-string v2, "STATUS"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1383
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 1384
    .local v4, "status":Lcom/sun/mail/imap/protocol/Status;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    .line 1387
    .local v5, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1388
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, v3

    .local v7, "len":I
    :goto_2
    if-ge v6, v7, :cond_7

    .line 1389
    aget-object v8, v3, v6

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_4

    .line 1390
    goto :goto_4

    .line 1392
    :cond_4
    aget-object v8, v3, v6

    check-cast v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1393
    .local v8, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v8, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1394
    if-nez v4, :cond_5

    .line 1395
    new-instance v9, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v9, v8}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    move-object v4, v9

    goto :goto_3

    .line 1397
    :cond_5
    new-instance v9, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v9, v8}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-static {v4, v9}, Lcom/sun/mail/imap/protocol/Status;->add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V

    .line 1398
    :goto_3
    const/4 v9, 0x0

    aput-object v9, v3, v6

    .line 1388
    .end local v8    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1404
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_7
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1405
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1406
    return-object v4
.end method

.method public storeFlags(IILjavax/mail/Flags;Z)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flags"    # Ljavax/mail/Flags;
    .param p4, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 2357
    return-void
.end method

.method public storeFlags(ILjavax/mail/Flags;Z)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2369
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 2370
    return-void
.end method

.method public storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    .locals 1
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2350
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 2351
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1461
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1462
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1464
    const-string v1, "SUBSCRIBE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1465
    return-void
.end method

.method protected supportsNonSyncLiterals()Z
    .locals 1

    .line 374
    const-string v0, "LITERAL+"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportsUtf8()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->utf8:Z

    return v0
.end method

.method public uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
    .locals 2
    .param p1, "set"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1688
    const-string v0, "UIDPLUS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UID EXPUNGE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1691
    return-void

    .line 1689
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UID EXPUNGE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uidfetchChangedSince(JJJ)[I
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "modseq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2090
    const-wide/16 v1, -0x1

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    const-string v1, "*"

    goto :goto_0

    .line 2091
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2092
    .local v0, "msgSequence":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID FETCH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (FLAGS) (CHANGEDSINCE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2093
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2092
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 2095
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2096
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "len":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 2097
    aget-object v5, v1, v3

    if-eqz v5, :cond_2

    aget-object v5, v1, v3

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v5, :cond_1

    .line 2098
    goto :goto_2

    .line 2100
    :cond_1
    aget-object v5, v1, v3

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 2101
    .local v5, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2096
    .end local v5    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2104
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2105
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2109
    .local v3, "vsize":I
    new-array v4, v3, [I

    .line 2110
    .local v4, "matches":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v3, :cond_4

    .line 2111
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 2110
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2112
    .end local v5    # "i":I
    :cond_4
    return-object v4
.end method

.method public unauthenticate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1080
    const-string v0, "X-UNAUTHENTICATE"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    const-string v0, "UNAUTHENTICATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 1084
    return-void

    .line 1081
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UNAUTHENTICATE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unselect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1349
    const-string v0, "UNSELECT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1351
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1352
    return-void

    .line 1350
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UNSELECT not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1475
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1476
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V

    .line 1478
    const-string v1, "UNSUBSCRIBE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1479
    return-void
.end method

.method protected writeMailboxName(Lcom/sun/mail/iap/Argument;Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # Lcom/sun/mail/iap/Argument;
    .param p2, "name"    # Ljava/lang/String;

    .line 1165
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->utf8:Z

    if-eqz v0, :cond_0

    .line 1166
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 1169
    :cond_0
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 1170
    :goto_0
    return-void
.end method
