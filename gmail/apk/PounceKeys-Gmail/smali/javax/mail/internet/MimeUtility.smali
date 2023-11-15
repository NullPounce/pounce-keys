.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALL:I = -0x1

.field static final ALL_ASCII:I = 0x1

.field static final MOSTLY_ASCII:I = 0x2

.field static final MOSTLY_NONASCII:I = 0x3

.field private static final allowUtf8:Z

.field private static final decodeStrict:Z

.field private static defaultJavaCharset:Ljava/lang/String;

.field private static defaultMIMECharset:Ljava/lang/String;

.field private static final encodeEolStrict:Z

.field private static final foldEncodedWords:Z

.field private static final foldText:Z

.field private static final ignoreUnknownEncoding:Z

.field private static java2mime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mime2java:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final nonAsciiCharsetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 132
    nop

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    .line 144
    nop

    .line 145
    const-string v0, "mail.mime.decodetext.strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 146
    nop

    .line 147
    const-string v0, "mail.mime.encodeeol.strict"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 148
    nop

    .line 149
    const-string v0, "mail.mime.ignoreunknownencoding"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->ignoreUnknownEncoding:Z

    .line 151
    nop

    .line 152
    const-string v0, "mail.mime.allowutf8"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->allowUtf8:Z

    .line 159
    nop

    .line 160
    const-string v0, "mail.mime.foldencodedwords"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 161
    nop

    .line 162
    const-string v0, "mail.mime.foldtext"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    .line 1333
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    .line 1334
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    .line 1339
    :try_start_0
    const-class v0, Ljavax/mail/internet/MimeUtility;

    const-string v1, "/META-INF/javamail.charset.map"

    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1343
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 1345
    :try_start_1
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 1348
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/util/LineInputStream;

    sget-object v2, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Map;)V

    .line 1351
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/util/LineInputStream;

    sget-object v2, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1357
    goto :goto_1

    .line 1355
    :catch_0
    move-exception v1

    .line 1358
    goto :goto_1

    .line 1353
    :catchall_0
    move-exception v1

    .line 1354
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1357
    goto :goto_0

    .line 1355
    :catch_1
    move-exception v2

    .line 1358
    :goto_0
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1360
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    :cond_0
    :goto_1
    nop

    .line 1365
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "euc-kr"

    const-string v2, "ISO-8859-1"

    if-eqz v0, :cond_1

    .line 1366
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_2"

    const-string v4, "ISO-8859-2"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_2"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-2"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_3"

    const-string v4, "ISO-8859-3"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_3"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-3"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_4"

    const-string v4, "ISO-8859-4"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_4"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-4"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_5"

    const-string v4, "ISO-8859-5"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_5"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-5"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_6"

    const-string v4, "ISO-8859-6"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_6"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-6"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_7"

    const-string v4, "ISO-8859-7"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_7"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-7"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_8"

    const-string v4, "ISO-8859-8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "8859_9"

    const-string v4, "ISO-8859-9"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859_9"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso8859-9"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "sjis"

    const-string v4, "Shift_JIS"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "jis"

    const-string v4, "ISO-2022-JP"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "iso2022jp"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "euc_jp"

    const-string v4, "euc-jp"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "koi8_r"

    const-string v4, "koi8-r"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "euc_cn"

    const-string v4, "euc-cn"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "euc_tw"

    const-string v4, "euc-tw"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    const-string v3, "euc_kr"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1412
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v3, "iso-2022-cn"

    const-string v4, "ISO2022CN"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v3, "iso-2022-kr"

    const-string v4, "ISO2022KR"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string/jumbo v3, "utf-8"

    const-string v4, "UTF8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string/jumbo v3, "utf8"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v3, "ja_jp.iso2022-7"

    const-string v4, "ISO2022JP"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v3, "ja_jp.eucjp"

    const-string v4, "EUCJIS"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v3, "KSC5601"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v1, "euckr"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string/jumbo v1, "us-ascii"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string/jumbo v1, "x-us-ascii"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v1, "gb2312"

    const-string v2, "GB18030"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v1, "cp936"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v1, "ms936"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    const-string v1, "gbk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAscii(Ljava/io/InputStream;IZ)I
    .locals 17
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "max"    # I
    .param p2, "breakOnNonAscii"    # Z

    .line 1545
    move/from16 v0, p1

    const/4 v1, 0x0

    .local v1, "ascii":I
    const/4 v2, 0x0

    .line 1547
    .local v2, "non_ascii":I
    const/16 v3, 0x1000

    .line 1548
    .local v3, "block":I
    const/4 v4, 0x0

    .line 1549
    .local v4, "linelen":I
    const/4 v5, 0x0

    .local v5, "longLine":Z
    const/4 v6, 0x0

    .line 1550
    .local v6, "badEOL":Z
    sget-boolean v7, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v8

    .line 1551
    .local v7, "checkEOL":Z
    :goto_0
    const/4 v10, 0x0

    .line 1552
    .local v10, "buf":[B
    const/4 v11, -0x1

    if-eqz v0, :cond_2

    .line 1553
    const/16 v12, 0x1000

    if-ne v0, v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_1
    move v3, v12

    .line 1554
    new-array v10, v3, [B

    move-object v12, v10

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 1552
    :cond_2
    move-object v12, v10

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1556
    .end local p1    # "max":I
    .local v1, "max":I
    .local v2, "ascii":I
    .local v3, "non_ascii":I
    .local v4, "block":I
    .local v5, "linelen":I
    .local v6, "longLine":Z
    .local v10, "badEOL":Z
    .local v12, "buf":[B
    :goto_2
    if-eqz v1, :cond_e

    .line 1558
    move-object/from16 v14, p0

    :try_start_0
    invoke-virtual {v14, v12, v8, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v15, v0

    .local v15, "len":I
    if-ne v0, v11, :cond_3

    .line 1559
    goto :goto_7

    .line 1560
    :cond_3
    const/4 v0, 0x0

    .line 1561
    .local v0, "lastb":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "i":I
    :goto_3
    if-ge v8, v15, :cond_c

    .line 1566
    aget-byte v9, v12, v8

    and-int/lit16 v9, v9, 0xff

    .line 1567
    .local v9, "b":I
    const/16 v11, 0xa

    const/16 v13, 0xd

    if-eqz v7, :cond_6

    if-ne v0, v13, :cond_4

    if-ne v9, v11, :cond_5

    :cond_4
    if-eq v0, v13, :cond_6

    if-ne v9, v11, :cond_6

    .line 1570
    :cond_5
    const/4 v10, 0x1

    .line 1571
    :cond_6
    if-eq v9, v13, :cond_8

    if-ne v9, v11, :cond_7

    goto :goto_4

    .line 1574
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 1575
    const/16 v11, 0x3e6

    if-le v5, v11, :cond_9

    .line 1576
    const/4 v6, 0x1

    goto :goto_5

    .line 1572
    :cond_8
    :goto_4
    const/4 v5, 0x0

    .line 1578
    :cond_9
    :goto_5
    invoke-static {v9}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_b

    .line 1579
    if-eqz p2, :cond_a

    .line 1580
    const/4 v11, 0x3

    return v11

    .line 1582
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1584
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 1585
    :goto_6
    move v0, v9

    .line 1561
    .end local v9    # "b":I
    add-int/lit8 v8, v8, 0x1

    const/4 v11, -0x1

    goto :goto_3

    .line 1589
    .end local v0    # "lastb":I
    .end local v8    # "i":I
    :cond_c
    nop

    .line 1590
    const/4 v0, -0x1

    if-eq v1, v0, :cond_d

    .line 1591
    sub-int/2addr v1, v15

    move v11, v0

    const/4 v8, 0x0

    goto :goto_2

    .line 1590
    :cond_d
    move v11, v0

    const/4 v8, 0x0

    goto :goto_2

    .line 1587
    .end local v15    # "len":I
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "ioex":Ljava/io/IOException;
    goto :goto_7

    .line 1556
    .end local v0    # "ioex":Ljava/io/IOException;
    :cond_e
    move-object/from16 v14, p0

    .line 1594
    :goto_7
    if-nez v1, :cond_f

    if-eqz p2, :cond_f

    .line 1601
    const/4 v8, 0x3

    return v8

    .line 1594
    :cond_f
    const/4 v8, 0x3

    .line 1603
    const/4 v0, 0x2

    if-nez v3, :cond_12

    .line 1608
    if-eqz v10, :cond_10

    .line 1609
    return v8

    .line 1611
    :cond_10
    if-eqz v6, :cond_11

    .line 1612
    return v0

    .line 1614
    :cond_11
    const/4 v8, 0x1

    return v8

    .line 1616
    :cond_12
    if-le v2, v3, :cond_13

    .line 1617
    return v0

    .line 1618
    :cond_13
    const/4 v8, 0x3

    return v8
.end method

.method static checkAscii(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 1474
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v1, 0x0

    .line 1475
    .local v1, "non_ascii":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1477
    .local v2, "l":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1478
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1479
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1481
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1477
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1484
    .end local v3    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 1485
    const/4 v3, 0x1

    return v3

    .line 1486
    :cond_2
    if-le v0, v1, :cond_3

    .line 1487
    const/4 v3, 0x2

    return v3

    .line 1489
    :cond_3
    const/4 v3, 0x3

    return v3
.end method

.method static checkAscii([B)I
    .locals 4
    .param p0, "b"    # [B

    .line 1503
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v1, 0x0

    .line 1505
    .local v1, "non_ascii":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1509
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1510
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1512
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1505
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1515
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 1516
    const/4 v2, 0x1

    return v2

    .line 1517
    :cond_2
    if-le v0, v1, :cond_3

    .line 1518
    const/4 v2, 0x2

    return v2

    .line 1520
    :cond_3
    const/4 v2, 0x3

    return v2
.end method

.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 367
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 369
    :cond_0
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    new-instance v0, Lcom/sun/mail/util/QPDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 371
    :cond_1
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 372
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 373
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 375
    :cond_2
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 376
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 377
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 380
    :cond_3
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->ignoreUnknownEncoding:Z

    if-eqz v0, :cond_4

    .line 382
    return-object p0

    .line 381
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_5
    :goto_0
    return-object p0

    .line 374
    :cond_6
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUDecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "start":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 942
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_0
    const-string v2, "=?"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    if-ltz v2, :cond_3

    .line 943
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    add-int/lit8 v2, v3, 0x2

    const/16 v4, 0x3f

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 946
    .local v2, "end":I
    if-gez v2, :cond_0

    .line 947
    goto :goto_2

    .line 949
    :cond_0
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 950
    if-gez v2, :cond_1

    .line 951
    goto :goto_2

    .line 953
    :cond_1
    const-string v4, "?="

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 954
    if-gez v2, :cond_2

    .line 955
    goto :goto_2

    .line 956
    :cond_2
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 958
    .local v4, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 961
    goto :goto_1

    .line 959
    :catch_0
    move-exception v5

    .line 962
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    add-int/lit8 v0, v2, 0x2

    .line 964
    .end local v2    # "end":I
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_0

    .line 965
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 966
    return-object p0

    .line 967
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 968
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "etext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 570
    const-string v0, " \t\n\r"

    .line 582
    .local v0, "lwsp":Ljava/lang/String;
    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 583
    return-object p0

    .line 587
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 588
    .local v2, "st":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .local v4, "wsb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 592
    .local v5, "prevWasEncoded":Z
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 594
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "s":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v8

    .local v9, "c":C
    const/16 v10, 0x20

    if-eq v8, v10, :cond_9

    const/16 v8, 0x9

    if-eq v9, v8, :cond_9

    const/16 v8, 0xd

    if-eq v9, v8, :cond_9

    const/16 v8, 0xa

    if-ne v9, v8, :cond_1

    goto :goto_4

    .line 603
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 605
    .local v8, "word":Ljava/lang/String;
    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :cond_2
    const/4 v5, 0x1

    .line 644
    goto :goto_3

    .line 612
    .end local v8    # "word":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 614
    .local v8, "pex":Ljavax/mail/internet/ParseException;
    move-object v10, v6

    .line 616
    .local v10, "word":Ljava/lang/String;
    sget-boolean v11, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v11, :cond_7

    .line 617
    invoke-static {v10}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 618
    .local v11, "dword":Ljava/lang/String;
    if-eq v11, v10, :cond_5

    .line 621
    if-eqz v5, :cond_3

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    .line 626
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 627
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 630
    :cond_4
    :goto_1
    const-string v12, "?="

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 631
    move-object v10, v11

    goto :goto_2

    .line 634
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_6

    .line 635
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 636
    :cond_6
    const/4 v5, 0x0

    .line 638
    .end local v11    # "dword":Ljava/lang/String;
    :goto_2
    move-object v8, v10

    goto :goto_3

    .line 640
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 641
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 642
    :cond_8
    const/4 v5, 0x0

    move-object v8, v10

    .line 645
    .end local v10    # "word":Ljava/lang/String;
    .local v8, "word":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    .line 598
    .end local v8    # "word":Ljava/lang/String;
    :cond_9
    :goto_4
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    .end local v6    # "s":Ljava/lang/String;
    .end local v9    # "c":C
    :goto_5
    goto :goto_0

    .line 649
    :cond_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "eword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 835
    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 840
    const/4 v0, 0x2

    .line 841
    .local v0, "start":I
    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v2

    .local v3, "pos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 844
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "charset":Ljava/lang/String;
    const/16 v5, 0x2a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 846
    .local v5, "lpos":I
    const/4 v6, 0x0

    if-ltz v5, :cond_0

    .line 847
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 848
    :cond_0
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    add-int/lit8 v0, v3, 0x1

    .line 852
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    if-eq v1, v4, :cond_8

    .line 855
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 858
    .local v1, "encoding":Ljava/lang/String;
    add-int/lit8 v0, v3, 0x1

    .line 859
    const-string v7, "?="

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v3, v7

    if-eq v7, v4, :cond_7

    .line 869
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 873
    .local v4, "word":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-lez v7, :cond_4

    .line 875
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 876
    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 880
    .local v7, "bis":Ljava/io/ByteArrayInputStream;
    const-string v9, "B"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 881
    new-instance v9, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v9, v7}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    .local v9, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 882
    .end local v9    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v9, "Q"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 883
    new-instance v9, Lcom/sun/mail/util/QDecoderStream;

    invoke-direct {v9, v7}, Lcom/sun/mail/util/QDecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 893
    .restart local v9    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 894
    .local v10, "count":I
    new-array v11, v10, [B

    .line 896
    .local v11, "bytes":[B
    invoke-virtual {v9, v11, v6, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    move v10, v12

    .line 900
    if-gtz v10, :cond_2

    goto :goto_1

    .line 901
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v11, v6, v10, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_1
    move-object v6, v8

    .line 902
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "count":I
    .end local v11    # "bytes":[B
    .local v6, "decodedWord":Ljava/lang/String;
    goto :goto_2

    .line 885
    .end local v6    # "decodedWord":Ljava/lang/String;
    .restart local v7    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_3
    new-instance v6, Ljava/io/UnsupportedEncodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "start":I
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "charset":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "word":Ljava/lang/String;
    .end local v5    # "lpos":I
    .end local p0    # "eword":Ljava/lang/String;
    throw v6

    .line 904
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "start":I
    .restart local v1    # "encoding":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    .restart local v3    # "pos":I
    .restart local v4    # "word":Ljava/lang/String;
    .restart local v5    # "lpos":I
    .restart local p0    # "eword":Ljava/lang/String;
    :cond_4
    move-object v6, v8

    .line 906
    .restart local v6    # "decodedWord":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 908
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 909
    .local v7, "rest":Ljava/lang/String;
    sget-boolean v8, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v8, :cond_5

    .line 910
    invoke-static {v7}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 911
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v8

    .line 913
    .end local v7    # "rest":Ljava/lang/String;
    :cond_6
    return-object v6

    .line 921
    .end local v6    # "decodedWord":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 929
    .local v6, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v7, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 918
    .end local v6    # "iex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 920
    .local v6, "ioex":Ljava/io/IOException;
    new-instance v7, Ljavax/mail/internet/ParseException;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 914
    .end local v6    # "ioex":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 917
    .local v6, "uex":Ljava/io/UnsupportedEncodingException;
    throw v6

    .line 860
    .end local v4    # "word":Ljava/lang/String;
    .end local v6    # "uex":Ljava/io/UnsupportedEncodingException;
    :cond_7
    new-instance v4, Ljavax/mail/internet/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoded word does not end with \"?=\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 853
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded word does not include encoding: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 842
    .end local v2    # "charset":Ljava/lang/String;
    .end local v5    # "lpos":I
    :cond_9
    new-instance v1, Ljavax/mail/internet/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoded word does not include charset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    .end local v0    # "start":I
    .end local v3    # "pos":I
    :cond_a
    new-instance v0, Ljavax/mail/internet/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded word does not start with \"=?\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuilder;)V
    .locals 16
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "b64"    # Z
    .param p2, "jcharset"    # Ljava/lang/String;
    .param p3, "avail"    # I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "first"    # Z
    .param p6, "encodingWord"    # Z
    .param p7, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 768
    move-object/from16 v1, p0

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p2

    invoke-virtual {v1, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 770
    .local v13, "bytes":[B
    if-eqz p1, :cond_0

    .line 771
    invoke-static {v13}, Lcom/sun/mail/util/BEncoderStream;->encodedLength([B)I

    move-result v0

    move v14, v0

    .local v0, "len":I
    goto :goto_0

    .line 773
    .end local v0    # "len":I
    :cond_0
    invoke-static {v13, v10}, Lcom/sun/mail/util/QEncoderStream;->encodedLength([BZ)I

    move-result v0

    move v14, v0

    .line 776
    .local v14, "len":I
    :goto_0
    move/from16 v15, p3

    if-le v14, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    move v9, v0

    .local v9, "size":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 780
    div-int/lit8 v0, v9, 0x2

    .line 781
    .local v0, "split":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    add-int/lit8 v0, v0, -0x1

    .line 783
    :cond_1
    if-lez v0, :cond_2

    .line 784
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move v12, v9

    .end local v9    # "size":I
    .local v12, "size":I
    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuilder;)V

    goto :goto_1

    .line 783
    .end local v12    # "size":I
    .restart local v9    # "size":I
    :cond_2
    move v12, v9

    .line 786
    .end local v9    # "size":I
    .restart local v12    # "size":I
    :goto_1
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuilder;)V

    .line 788
    .end local v0    # "split":I
    move-object/from16 v4, p4

    goto :goto_6

    .line 776
    .end local v12    # "size":I
    .restart local v9    # "size":I
    :cond_3
    move v12, v9

    .line 790
    .end local v9    # "size":I
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 792
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_5

    .line 793
    new-instance v0, Lcom/sun/mail/util/BEncoderStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/BEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .local v0, "eos":Ljava/io/OutputStream;
    goto :goto_2

    .line 795
    .end local v0    # "eos":Ljava/io/OutputStream;
    :cond_5
    new-instance v0, Lcom/sun/mail/util/QEncoderStream;

    invoke-direct {v0, v2, v10}, Lcom/sun/mail/util/QEncoderStream;-><init>(Ljava/io/OutputStream;Z)V

    move-object v3, v0

    .line 798
    .local v3, "eos":Ljava/io/OutputStream;
    :goto_2
    :try_start_0
    invoke-virtual {v3, v13}, Ljava/io/OutputStream;->write([B)V

    .line 799
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 800
    :catch_0
    move-exception v0

    :goto_3
    nop

    .line 802
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 805
    .local v0, "encodedBytes":[B
    if-nez p5, :cond_7

    .line 806
    sget-boolean v4, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    if-eqz v4, :cond_6

    .line 807
    const-string v4, "\r\n "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 809
    :cond_6
    const-string v4, " "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :cond_7
    :goto_4
    move-object/from16 v4, p4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    array-length v6, v0

    if-ge v5, v6, :cond_8

    .line 813
    aget-byte v6, v0, v5

    int-to-char v6, v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 814
    .end local v5    # "i":I
    :cond_8
    const-string v5, "?="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .end local v0    # "encodedBytes":[B
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "eos":Ljava/io/OutputStream;
    :goto_6
    return-void
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 400
    if-nez p1, :cond_0

    .line 401
    return-object p0

    .line 402
    :cond_0
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 404
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 406
    :cond_2
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 407
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 408
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 410
    :cond_3
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 411
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 412
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 415
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_5
    :goto_0
    return-object p0

    .line 409
    :cond_6
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 438
    if-nez p1, :cond_0

    .line 439
    return-object p0

    .line 440
    :cond_0
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 442
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 444
    :cond_2
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 445
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 446
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 448
    :cond_3
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 449
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 450
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 453
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_5
    :goto_0
    return-object p0

    .line 447
    :cond_6
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0, p2}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 494
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 527
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 676
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 704
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "encodingWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 720
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    .line 721
    .local v0, "ascii":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 722
    return-object p0

    .line 726
    :cond_0
    if-nez p1, :cond_1

    .line 727
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "jcharset":Ljava/lang/String;
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p1

    move-object v9, v1

    goto :goto_0

    .line 730
    .end local v1    # "jcharset":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 733
    .local v9, "jcharset":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_3

    .line 734
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 735
    const-string p2, "Q"

    goto :goto_1

    .line 737
    :cond_2
    const-string p2, "B"

    .line 741
    :cond_3
    :goto_1
    const-string v1, "B"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 742
    const/4 v1, 0x1

    move v10, v1

    .local v1, "b64":Z
    goto :goto_2

    .line 743
    .end local v1    # "b64":Z
    :cond_4
    const-string v1, "Q"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 744
    const/4 v1, 0x0

    move v10, v1

    .line 749
    .local v10, "b64":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .local v8, "outb":Ljava/lang/StringBuilder;
    nop

    .line 754
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v4, v1, 0x44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 750
    move-object v1, p0

    move v2, v10

    move-object v3, v9

    move v7, p3

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuilder;)V

    .line 758
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 746
    .end local v8    # "outb":Ljava/lang/StringBuilder;
    .end local v10    # "b64":Z
    :cond_5
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown transfer encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fold(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "used"    # I
    .param p1, "s"    # Ljava/lang/String;

    .line 1050
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v0, :cond_0

    .line 1051
    return-object p1

    .line 1056
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "end":I
    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    if-ltz v0, :cond_2

    .line 1057
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1058
    .local v3, "c":C
    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 1059
    goto :goto_1

    .line 1056
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1061
    .end local v3    # "c":C
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    .line 1062
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1065
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p0

    const/16 v5, 0x4c

    if-gt v3, v5, :cond_4

    .line 1066
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->makesafe(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1069
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1070
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 1071
    .local v6, "lastc":C
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, p0

    if-le v7, v5, :cond_a

    .line 1072
    const/4 v7, -0x1

    .line 1073
    .local v7, "lastspace":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, -0x1

    if-ge v8, v9, :cond_8

    .line 1074
    if-eq v7, v10, :cond_5

    add-int v9, p0, v8

    if-le v9, v5, :cond_5

    .line 1075
    goto :goto_4

    .line 1076
    :cond_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1077
    .local v9, "c":C
    if-eq v9, v2, :cond_6

    if-ne v9, v1, :cond_7

    .line 1078
    :cond_6
    if-eq v6, v2, :cond_7

    if-eq v6, v1, :cond_7

    .line 1079
    move v7, v8

    .line 1080
    :cond_7
    move v6, v9

    .line 1073
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1082
    .end local v8    # "i":I
    .end local v9    # "c":C
    :cond_8
    :goto_4
    if-ne v7, v10, :cond_9

    .line 1084
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    const-string p1, ""

    .line 1086
    const/4 p0, 0x0

    .line 1087
    goto :goto_5

    .line 1089
    :cond_9
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v8, "\r\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1092
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1093
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1094
    const/4 p0, 0x1

    .line 1095
    .end local v7    # "lastspace":I
    goto :goto_2

    .line 1096
    :cond_a
    :goto_5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->makesafe(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 5

    .line 1277
    const-string v0, "8859_1"

    sget-object v1, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1282
    const/4 v1, 0x0

    .line 1284
    .local v1, "mimecs":Ljava/lang/String;
    :try_start_0
    const-string v2, "mail.mime.charset"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 1285
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 1286
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1287
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1288
    return-object v0

    .line 1292
    :cond_0
    :try_start_1
    const-string v2, "file.encoding"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1307
    goto :goto_1

    .line 1294
    :catch_1
    move-exception v2

    .line 1302
    .local v2, "sex":Ljava/lang/SecurityException;
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljavax/mail/internet/MimeUtility$1NullInputStream;

    invoke-direct {v4}, Ljavax/mail/internet/MimeUtility$1NullInputStream;-><init>()V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1304
    .local v3, "reader":Ljava/io/InputStreamReader;
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1305
    if-nez v4, :cond_1

    .line 1306
    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1310
    .end local v1    # "mimecs":Ljava/lang/String;
    .end local v2    # "sex":Ljava/lang/SecurityException;
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    :goto_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    return-object v0
.end method

.method static getDefaultMIMECharset()Ljava/lang/String;
    .locals 1

    .line 1317
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1319
    :try_start_0
    const-string v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1320
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 1322
    :cond_0
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1323
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    .line 1324
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 5
    .param p0, "dh"    # Ljavax/activation/DataHandler;

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const/4 v1, 0x0

    .line 303
    .local v1, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 307
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    .line 310
    nop

    .line 312
    const-string v2, "text/*"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    new-instance v2, Ljavax/mail/internet/AsciiOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 316
    .local v2, "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v3

    .line 320
    :goto_0
    invoke-virtual {v2}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 328
    const-string v1, "base64"

    goto :goto_1

    .line 325
    :pswitch_0
    const-string v1, "quoted-printable"

    .line 326
    goto :goto_1

    .line 322
    :pswitch_1
    const-string v1, "7bit"

    .line 323
    nop

    .line 331
    .end local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :goto_1
    goto :goto_4

    .line 334
    :cond_1
    new-instance v2, Ljavax/mail/internet/AsciiOutputStream;

    sget-boolean v3, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 337
    .restart local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 338
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    .line 339
    :goto_3
    invoke-virtual {v2}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 340
    const-string v1, "7bit"

    goto :goto_4

    .line 342
    :cond_2
    const-string v1, "base64"

    .line 345
    .end local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :goto_4
    return-object v1

    .line 308
    :catch_2
    move-exception v2

    .line 309
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "base64"

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 7
    .param p0, "ds"    # Ljavax/activation/DataSource;

    .line 192
    const-string v0, "base64"

    const/4 v1, 0x0

    .line 193
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const/4 v2, 0x0

    .line 194
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 196
    .local v3, "encoding":Ljava/lang/String;
    instance-of v4, p0, Ljavax/mail/EncodingAware;

    if-eqz v4, :cond_0

    .line 197
    move-object v4, p0

    check-cast v4, Ljavax/mail/EncodingAware;

    invoke-interface {v4}, Ljavax/mail/EncodingAware;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 198
    if-eqz v3, :cond_0

    .line 199
    return-object v3

    .line 202
    :cond_0
    :try_start_0
    new-instance v4, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 203
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 205
    const-string v4, "text/*"

    invoke-virtual {v1, v4}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v4

    .line 207
    .local v4, "isText":Z
    if-nez v4, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    invoke-static {v2, v6, v5}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/io/InputStream;IZ)I

    move-result v5

    .line 208
    .local v5, "i":I
    packed-switch v5, :pswitch_data_0

    .line 219
    goto :goto_1

    .line 213
    :pswitch_0
    if-eqz v4, :cond_2

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->nonAsciiCharset(Ljavax/mail/internet/ContentType;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    nop

    .end local v3    # "encoding":Ljava/lang/String;
    .local v0, "encoding":Ljava/lang/String;
    goto :goto_1

    .line 216
    .end local v0    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    :cond_2
    const-string v0, "quoted-printable"

    .line 217
    .end local v3    # "encoding":Ljava/lang/String;
    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_1

    .line 210
    .end local v0    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    :pswitch_1
    const-string v0, "7bit"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v3    # "encoding":Ljava/lang/String;
    .restart local v0    # "encoding":Ljava/lang/String;
    nop

    .line 228
    .end local v4    # "isText":Z
    .end local v5    # "i":I
    :goto_1
    if-eqz v2, :cond_3

    .line 229
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 230
    :catch_0
    move-exception v3

    .line 231
    goto :goto_3

    .line 230
    :cond_3
    :goto_2
    nop

    .line 233
    :goto_3
    return-object v0

    .line 227
    .end local v0    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 228
    if-eqz v2, :cond_4

    .line 229
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 230
    :catch_1
    move-exception v4

    :cond_4
    :goto_4
    nop

    .line 231
    throw v0

    .line 223
    :catch_2
    move-exception v4

    .line 224
    .local v4, "ex":Ljava/lang/Exception;
    nop

    .line 228
    if-eqz v2, :cond_5

    .line 229
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 230
    :catch_3
    move-exception v5

    :cond_5
    :goto_5
    nop

    .line 224
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .line 1201
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 1206
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1207
    .local v1, "len":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1208
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_0

    .line 1209
    return v2

    .line 1207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1211
    .end local v2    # "i":I
    :cond_1
    return v0

    .line 1212
    .end local v1    # "len":I
    :catch_0
    move-exception v1

    .line 1213
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .line 1225
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Map;

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    .line 1229
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1233
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    goto :goto_0

    .line 1234
    :catch_0
    move-exception v1

    .line 1235
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1238
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1

    .line 1227
    .end local v0    # "alias":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object p0
.end method

.method private static loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Map;)V
    .locals 5
    .param p0, "is"    # Lcom/sun/mail/util/LineInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/mail/util/LineInputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1435
    .local p1, "table":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1438
    .local v0, "currLine":Ljava/lang/String;
    nop

    .line 1440
    if-nez v0, :cond_1

    .line 1441
    goto :goto_2

    .line 1442
    :cond_1
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1444
    goto :goto_2

    .line 1447
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1448
    goto :goto_0

    .line 1452
    :cond_3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    .local v1, "tk":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1455
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1456
    .local v3, "value":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1457
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_1

    :catch_0
    move-exception v2

    .line 1458
    .end local v1    # "tk":Ljava/util/StringTokenizer;
    :goto_1
    goto :goto_0

    .line 1436
    .end local v0    # "currLine":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1437
    .local v0, "ioex":Ljava/io/IOException;
    nop

    .line 1459
    .end local v0    # "ioex":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private static makesafe(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 1107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1108
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1109
    .local v1, "c":C
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1110
    goto :goto_1

    .line 1107
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1113
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1117
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1118
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1121
    .local v2, "r":Ljava/io/BufferedReader;
    :goto_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1122
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1123
    goto :goto_2

    .line 1124
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1125
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1127
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1128
    .local v3, "c":C
    const/16 v5, 0x20

    if-eq v3, v5, :cond_5

    const/16 v6, 0x9

    if-eq v3, v6, :cond_5

    .line 1129
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1126
    .end local v3    # "c":C
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "r":Ljava/io/BufferedReader;
    .end local p0    # "s":Ljava/lang/CharSequence;
    throw v3

    .line 1131
    .restart local v0    # "i":I
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "r":Ljava/io/BufferedReader;
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_5
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1136
    :cond_6
    nop

    .line 1137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1133
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1135
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .line 1255
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Map;

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 1259
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1260
    .local v0, "alias":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 1257
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p0
.end method

.method private static nonAsciiCharset(Ljavax/mail/internet/ContentType;)Z
    .locals 7
    .param p0, "ct"    # Ljavax/mail/internet/ContentType;

    .line 246
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "charset":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 248
    return v1

    .line 249
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 251
    sget-object v2, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    monitor-enter v2

    .line 252
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 253
    .local v3, "bool":Ljava/lang/Boolean;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    if-nez v3, :cond_3

    .line 256
    :try_start_1
    const-string v2, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 257
    .local v2, "b":[B
    array-length v4, v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    aget-byte v4, v2, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    aget-byte v4, v2, v6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    :cond_1
    move v1, v6

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "b":[B
    .end local v3    # "bool":Ljava/lang/Boolean;
    .local v1, "bool":Ljava/lang/Boolean;
    goto :goto_0

    .line 261
    .end local v1    # "bool":Ljava/lang/Boolean;
    .restart local v3    # "bool":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 262
    .local v1, "ex":Ljava/lang/RuntimeException;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v1, v2

    .end local v3    # "bool":Ljava/lang/Boolean;
    .local v2, "bool":Ljava/lang/Boolean;
    goto :goto_1

    .line 259
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "bool":Ljava/lang/Boolean;
    .restart local v3    # "bool":Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    .line 260
    .local v1, "uex":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 263
    .end local v3    # "bool":Ljava/lang/Boolean;
    .local v1, "bool":Ljava/lang/Boolean;
    :goto_0
    nop

    .line 264
    :goto_1
    sget-object v2, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    monitor-enter v2

    .line 265
    :try_start_2
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit v2

    move-object v3, v1

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 268
    .end local v1    # "bool":Ljava/lang/Boolean;
    .restart local v3    # "bool":Ljava/lang/Boolean;
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 253
    .end local v3    # "bool":Ljava/lang/Boolean;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static final nonascii(I)Z
    .locals 1
    .param p0, "b"    # I

    .line 1622
    const/16 v0, 0x7f

    if-ge p0, v0, :cond_1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

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

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "specials"    # Ljava/lang/String;

    .line 989
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 990
    .local v1, "len":I
    :goto_0
    if-nez v1, :cond_1

    .line 991
    const-string v0, "\"\""

    return-object v0

    .line 997
    :cond_1
    const/4 v2, 0x0

    .line 998
    .local v2, "needQuoting":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0x22

    if-ge v3, v1, :cond_b

    .line 999
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1000
    .local v5, "c":C
    const/16 v6, 0xa

    const/16 v7, 0xd

    const/16 v8, 0x5c

    if-eq v5, v4, :cond_6

    if-eq v5, v8, :cond_6

    if-eq v5, v7, :cond_6

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 1019
    :cond_2
    const/16 v4, 0x20

    if-lt v5, v4, :cond_4

    const/16 v4, 0x7f

    if-lt v5, v4, :cond_3

    sget-boolean v4, Ljavax/mail/internet/MimeUtility;->allowUtf8:Z

    if-eqz v4, :cond_4

    .line 1020
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 1022
    :cond_4
    const/4 v2, 0x1

    .line 998
    .end local v5    # "c":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1002
    .restart local v5    # "c":C
    :cond_6
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v1, 0x3

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1003
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, "lastc":I
    move v10, v3

    .local v10, "j":I
    :goto_3
    if-ge v10, v1, :cond_a

    .line 1007
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1008
    .local v11, "cc":C
    if-eq v11, v4, :cond_7

    if-eq v11, v8, :cond_7

    if-eq v11, v7, :cond_7

    if-ne v11, v6, :cond_9

    .line 1010
    :cond_7
    if-ne v11, v6, :cond_8

    if-ne v0, v7, :cond_8

    .line 1011
    goto :goto_4

    .line 1013
    :cond_8
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1014
    :cond_9
    :goto_4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1015
    move v0, v11

    .line 1006
    .end local v11    # "cc":C
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1017
    .end local v10    # "j":I
    :cond_a
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1025
    .end local v0    # "lastc":I
    .end local v3    # "i":I
    .end local v5    # "c":C
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    if-eqz v2, :cond_c

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1027
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1030
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    return-object p0
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 1149
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v0, :cond_0

    .line 1150
    return-object p0

    .line 1152
    :cond_0
    const/4 v0, 0x0

    .line 1154
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const-string v1, "\r\n"

    invoke-static {p0, v1}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "i":I
    if-ltz v1, :cond_8

    .line 1155
    move v1, v2

    .line 1156
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1157
    .local v3, "slen":I
    add-int/lit8 v2, v2, 0x1

    .line 1158
    if-ge v2, v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1159
    add-int/lit8 v2, v2, 0x1

    .line 1160
    :cond_1
    const/4 v4, 0x0

    if-lez v1, :cond_3

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_3

    .line 1163
    if-nez v0, :cond_2

    .line 1164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v5

    .line 1165
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1173
    :cond_3
    if-ge v2, v3, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    const/16 v7, 0x20

    if-eq v5, v7, :cond_6

    const/16 v5, 0x9

    if-ne v6, v5, :cond_4

    goto :goto_1

    .line 1180
    :cond_4
    if-nez v0, :cond_5

    .line 1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v5

    .line 1182
    :cond_5
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 1174
    .end local v6    # "c":C
    :cond_6
    :goto_1
    if-nez v0, :cond_7

    .line 1175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v5

    .line 1176
    :cond_7
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1186
    .end local v1    # "start":I
    .end local v3    # "slen":I
    :goto_2
    goto/16 :goto_0

    .line 1187
    :cond_8
    if-eqz v0, :cond_9

    .line 1188
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1191
    :cond_9
    return-object p0
.end method
