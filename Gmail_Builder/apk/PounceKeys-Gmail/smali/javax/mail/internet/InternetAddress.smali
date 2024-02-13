.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final allowUtf8:Z

.field private static final ignoreBogusGroupName:Z

.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"

.field private static final useCanonicalHostName:Z


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    nop

    .line 62
    const-string v0, "mail.mime.address.ignorebogusgroupname"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/InternetAddress;->ignoreBogusGroupName:Z

    .line 65
    nop

    .line 66
    const-string v0, "mail.mime.address.usecanonicalhostname"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/InternetAddress;->useCanonicalHostName:Z

    .line 69
    nop

    .line 70
    const-string v0, "mail.mime.allowutf8"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/InternetAddress;->allowUtf8:Z

    .line 325
    nop

    .line 326
    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 95
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 97
    .local v1, "a":[Ljavax/mail/internet/InternetAddress;
    array-length v2, v1

    if-ne v2, v0, :cond_0

    .line 106
    const/4 v0, 0x0

    aget-object v2, v1, v0

    iget-object v2, v2, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 107
    aget-object v2, v1, v0

    iget-object v2, v2, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v2, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 108
    aget-object v0, v1, v0

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 109
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal address"

    invoke-direct {v0, v2, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 158
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 159
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 124
    if-eqz p2, :cond_1

    .line 125
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method static _getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 6
    .param p0, "session"    # Ljavax/mail/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljavax/mail/internet/AddressException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 616
    const/4 v0, 0x0

    .local v0, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 617
    .local v2, "address":Ljava/lang/String;
    const-string/jumbo v3, "user.name"

    if-nez p0, :cond_0

    .line 618
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {}, Ljavax/mail/internet/InternetAddress;->getLocalHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 621
    :cond_0
    const-string v4, "mail.from"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    if-nez v2, :cond_6

    .line 623
    const-string v4, "mail.user"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 625
    :cond_1
    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 627
    :cond_3
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    :cond_4
    const-string v3, "mail.host"

    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 630
    :cond_5
    invoke-static {}, Ljavax/mail/internet/InternetAddress;->getLocalHostName()Ljava/lang/String;

    move-result-object v1

    .line 634
    :cond_6
    :goto_0
    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 635
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "()<>,;:\\\"[]@\t "

    invoke-static {v4, v5}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 639
    :cond_7
    if-nez v2, :cond_8

    .line 640
    const/4 v3, 0x0

    return-object v3

    .line 642
    :cond_8
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v3, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .locals 12
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "routeAddr"    # Z
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 1245
    const/4 v0, 0x0

    .line 1247
    .local v0, "start":I
    if-eqz p0, :cond_2a

    .line 1249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1250
    .local v1, "len":I
    if-eqz v1, :cond_29

    .line 1257
    const/16 v2, 0x40

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1262
    const/4 v0, 0x0

    :goto_0
    const-string v3, ",:"

    invoke-static {p0, v3, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    .local v4, "i":I
    if-ltz v3, :cond_2

    .line 1264
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1266
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_0

    .line 1268
    add-int/lit8 v0, v4, 0x1

    .line 1269
    goto :goto_1

    .line 1263
    :cond_0
    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    .line 1265
    :cond_1
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v3, "Illegal route-addr"

    invoke-direct {v2, v3, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1282
    .end local v4    # "i":I
    :cond_2
    :goto_1
    const v3, 0xffff

    .line 1283
    .local v3, "c":C
    const v4, 0xffff

    .line 1284
    .local v4, "lastc":C
    const/4 v5, 0x0

    .line 1285
    .local v5, "inquote":Z
    move v6, v0

    .local v6, "i":I
    :goto_2
    const/16 v7, 0x7f

    const/16 v8, 0x20

    const/16 v9, 0x2e

    if-ge v6, v1, :cond_18

    .line 1286
    move v4, v3

    .line 1287
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1290
    const/16 v10, 0x5c

    if-eq v3, v10, :cond_17

    if-ne v4, v10, :cond_3

    .line 1291
    goto/16 :goto_7

    .line 1292
    :cond_3
    const/16 v10, 0x22

    if-ne v3, v10, :cond_9

    .line 1293
    if-eqz v5, :cond_6

    .line 1295
    if-eqz p2, :cond_5

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_5

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_4

    goto :goto_3

    .line 1296
    :cond_4
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Quote not at end of local address"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1298
    :cond_5
    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 1300
    :cond_6
    if-eqz p2, :cond_8

    if-nez v6, :cond_7

    goto :goto_4

    .line 1301
    :cond_7
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Quote not at start of local address"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1303
    :cond_8
    :goto_4
    const/4 v5, 0x1

    .line 1305
    goto/16 :goto_7

    .line 1306
    :cond_9
    const/16 v10, 0xd

    const/16 v11, 0xa

    if-ne v3, v10, :cond_b

    .line 1308
    add-int/lit8 v10, v6, 0x1

    if-ge v10, v1, :cond_d

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_a

    goto :goto_5

    .line 1309
    :cond_a
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Quoted local address contains CR without LF"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1311
    :cond_b
    if-ne v3, v11, :cond_d

    .line 1317
    add-int/lit8 v10, v6, 0x1

    if-ge v10, v1, :cond_d

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v8, :cond_d

    add-int/lit8 v10, v6, 0x1

    .line 1318
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_c

    goto :goto_5

    .line 1319
    :cond_c
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Quoted local address contains newline without whitespace"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1323
    :cond_d
    :goto_5
    if-eqz v5, :cond_e

    .line 1324
    goto :goto_7

    .line 1326
    :cond_e
    if-ne v3, v9, :cond_11

    .line 1327
    if-eq v6, v0, :cond_10

    .line 1330
    if-eq v4, v9, :cond_f

    goto :goto_6

    .line 1331
    :cond_f
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Local address contains dot-dot"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1328
    :cond_10
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Local address starts with dot"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1334
    :cond_11
    :goto_6
    if-ne v3, v2, :cond_14

    .line 1335
    if-eqz v6, :cond_13

    .line 1337
    if-eq v4, v9, :cond_12

    goto :goto_8

    .line 1338
    :cond_12
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Local address ends with dot"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1336
    :cond_13
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing local name"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1342
    :cond_14
    if-le v3, v8, :cond_16

    if-eq v3, v7, :cond_16

    .line 1345
    const-string v7, "()<>,;:\\\"[]@"

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_15

    goto :goto_7

    .line 1346
    :cond_15
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Local address contains illegal character"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1343
    :cond_16
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Local address contains control or whitespace"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1285
    :cond_17
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1349
    :cond_18
    :goto_8
    if-nez v5, :cond_28

    .line 1364
    if-eq v3, v2, :cond_1a

    .line 1365
    if-nez p2, :cond_19

    .line 1367
    return-void

    .line 1366
    :cond_19
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing final \'@domain\'"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1372
    :cond_1a
    add-int/lit8 v0, v6, 0x1

    .line 1373
    if-ge v0, v1, :cond_27

    .line 1376
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v9, :cond_26

    .line 1378
    const/4 v2, 0x0

    .line 1379
    .local v2, "inliteral":Z
    move v6, v0

    :goto_9
    if-ge v6, v1, :cond_24

    .line 1380
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1381
    const/16 v10, 0x5b

    if-ne v3, v10, :cond_1c

    .line 1382
    if-ne v6, v0, :cond_1b

    .line 1385
    const/4 v2, 0x1

    goto :goto_b

    .line 1383
    :cond_1b
    new-instance v7, Ljavax/mail/internet/AddressException;

    const-string v8, "Domain literal not at start of domain"

    invoke-direct {v7, v8, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 1386
    :cond_1c
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_1e

    .line 1387
    add-int/lit8 v10, v1, -0x1

    if-ne v6, v10, :cond_1d

    .line 1390
    const/4 v2, 0x0

    goto :goto_b

    .line 1388
    :cond_1d
    new-instance v7, Ljavax/mail/internet/AddressException;

    const-string v8, "Domain literal end not at end of domain"

    invoke-direct {v7, v8, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 1391
    :cond_1e
    if-le v3, v8, :cond_23

    if-eq v3, v7, :cond_23

    .line 1408
    if-nez v2, :cond_22

    .line 1409
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-nez v10, :cond_20

    const/16 v10, 0x2d

    if-eq v3, v10, :cond_20

    if-ne v3, v9, :cond_1f

    goto :goto_a

    .line 1410
    :cond_1f
    new-instance v7, Ljavax/mail/internet/AddressException;

    const-string v8, "Domain contains illegal character"

    invoke-direct {v7, v8, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 1412
    :cond_20
    :goto_a
    if-ne v3, v9, :cond_22

    if-eq v4, v9, :cond_21

    goto :goto_b

    .line 1413
    :cond_21
    new-instance v7, Ljavax/mail/internet/AddressException;

    const-string v8, "Domain contains dot-dot"

    invoke-direct {v7, v8, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 1417
    :cond_22
    :goto_b
    move v4, v3

    .line 1379
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1392
    :cond_23
    new-instance v7, Ljavax/mail/internet/AddressException;

    const-string v8, "Domain contains control or whitespace"

    invoke-direct {v7, v8, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 1419
    :cond_24
    if-eq v4, v9, :cond_25

    .line 1421
    return-void

    .line 1420
    :cond_25
    new-instance v7, Ljavax/mail/internet/AddressException;

    const-string v8, "Domain ends with dot"

    invoke-direct {v7, v8, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 1377
    .end local v2    # "inliteral":Z
    :cond_26
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Domain starts with dot"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1374
    :cond_27
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Missing domain"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1350
    :cond_28
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v7, "Unterminated quote"

    invoke-direct {v2, v7, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1251
    .end local v3    # "c":C
    .end local v4    # "lastc":C
    .end local v5    # "inquote":Z
    .end local v6    # "i":I
    :cond_29
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v3, "Empty address"

    invoke-direct {v2, v3, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1248
    .end local v1    # "len":I
    :cond_2a
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Address is null"

    invoke-direct {v1, v2}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;

    .line 601
    :try_start_0
    invoke-static {p0}, Ljavax/mail/internet/InternetAddress;->_getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 604
    :catch_0
    move-exception v0

    goto :goto_0

    .line 603
    :catch_1
    move-exception v0

    goto :goto_0

    .line 602
    :catch_2
    move-exception v0

    .line 604
    :goto_0
    nop

    .line 605
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLocalHostName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "host":Ljava/lang/String;
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 652
    .local v1, "me":Ljava/net/InetAddress;
    if-eqz v1, :cond_3

    .line 654
    sget-boolean v2, Ljavax/mail/internet/InternetAddress;->useCanonicalHostName:Z

    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    .line 656
    :cond_0
    if-nez v0, :cond_1

    .line 657
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 659
    :cond_1
    if-nez v0, :cond_2

    .line 660
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 661
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->isInetAddressLiteral(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    :cond_3
    return-object v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .line 1481
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 1486
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1487
    .local v1, "len":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1488
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_0

    .line 1489
    return v2

    .line 1487
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1491
    .end local v2    # "i":I
    :cond_1
    return v0

    .line 1492
    .end local v1    # "len":I
    :catch_0
    move-exception v1

    .line 1493
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method

.method private static isInetAddressLiteral(Ljava/lang/String;)Z
    .locals 6
    .param p0, "addr"    # Ljava/lang/String;

    .line 678
    const/4 v0, 0x0

    .local v0, "sawHex":Z
    const/4 v1, 0x0

    .line 679
    .local v1, "sawColon":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_6

    .line 680
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 681
    .local v3, "c":C
    const/16 v5, 0x30

    if-lt v3, v5, :cond_0

    const/16 v5, 0x39

    if-gt v3, v5, :cond_0

    .line 682
    goto :goto_1

    .line 683
    :cond_0
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_1

    .line 684
    goto :goto_1

    .line 685
    :cond_1
    const/16 v5, 0x61

    if-lt v3, v5, :cond_2

    const/16 v5, 0x7a

    if-le v3, v5, :cond_3

    :cond_2
    const/16 v5, 0x41

    if-lt v3, v5, :cond_4

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_4

    .line 686
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 687
    :cond_4
    const/16 v5, 0x3a

    if-ne v3, v5, :cond_5

    .line 688
    const/4 v1, 0x1

    .line 679
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .restart local v3    # "c":C
    :cond_5
    return v4

    .line 692
    .end local v2    # "i":I
    .end local v3    # "c":C
    :cond_6
    if-eqz v0, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    return v4
.end method

.method private isSimple()Z
    .locals 2

    .line 1428
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 567
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 568
    return v1

    .line 570
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "used"    # I

    .line 580
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 581
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 583
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 705
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 728
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .locals 19
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .param p2, "parseHdr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 768
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .local v1, "start_personal":I
    const/4 v2, -0x1

    .line 769
    .local v2, "end_personal":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 770
    .local v3, "length":I
    const/4 v5, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 771
    .local v6, "ignoreErrors":Z
    :goto_0
    const/4 v7, 0x0

    .line 772
    .local v7, "in_group":Z
    const/4 v8, 0x0

    .line 773
    .local v8, "route_addr":Z
    const/4 v9, 0x0

    .line 775
    .local v9, "rfc822":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v10, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    const/4 v11, -0x1

    move v12, v11

    .local v12, "end":I
    move v13, v11

    .local v13, "start":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_1
    const/16 v4, 0x40

    if-ge v14, v3, :cond_3b

    .line 779
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 781
    .local v16, "c":C
    const-string v15, "Missing \'\"\'"

    sparse-switch v16, :sswitch_data_0

    .line 1153
    const/4 v4, -0x1

    if-ne v13, v4, :cond_3a

    .line 1154
    move v4, v14

    move v13, v4

    .end local v13    # "start":I
    .local v4, "start":I
    goto/16 :goto_1a

    .line 965
    .end local v4    # "start":I
    .restart local v13    # "start":I
    :sswitch_0
    move v4, v14

    .line 966
    .local v4, "lindex":I
    const/4 v9, 0x1

    .line 967
    if-ne v13, v11, :cond_1

    .line 968
    move v13, v14

    .line 970
    :cond_1
    add-int/lit8 v14, v14, 0x1

    :goto_2
    if-ge v14, v3, :cond_2

    .line 971
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 972
    packed-switch v16, :pswitch_data_0

    goto :goto_3

    .line 977
    :pswitch_0
    goto :goto_4

    .line 974
    :pswitch_1
    add-int/lit8 v14, v14, 0x1

    .line 975
    nop

    .line 970
    :goto_3
    add-int/2addr v14, v5

    goto :goto_2

    .line 982
    :cond_2
    :goto_4
    if-lt v14, v3, :cond_3a

    .line 983
    if-eqz v6, :cond_3

    .line 987
    add-int/lit8 v14, v4, 0x1

    goto/16 :goto_1a

    .line 984
    :cond_3
    new-instance v5, Ljavax/mail/internet/AddressException;

    const-string v11, "Missing \']\'"

    invoke-direct {v5, v11, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v5

    .line 929
    .end local v4    # "lindex":I
    :sswitch_1
    if-eqz v6, :cond_4

    .line 933
    if-ne v13, v11, :cond_3a

    .line 934
    move v4, v14

    move v13, v4

    .end local v13    # "start":I
    .local v4, "start":I
    goto/16 :goto_1a

    .line 930
    .end local v4    # "start":I
    .restart local v13    # "start":I
    :cond_4
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing \'<\'"

    invoke-direct {v4, v5, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 831
    :sswitch_2
    const/4 v4, 0x1

    .line 832
    .end local v9    # "rfc822":Z
    .local v4, "rfc822":Z
    if-eqz v8, :cond_9

    .line 833
    if-eqz v6, :cond_8

    .line 838
    if-ne v13, v11, :cond_5

    .line 839
    const/4 v8, 0x0

    .line 840
    const/4 v4, 0x0

    .line 841
    move v9, v11

    .end local v12    # "end":I
    .local v9, "end":I
    move v12, v11

    .line 842
    .end local v13    # "start":I
    .local v12, "start":I
    move v13, v12

    move v12, v9

    move v9, v4

    goto/16 :goto_1a

    .line 844
    .end local v9    # "end":I
    .local v12, "end":I
    .restart local v13    # "start":I
    :cond_5
    if-nez v7, :cond_9

    .line 846
    if-ne v12, v11, :cond_6

    .line 847
    move v12, v14

    .line 848
    :cond_6
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 850
    .local v9, "addr":Ljava/lang/String;
    new-instance v17, Ljavax/mail/internet/InternetAddress;

    invoke-direct/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;-><init>()V

    move-object/from16 v18, v17

    .line 851
    .local v18, "ma":Ljavax/mail/internet/InternetAddress;
    move-object/from16 v5, v18

    .end local v18    # "ma":Ljavax/mail/internet/InternetAddress;
    .local v5, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v5, v9}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 852
    if-ltz v1, :cond_7

    .line 853
    nop

    .line 854
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 855
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 853
    invoke-static/range {v17 .. v17}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 857
    :cond_7
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    const/4 v8, 0x0

    .line 860
    const/4 v4, 0x0

    .line 861
    const/4 v11, -0x1

    move v12, v11

    move v13, v11

    .line 862
    move v2, v11

    move v1, v11

    goto :goto_5

    .line 834
    .end local v5    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v9    # "addr":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljavax/mail/internet/AddressException;

    const-string v9, "Extra route-addr"

    invoke-direct {v5, v9, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v5

    .line 867
    :cond_9
    :goto_5
    move v5, v14

    .line 868
    .local v5, "rindex":I
    const/4 v9, 0x0

    .line 870
    .local v9, "inquote":Z
    add-int/lit8 v14, v14, 0x1

    :goto_6
    if-ge v14, v3, :cond_b

    .line 871
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 872
    sparse-switch v16, :sswitch_data_1

    goto :goto_8

    .line 874
    :sswitch_3
    add-int/lit8 v14, v14, 0x1

    .line 875
    goto :goto_8

    .line 880
    :sswitch_4
    if-eqz v9, :cond_b

    .line 881
    goto :goto_8

    .line 877
    :sswitch_5
    if-nez v9, :cond_a

    const/4 v11, 0x1

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    :goto_7
    move v9, v11

    .line 878
    nop

    .line 870
    :goto_8
    const/4 v11, 0x1

    add-int/2addr v14, v11

    goto :goto_6

    .line 889
    :cond_b
    if-eqz v9, :cond_10

    .line 890
    if-eqz v6, :cond_f

    .line 895
    add-int/lit8 v11, v5, 0x1

    .end local v14    # "index":I
    .local v11, "index":I
    :goto_9
    if-ge v11, v3, :cond_e

    .line 896
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 897
    .end local v16    # "c":C
    .local v14, "c":C
    const/16 v15, 0x5c

    if-ne v14, v15, :cond_c

    .line 898
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 899
    :cond_c
    const/16 v15, 0x3e

    if-ne v14, v15, :cond_d

    .line 900
    move/from16 v16, v14

    move v14, v11

    goto :goto_b

    .line 895
    :cond_d
    :goto_a
    const/4 v15, 0x1

    add-int/2addr v11, v15

    move/from16 v16, v14

    goto :goto_9

    .end local v14    # "c":C
    .restart local v16    # "c":C
    :cond_e
    move v14, v11

    goto :goto_b

    .line 891
    .end local v11    # "index":I
    .local v14, "index":I
    :cond_f
    new-instance v11, Ljavax/mail/internet/AddressException;

    invoke-direct {v11, v15, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v11

    .line 905
    :cond_10
    :goto_b
    if-lt v14, v3, :cond_13

    .line 906
    if-eqz v6, :cond_12

    .line 910
    add-int/lit8 v14, v5, 0x1

    .line 911
    const/4 v11, -0x1

    if-ne v13, v11, :cond_11

    .line 912
    move v11, v5

    move v9, v4

    move v13, v11

    .end local v13    # "start":I
    .local v11, "start":I
    goto/16 :goto_1a

    .line 911
    .end local v11    # "start":I
    .restart local v13    # "start":I
    :cond_11
    move v9, v4

    goto/16 :goto_1a

    .line 907
    :cond_12
    new-instance v11, Ljavax/mail/internet/AddressException;

    const-string v15, "Missing \'>\'"

    invoke-direct {v11, v15, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v11

    .line 916
    :cond_13
    if-nez v7, :cond_15

    .line 917
    if-ltz v13, :cond_14

    .line 919
    move v1, v13

    .line 920
    move v2, v5

    .line 922
    :cond_14
    add-int/lit8 v13, v5, 0x1

    .line 924
    :cond_15
    const/4 v8, 0x1

    .line 925
    move v11, v14

    .line 926
    .end local v12    # "end":I
    .local v11, "end":I
    move v9, v4

    move v12, v11

    goto/16 :goto_1a

    .line 992
    .end local v4    # "rfc822":Z
    .end local v5    # "rindex":I
    .end local v11    # "end":I
    .local v9, "rfc822":Z
    .restart local v12    # "end":I
    :sswitch_6
    const/4 v5, -0x1

    if-ne v13, v5, :cond_16

    .line 993
    const/4 v4, 0x0

    .line 994
    .end local v8    # "route_addr":Z
    .local v4, "route_addr":Z
    const/4 v8, 0x0

    .line 995
    .end local v9    # "rfc822":Z
    .local v8, "rfc822":Z
    move v9, v5

    .end local v12    # "end":I
    .local v9, "end":I
    move v11, v5

    .line 996
    .end local v13    # "start":I
    .local v11, "start":I
    move v12, v9

    move v13, v11

    move v9, v8

    move v8, v4

    goto/16 :goto_1a

    .line 998
    .end local v4    # "route_addr":Z
    .end local v11    # "start":I
    .local v8, "route_addr":Z
    .local v9, "rfc822":Z
    .restart local v12    # "end":I
    .restart local v13    # "start":I
    :cond_16
    if-eqz v7, :cond_18

    .line 999
    const/4 v5, 0x0

    .line 1006
    .end local v7    # "in_group":Z
    .local v5, "in_group":Z
    if-eqz p2, :cond_17

    if-nez p1, :cond_17

    add-int/lit8 v7, v14, 0x1

    if-ge v7, v3, :cond_17

    add-int/lit8 v7, v14, 0x1

    .line 1007
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_17

    .line 1008
    move v7, v5

    goto/16 :goto_1a

    .line 1009
    :cond_17
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1010
    .local v4, "ma":Ljavax/mail/internet/InternetAddress;
    add-int/lit8 v7, v14, 0x1

    .line 1011
    .end local v12    # "end":I
    .local v7, "end":I
    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1012
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    const/4 v8, 0x0

    .line 1015
    const/4 v9, 0x0

    .line 1016
    const/4 v11, -0x1

    move v7, v11

    move v12, v11

    .line 1017
    .end local v13    # "start":I
    .local v12, "start":I
    move v2, v11

    move v1, v11

    .line 1018
    move v13, v12

    move v12, v7

    move v7, v5

    goto/16 :goto_1a

    .line 1020
    .end local v4    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v5    # "in_group":Z
    .local v7, "in_group":Z
    .local v12, "end":I
    .restart local v13    # "start":I
    :cond_18
    if-eqz v6, :cond_19

    goto/16 :goto_11

    .line 1021
    :cond_19
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal semicolon, not in group"

    invoke-direct {v4, v5, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 1090
    :sswitch_7
    const/4 v5, 0x1

    .line 1091
    .end local v9    # "rfc822":Z
    .local v5, "rfc822":Z
    if-eqz v7, :cond_1b

    .line 1092
    if-eqz v6, :cond_1a

    goto :goto_c

    .line 1093
    :cond_1a
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v9, "Nested group"

    invoke-direct {v4, v9, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 1094
    :cond_1b
    :goto_c
    const/4 v9, -0x1

    if-ne v13, v9, :cond_1c

    .line 1095
    move v13, v14

    .line 1096
    :cond_1c
    if-eqz p2, :cond_24

    if-nez p1, :cond_24

    .line 1102
    add-int/lit8 v9, v14, 0x1

    if-ge v9, v3, :cond_21

    .line 1103
    const-string v9, ")>[]:@\\,."

    .line 1104
    .local v9, "addressSpecials":Ljava/lang/String;
    add-int/lit8 v11, v14, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1105
    .local v11, "nc":C
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_21

    .line 1106
    if-eq v11, v4, :cond_1d

    .line 1107
    goto :goto_f

    .line 1116
    :cond_1d
    add-int/lit8 v4, v14, 0x2

    .local v4, "i":I
    :goto_d
    const/16 v15, 0x3b

    if-ge v4, v3, :cond_20

    .line 1117
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1118
    if-ne v11, v15, :cond_1e

    .line 1119
    goto :goto_e

    .line 1120
    :cond_1e
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-ltz v17, :cond_1f

    .line 1121
    goto :goto_e

    .line 1116
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1123
    .end local v4    # "i":I
    :cond_20
    :goto_e
    if-ne v11, v15, :cond_21

    .line 1124
    nop

    .line 778
    .end local v9    # "addressSpecials":Ljava/lang/String;
    .end local v11    # "nc":C
    :goto_f
    move v9, v5

    goto/16 :goto_1a

    .line 1130
    :cond_21
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1131
    .local v4, "gname":Ljava/lang/String;
    sget-boolean v9, Ljavax/mail/internet/InternetAddress;->ignoreBogusGroupName:Z

    if-eqz v9, :cond_23

    .line 1132
    const-string v9, "mailto"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 1133
    const-string v9, "From"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 1134
    const-string v9, "To"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 1135
    const-string v9, "Cc"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 1136
    const-string v9, "Subject"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 1137
    const-string v9, "Re"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1138
    :cond_22
    const/4 v13, -0x1

    goto :goto_10

    .line 1140
    :cond_23
    const/4 v7, 0x1

    .line 1141
    .end local v4    # "gname":Ljava/lang/String;
    :goto_10
    move v9, v5

    goto/16 :goto_1a

    .line 1142
    :cond_24
    const/4 v4, 0x1

    .line 1143
    .end local v7    # "in_group":Z
    .local v4, "in_group":Z
    move v7, v4

    move v9, v5

    goto/16 :goto_1a

    .line 1028
    .end local v4    # "in_group":Z
    .end local v5    # "rfc822":Z
    .restart local v7    # "in_group":Z
    .local v9, "rfc822":Z
    :goto_11
    :sswitch_8
    const/4 v5, -0x1

    if-ne v13, v5, :cond_25

    .line 1029
    const/4 v4, 0x0

    .line 1030
    .end local v8    # "route_addr":Z
    .local v4, "route_addr":Z
    const/4 v8, 0x0

    .line 1031
    .end local v9    # "rfc822":Z
    .local v8, "rfc822":Z
    move v9, v5

    .end local v12    # "end":I
    .local v9, "end":I
    move v11, v5

    .line 1032
    .end local v13    # "start":I
    .local v11, "start":I
    move v12, v9

    move v13, v11

    move v9, v8

    move v8, v4

    goto/16 :goto_1a

    .line 1034
    .end local v4    # "route_addr":Z
    .end local v11    # "start":I
    .local v8, "route_addr":Z
    .local v9, "rfc822":Z
    .restart local v12    # "end":I
    .restart local v13    # "start":I
    :cond_25
    if-eqz v7, :cond_26

    .line 1035
    const/4 v4, 0x0

    .line 1036
    .end local v8    # "route_addr":Z
    .restart local v4    # "route_addr":Z
    move v8, v4

    goto/16 :goto_1a

    .line 1039
    .end local v4    # "route_addr":Z
    .restart local v8    # "route_addr":Z
    :cond_26
    if-ne v12, v5, :cond_27

    .line 1040
    move v12, v14

    .line 1042
    :cond_27
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1043
    .local v5, "addr":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1044
    .local v11, "pers":Ljava/lang/String;
    if-eqz v9, :cond_28

    if-ltz v1, :cond_28

    .line 1045
    nop

    .line 1046
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1045
    invoke-static {v15}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1047
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_28

    .line 1048
    const/4 v11, 0x0

    .line 1056
    :cond_28
    if-eqz p2, :cond_29

    if-nez p1, :cond_29

    if-eqz v11, :cond_29

    .line 1057
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_29

    .line 1058
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_29

    const/16 v4, 0x21

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_29

    .line 1059
    move-object v4, v5

    .line 1060
    .local v4, "tmp":Ljava/lang/String;
    move-object v5, v11

    .line 1061
    move-object v11, v4

    .line 1063
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_29
    if-nez v9, :cond_2c

    if-nez p1, :cond_2c

    if-eqz p2, :cond_2a

    goto :goto_13

    .line 1073
    :cond_2a
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_12
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 1075
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 1076
    .local v15, "a":Ljava/lang/String;
    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "st":Ljava/util/StringTokenizer;
    .local v17, "st":Ljava/util/StringTokenizer;
    invoke-static {v15, v4, v4}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1077
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1078
    .local v4, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v4, v15}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1079
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    .end local v15    # "a":Ljava/lang/String;
    move-object/from16 v4, v17

    goto :goto_12

    .line 1074
    .end local v17    # "st":Ljava/util/StringTokenizer;
    .local v4, "st":Ljava/util/StringTokenizer;
    :cond_2b
    move-object/from16 v17, v4

    .end local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v17    # "st":Ljava/util/StringTokenizer;
    goto :goto_14

    .line 1064
    .end local v17    # "st":Ljava/util/StringTokenizer;
    :cond_2c
    :goto_13
    if-nez v6, :cond_2d

    .line 1065
    const/4 v4, 0x0

    invoke-static {v5, v8, v4}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1066
    :cond_2d
    new-instance v4, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v4}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1067
    .local v4, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v4, v5}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1068
    if-eqz v11, :cond_2e

    .line 1069
    iput-object v11, v4, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 1070
    :cond_2e
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    .end local v4    # "ma":Ljavax/mail/internet/InternetAddress;
    :goto_14
    const/4 v4, 0x0

    .line 1084
    .end local v8    # "route_addr":Z
    .local v4, "route_addr":Z
    const/4 v8, 0x0

    .line 1085
    .end local v9    # "rfc822":Z
    .local v8, "rfc822":Z
    const/4 v15, -0x1

    move v9, v15

    .end local v12    # "end":I
    .local v9, "end":I
    move v12, v15

    .line 1086
    .end local v13    # "start":I
    .local v12, "start":I
    move v2, v15

    move v1, v15

    .line 1087
    move v13, v12

    move v12, v9

    move v9, v8

    move v8, v4

    goto/16 :goto_1a

    .line 822
    .end local v4    # "route_addr":Z
    .end local v5    # "addr":Ljava/lang/String;
    .end local v11    # "pers":Ljava/lang/String;
    .local v8, "route_addr":Z
    .local v9, "rfc822":Z
    .local v12, "end":I
    .restart local v13    # "start":I
    :sswitch_9
    const/4 v15, -0x1

    if-eqz v6, :cond_2f

    .line 826
    if-ne v13, v15, :cond_3a

    .line 827
    move v4, v14

    move v13, v4

    .end local v13    # "start":I
    .local v4, "start":I
    goto/16 :goto_1a

    .line 823
    .end local v4    # "start":I
    .restart local v13    # "start":I
    :cond_2f
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Missing \'(\'"

    invoke-direct {v4, v5, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 785
    :sswitch_a
    const/4 v4, 0x1

    .line 786
    .end local v9    # "rfc822":Z
    .local v4, "rfc822":Z
    if-ltz v13, :cond_30

    const/4 v5, -0x1

    if-ne v12, v5, :cond_30

    .line 787
    move v12, v14

    .line 788
    :cond_30
    move v5, v14

    .line 789
    .local v5, "pindex":I
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x1

    .local v9, "nesting":I
    :goto_15
    if-ge v14, v3, :cond_31

    if-lez v9, :cond_31

    .line 791
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 792
    sparse-switch v16, :sswitch_data_2

    goto :goto_16

    .line 794
    :sswitch_b
    add-int/lit8 v14, v14, 0x1

    .line 795
    goto :goto_16

    .line 800
    :sswitch_c
    add-int/lit8 v9, v9, -0x1

    .line 801
    goto :goto_16

    .line 797
    :sswitch_d
    add-int/lit8 v9, v9, 0x1

    .line 798
    nop

    .line 790
    :goto_16
    const/4 v11, 0x1

    add-int/2addr v14, v11

    goto :goto_15

    .line 806
    :cond_31
    if-lez v9, :cond_33

    .line 807
    if-eqz v6, :cond_32

    .line 811
    add-int/lit8 v14, v5, 0x1

    .line 812
    move v9, v4

    goto :goto_1a

    .line 808
    :cond_32
    new-instance v11, Ljavax/mail/internet/AddressException;

    const-string v15, "Missing \')\'"

    invoke-direct {v11, v15, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v11

    .line 814
    :cond_33
    add-int/lit8 v14, v14, -0x1

    .line 815
    const/4 v11, -0x1

    if-ne v1, v11, :cond_34

    .line 816
    add-int/lit8 v1, v5, 0x1

    .line 817
    :cond_34
    if-ne v2, v11, :cond_35

    .line 818
    move v2, v14

    move v9, v4

    goto :goto_1a

    .line 817
    :cond_35
    move v9, v4

    goto :goto_1a

    .line 938
    .end local v4    # "rfc822":Z
    .end local v5    # "pindex":I
    .local v9, "rfc822":Z
    :sswitch_e
    move v4, v14

    .line 939
    .local v4, "qindex":I
    const/4 v5, 0x1

    .line 940
    .end local v9    # "rfc822":Z
    .local v5, "rfc822":Z
    if-ne v13, v11, :cond_36

    .line 941
    move v13, v14

    .line 943
    :cond_36
    add-int/lit8 v14, v14, 0x1

    :goto_17
    if-ge v14, v3, :cond_37

    .line 944
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 945
    sparse-switch v16, :sswitch_data_3

    goto :goto_18

    .line 947
    :sswitch_f
    add-int/lit8 v14, v14, 0x1

    .line 948
    goto :goto_18

    .line 950
    :sswitch_10
    goto :goto_19

    .line 943
    :goto_18
    const/4 v9, 0x1

    add-int/2addr v14, v9

    goto :goto_17

    .line 955
    :cond_37
    :goto_19
    if-lt v14, v3, :cond_39

    .line 956
    if-eqz v6, :cond_38

    .line 960
    add-int/lit8 v14, v4, 0x1

    move v9, v5

    goto :goto_1a

    .line 957
    :cond_38
    new-instance v9, Ljavax/mail/internet/AddressException;

    invoke-direct {v9, v15, v0, v14}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v9

    .line 955
    :cond_39
    move v9, v5

    goto :goto_1a

    .line 1150
    .end local v4    # "qindex":I
    .end local v5    # "rfc822":Z
    .restart local v9    # "rfc822":Z
    :sswitch_11
    nop

    .line 778
    :cond_3a
    :goto_1a
    const/4 v5, 0x1

    add-int/2addr v14, v5

    const/4 v11, -0x1

    goto/16 :goto_1

    .line 1159
    .end local v16    # "c":C
    :cond_3b
    if-ltz v13, :cond_43

    .line 1165
    const/4 v5, -0x1

    if-ne v12, v5, :cond_3c

    .line 1166
    move v12, v3

    .line 1168
    :cond_3c
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1169
    .local v5, "addr":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1170
    .restart local v11    # "pers":Ljava/lang/String;
    if-eqz v9, :cond_3d

    if-ltz v1, :cond_3d

    .line 1171
    nop

    .line 1172
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1171
    invoke-static {v15}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1173
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_3d

    .line 1174
    const/4 v11, 0x0

    .line 1182
    :cond_3d
    if-eqz p2, :cond_3e

    if-nez p1, :cond_3e

    if-eqz v11, :cond_3e

    .line 1183
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_3e

    .line 1184
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3e

    const/16 v4, 0x21

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3e

    .line 1185
    move-object v4, v5

    .line 1186
    .local v4, "tmp":Ljava/lang/String;
    move-object v5, v11

    .line 1187
    move-object v11, v4

    .line 1189
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_3e
    if-nez v9, :cond_40

    if-nez p1, :cond_40

    if-eqz p2, :cond_3f

    goto :goto_1c

    .line 1199
    :cond_3f
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1b
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_43

    .line 1201
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 1202
    .restart local v15    # "a":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v15, v0, v0}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1203
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1204
    .local v0, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v0, v15}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1205
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    .end local v15    # "a":Ljava/lang/String;
    move-object/from16 v0, p0

    goto :goto_1b

    .line 1190
    .end local v0    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_40
    :goto_1c
    if-nez v6, :cond_41

    .line 1191
    const/4 v0, 0x0

    invoke-static {v5, v8, v0}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1192
    :cond_41
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 1193
    .restart local v0    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v0, v5}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 1194
    if-eqz v11, :cond_42

    .line 1195
    iput-object v11, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 1196
    :cond_42
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    .end local v0    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v5    # "addr":Ljava/lang/String;
    .end local v11    # "pers":Ljava/lang/String;
    :cond_43
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    .line 1211
    .local v0, "a":[Ljavax/mail/internet/InternetAddress;
    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1212
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_11
        0xa -> :sswitch_11
        0xd -> :sswitch_11
        0x20 -> :sswitch_11
        0x22 -> :sswitch_e
        0x28 -> :sswitch_a
        0x29 -> :sswitch_9
        0x2c -> :sswitch_8
        0x3a -> :sswitch_7
        0x3b -> :sswitch_6
        0x3c -> :sswitch_2
        0x3e -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_5
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x28 -> :sswitch_d
        0x29 -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_10
        0x5c -> :sswitch_f
    .end sparse-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 2
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 753
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "phrase"    # Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 330
    .local v0, "len":I
    const/4 v1, 0x0

    .line 332
    .local v1, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x22

    if-ge v2, v0, :cond_9

    .line 333
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 334
    .local v4, "c":C
    const/16 v5, 0x5c

    if-eq v4, v3, :cond_5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    const/16 v3, 0x20

    if-ge v4, v3, :cond_1

    const/16 v3, 0xd

    if-eq v4, v3, :cond_1

    const/16 v3, 0xa

    if-eq v4, v3, :cond_1

    const/16 v3, 0x9

    if-ne v4, v3, :cond_3

    :cond_1
    const/16 v3, 0x7f

    if-lt v4, v3, :cond_2

    sget-boolean v3, Ljavax/mail/internet/InternetAddress;->allowUtf8:Z

    if-eqz v3, :cond_3

    :cond_2
    sget-object v3, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 350
    :cond_3
    const/4 v1, 0x1

    .line 332
    .end local v4    # "c":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .restart local v4    # "c":C
    :cond_5
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v0, 0x3

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 337
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v0, :cond_8

    .line 339
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 340
    .local v8, "cc":C
    if-eq v8, v3, :cond_6

    if-ne v8, v5, :cond_7

    .line 342
    :cond_6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    .end local v8    # "cc":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 345
    .end local v7    # "j":I
    :cond_8
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 353
    .end local v2    # "i":I
    .end local v4    # "c":C
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v1, :cond_a

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x2

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 358
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    return-object p0
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .line 420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 7
    .param p0, "addresses"    # [Ljavax/mail/Address;
    .param p1, "used"    # I

    .line 460
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 466
    if-eqz v1, :cond_1

    .line 467
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    add-int/lit8 p1, p1, 0x2

    .line 472
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v3

    .line 474
    .local v3, "len":I
    add-int v4, p1, v3

    const/16 v5, 0x4c

    if-le v4, v5, :cond_3

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 477
    .local v4, "curlen":I
    if-lez v4, :cond_2

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    .line 478
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 479
    :cond_2
    const-string v5, "\r\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/16 p1, 0x8

    .line 482
    .end local v4    # "curlen":I
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 465
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "len":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 461
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toUnicodeString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .line 436
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toUnicodeString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicodeString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 9
    .param p0, "addresses"    # [Ljavax/mail/Address;
    .param p1, "used"    # I

    .line 521
    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 527
    .local v1, "sawNonAscii":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 528
    if-eqz v2, :cond_1

    .line 529
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    add-int/lit8 p1, p1, 0x2

    .line 534
    :cond_1
    aget-object v3, p0, v2

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->toUnicodeString()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "as":Ljava/lang/String;
    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 536
    const/4 v1, 0x1

    .line 537
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v3, v4

    .line 540
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v5

    .line 542
    .local v5, "len":I
    add-int v6, p1, v5

    const/16 v7, 0x4c

    if-le v6, v7, :cond_4

    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 545
    .local v6, "curlen":I
    if-lez v6, :cond_3

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_3

    .line 546
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 547
    :cond_3
    const-string v7, "\r\n\t"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const/16 p1, 0x8

    .line 550
    .end local v6    # "curlen":I
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {v4, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 527
    .end local v3    # "as":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "len":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "ret":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 556
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v2, v3

    .line 558
    :cond_6
    return-object v2

    .line 522
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "sawNonAscii":Z
    .end local v2    # "ret":Ljava/lang/String;
    :cond_7
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 362
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 365
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 367
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 368
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 369
    .local v4, "c":C
    if-ne v4, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_0

    .line 370
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 371
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    .end local v4    # "c":C
    add-int/2addr v3, v1

    goto :goto_0

    .line 373
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 376
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "a":Ljavax/mail/internet/InternetAddress;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 172
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    .line 384
    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 385
    return v1

    .line 387
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 389
    return v3

    .line 390
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    return v3

    .line 393
    :cond_2
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 4
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 1459
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1460
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1461
    return-object v1

    .line 1463
    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1464
    return-object v1

    .line 1465
    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1466
    .local v2, "ix":I
    if-gez v2, :cond_2

    .line 1467
    return-object v1

    .line 1469
    :cond_2
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1471
    .local v1, "list":Ljava/lang/String;
    invoke-static {v1, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    return-object v3
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 2

    .line 251
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-object v1

    .line 266
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 181
    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 401
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 402
    const/4 v0, 0x0

    return v0

    .line 404
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 1442
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1443
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1442
    :goto_0
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 228
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 233
    :goto_0
    return-void
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 208
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 210
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 213
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 278
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 279
    .local v0, "a":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 281
    :try_start_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 284
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    const-string v2, ">"

    if-eqz v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v3}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 286
    :cond_2
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 289
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 287
    :cond_4
    :goto_1
    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 4

    .line 300
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "p":Ljava/lang/String;
    const-string v1, ">"

    if-eqz v0, :cond_0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 303
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 304
    :cond_2
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v1
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 1226
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    goto :goto_0

    .line 1229
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 1230
    :goto_0
    return-void
.end method
