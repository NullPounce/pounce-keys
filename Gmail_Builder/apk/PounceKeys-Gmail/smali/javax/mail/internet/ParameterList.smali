.class public Ljavax/mail/internet/ParameterList;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/ParameterList$ToStringBuffer;,
        Ljavax/mail/internet/ParameterList$ParamEnum;,
        Ljavax/mail/internet/ParameterList$MultiValue;,
        Ljavax/mail/internet/ParameterList$LiteralValue;,
        Ljavax/mail/internet/ParameterList$Value;
    }
.end annotation


# static fields
.field private static final applehack:Z

.field private static final decodeParameters:Z

.field private static final decodeParametersStrict:Z

.field private static final encodeParameters:Z

.field private static final hex:[C

.field private static final parametersStrict:Z

.field private static final splitLongParameters:Z

.field private static final windowshack:Z


# instance fields
.field private lastName:Ljava/lang/String;

.field private list:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private multisegmentNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private slist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    nop

    .line 120
    const-string v0, "mail.mime.encodeparameters"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    .line 121
    nop

    .line 122
    const-string v0, "mail.mime.decodeparameters"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    .line 123
    nop

    .line 124
    const-string v0, "mail.mime.decodeparameters.strict"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    .line 126
    nop

    .line 127
    const-string v0, "mail.mime.applefilenames"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/ParameterList;->applehack:Z

    .line 128
    nop

    .line 129
    const-string v0, "mail.mime.windowsfilenames"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/ParameterList;->windowshack:Z

    .line 130
    nop

    .line 131
    const-string v0, "mail.mime.parameters.strict"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/ParameterList;->parametersStrict:Z

    .line 132
    nop

    .line 133
    const-string v0, "mail.mime.splitlongparameters"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/ParameterList;->splitLongParameters:Z

    .line 751
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/mail/internet/ParameterList;->hex:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 200
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    .line 204
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 219
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 222
    .local v1, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    .line 225
    .local v2, "type":I
    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    .line 226
    goto :goto_1

    .line 228
    :cond_0
    int-to-char v4, v2

    const-string v5, "filename"

    const-string v6, "name"

    const/4 v7, -0x1

    const/16 v8, 0x3b

    const-string v9, "\""

    const-string v10, "In parameter list <"

    if-ne v4, v8, :cond_b

    .line 230
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 233
    nop

    .line 295
    .end local v1    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .end local v2    # "type":I
    :goto_1
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v1, :cond_1

    .line 300
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V

    .line 302
    :cond_1
    return-void

    .line 235
    .restart local v1    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .restart local v2    # "type":I
    :cond_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    if-ne v3, v7, :cond_a

    .line 239
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    int-to-char v4, v4

    const/16 v11, 0x3d

    if-ne v4, v11, :cond_9

    .line 249
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->windowshack:Z

    if-eqz v4, :cond_4

    .line 250
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {v0, v8, v4}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    goto :goto_2

    .line 252
    :cond_4
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->parametersStrict:Z

    if-eqz v4, :cond_5

    .line 253
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    goto :goto_2

    .line 255
    :cond_5
    invoke-virtual {v0, v8}, Ljavax/mail/internet/HeaderTokenizer;->next(C)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 256
    :goto_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    .line 258
    if-eq v2, v7, :cond_7

    const/4 v4, -0x2

    if-ne v2, v4, :cond_6

    goto :goto_3

    .line 260
    :cond_6
    new-instance v4, Ljavax/mail/internet/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">, expected parameter value, got \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 262
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 264
    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "value":Ljava/lang/String;
    iput-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 266
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v5, :cond_8

    .line 267
    invoke-direct {p0, v3, v4}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 269
    :cond_8
    iget-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 244
    .end local v4    # "value":Ljava/lang/String;
    :cond_9
    new-instance v4, Ljavax/mail/internet/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">, expected \'=\', got \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 246
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v3    # "name":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">, expected parameter name, got \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 238
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :cond_b
    if-ne v2, v7, :cond_e

    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    if-eqz v3, :cond_e

    sget-boolean v4, Ljavax/mail/internet/ParameterList;->applehack:Z

    if-eqz v4, :cond_c

    .line 279
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    .line 280
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->parametersStrict:Z

    if-nez v3, :cond_e

    .line 284
    :cond_d
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 285
    .local v3, "lastValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    .restart local v4    # "value":Ljava/lang/String;
    iget-object v5, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v6, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .end local v3    # "lastValue":Ljava/lang/String;
    nop

    .line 293
    .end local v1    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .end local v2    # "type":I
    .end local v4    # "value":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 288
    .restart local v1    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .restart local v2    # "type":I
    :cond_e
    new-instance v3, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">, expected \';\', got \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 290
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private combineMultisegmentNames(Z)V
    .locals 11
    .param p1, "keepConsistentOnFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 398
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 400
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljavax/mail/internet/ParameterList$MultiValue;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParameterList$MultiValue;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    .line 405
    .local v3, "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    const/4 v4, 0x0

    .line 406
    .local v4, "charset":Ljava/lang/String;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 408
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 409
    .local v6, "segment":I
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "sname":Ljava/lang/String;
    iget-object v8, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 411
    .local v8, "v":Ljava/lang/Object;
    if-nez v8, :cond_0

    .line 412
    goto :goto_2

    .line 413
    :cond_0
    invoke-virtual {v3, v8}, Ljavax/mail/internet/ParameterList$MultiValue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :try_start_1
    instance-of v9, v8, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v9, :cond_9

    .line 416
    move-object v9, v8

    check-cast v9, Ljavax/mail/internet/ParameterList$Value;

    .line 417
    .local v9, "vv":Ljavax/mail/internet/ParameterList$Value;
    if-nez v6, :cond_1

    .line 420
    iget-object v10, v9, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    move-object v4, v10

    goto :goto_8

    .line 422
    :cond_1
    if-nez v4, :cond_8

    .line 424
    iget-object v10, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v10, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    nop

    .line 437
    .end local v7    # "sname":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    .end local v9    # "vv":Ljavax/mail/internet/ParameterList$Value;
    :goto_2
    if-nez v6, :cond_2

    .line 439
    :try_start_2
    iget-object v7, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 442
    :cond_2
    if-eqz v4, :cond_3

    .line 443
    :try_start_3
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    goto :goto_3

    .line 450
    :catch_0
    move-exception v7

    goto :goto_5

    .line 444
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 445
    :cond_4
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 446
    :cond_5
    if-eqz v4, :cond_6

    .line 447
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    goto :goto_4

    .line 449
    :cond_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 459
    :goto_4
    goto :goto_6

    .line 451
    .local v7, "uex":Ljava/io/UnsupportedEncodingException;
    :goto_5
    :try_start_4
    sget-boolean v8, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v8, :cond_7

    .line 455
    :try_start_5
    const-string v8, "iso-8859-1"

    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 458
    goto :goto_6

    .line 456
    :catch_1
    move-exception v8

    .line 460
    .end local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    :goto_6
    :try_start_6
    iget-object v7, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v4    # "charset":Ljava/lang/String;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "segment":I
    :goto_7
    goto/16 :goto_0

    .line 452
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .restart local v4    # "charset":Ljava/lang/String;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "segment":I
    .restart local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    :cond_7
    new-instance v8, Ljavax/mail/internet/ParseException;

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p1    # "keepConsistentOnFailure":Z
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 428
    .restart local v0    # "success":Z
    .local v7, "sname":Ljava/lang/String;
    .restart local v8    # "v":Ljava/lang/Object;
    .restart local v9    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .restart local p1    # "keepConsistentOnFailure":Z
    :cond_8
    :goto_8
    :try_start_7
    iget-object v10, v9, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    invoke-static {v10, v5}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 429
    .end local v9    # "vv":Ljavax/mail/internet/ParameterList$Value;
    goto :goto_9

    .line 430
    :cond_9
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 434
    :goto_9
    goto :goto_a

    .line 432
    :catch_2
    move-exception v9

    .line 435
    :goto_a
    :try_start_8
    iget-object v9, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 408
    nop

    .end local v7    # "sname":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 463
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "mv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v4    # "charset":Ljava/lang/String;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "segment":I
    :cond_a
    const/4 v0, 0x1

    .line 470
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez p1, :cond_b

    if-eqz v0, :cond_10

    .line 473
    :cond_b
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 475
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 476
    .local v1, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 477
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 478
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v2, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v3, :cond_d

    .line 479
    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/ParameterList$Value;

    .line 481
    .local v3, "vv":Ljavax/mail/internet/ParameterList$Value;
    :try_start_9
    iget-object v4, v3, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v5, v3, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 482
    invoke-static {v4, v5}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_3

    .line 486
    goto :goto_c

    .line 483
    :catch_3
    move-exception v4

    .line 484
    .local v4, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v5, :cond_c

    goto :goto_c

    .line 485
    :cond_c
    new-instance v5, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 488
    .end local v2    # "v":Ljava/lang/Object;
    .end local v3    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .end local v4    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_d
    :goto_c
    goto :goto_b

    .line 489
    :cond_e
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 493
    .end local v1    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_f
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 494
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 497
    :cond_10
    return-void

    .line 470
    :catchall_0
    move-exception v1

    if-nez p1, :cond_11

    if-eqz v0, :cond_16

    .line 473
    :cond_11
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 475
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 476
    .local v2, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 477
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 478
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v4, :cond_13

    .line 479
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    .line 481
    .local v4, "vv":Ljavax/mail/internet/ParameterList$Value;
    :try_start_a
    iget-object v5, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v6, v4, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 482
    invoke-static {v5, v6}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_4

    .line 486
    goto :goto_e

    .line 483
    :catch_4
    move-exception v5

    .line 484
    .local v5, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v6, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v6, :cond_12

    goto :goto_e

    .line 485
    :cond_12
    new-instance v1, Ljavax/mail/internet/ParseException;

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "vv":Ljavax/mail/internet/ParameterList$Value;
    .end local v5    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_13
    :goto_e
    goto :goto_d

    .line 489
    :cond_14
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    iget-object v4, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 493
    .end local v2    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_15
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 494
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 496
    :cond_16
    throw v1
.end method

.method private static decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 839
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 841
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "bi":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 842
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 843
    .local v3, "c":C
    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    .line 845
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v1, 0x3

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 846
    .local v4, "hex":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v3, v5

    .line 847
    nop

    .end local v4    # "hex":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x2

    .line 854
    :goto_1
    goto :goto_2

    .line 851
    :catch_0
    move-exception v4

    .line 852
    .local v4, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v5, :cond_0

    goto :goto_2

    .line 853
    :cond_0
    new-instance v5, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 848
    .end local v4    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v4

    .line 849
    .local v4, "ex":Ljava/lang/NumberFormatException;
    sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v5, :cond_1

    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 850
    .restart local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v5, Ljavax/mail/internet/ParseException;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 856
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_2
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "bi":I
    .local v4, "bi":I
    int-to-byte v5, v3

    aput-byte v5, v0, v2

    .line 841
    .end local v3    # "c":C
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 858
    .end local v4    # "bi":I
    .restart local v2    # "bi":I
    :cond_3
    if-eqz p1, :cond_4

    .line 859
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 860
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 861
    :cond_5
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object p1

    .line 862
    :cond_6
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v3
.end method

.method private static decodeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 876
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 877
    .local v1, "c":C
    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    .line 879
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "hex":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v1, v3

    .line 881
    nop

    .end local v2    # "hex":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x2

    .line 888
    :goto_1
    goto :goto_2

    .line 885
    :catch_0
    move-exception v2

    .line 886
    .local v2, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v3, :cond_0

    goto :goto_2

    .line 887
    :cond_0
    new-instance v3, Ljavax/mail/internet/ParseException;

    invoke-virtual {v2}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 882
    .end local v2    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 883
    .local v2, "ex":Ljava/lang/NumberFormatException;
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v3, :cond_1

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 884
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v3, Ljavax/mail/internet/ParseException;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 890
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_2
    int-to-byte v2, v1

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 875
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_3
    return-void
.end method

.method private static encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 763
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 764
    return-object v2

    .line 768
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .local v0, "b":[B
    nop

    .line 772
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 773
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 775
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 777
    .local v4, "c":C
    const/16 v5, 0x20

    const/16 v6, 0x25

    if-le v4, v5, :cond_2

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_2

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_2

    const/16 v5, 0x27

    if-eq v4, v5, :cond_2

    if-eq v4, v6, :cond_2

    .line 778
    const-string v5, "()<>@,;:\\\"\t []/?="

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    goto :goto_1

    .line 781
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 779
    :cond_2
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Ljavax/mail/internet/ParameterList;->hex:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v7, v6, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 774
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 783
    .end local v3    # "i":I
    :cond_3
    new-instance v3, Ljavax/mail/internet/ParameterList$Value;

    invoke-direct {v3, v2}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    move-object v2, v3

    .line 784
    .local v2, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p1, v2, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    .line 785
    iput-object p0, v2, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 786
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 787
    return-object v2

    .line 769
    .end local v0    # "b":[B
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "v":Ljavax/mail/internet/ParameterList$Value;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v2
.end method

.method private static extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 795
    new-instance v0, Ljavax/mail/internet/ParameterList$Value;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    .line 796
    .local v0, "v":Ljavax/mail/internet/ParameterList$Value;
    iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 798
    const/16 v1, 0x27

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 799
    .local v2, "i":I
    if-gez v2, :cond_1

    .line 800
    sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v1, :cond_0

    .line 803
    return-object v0

    .line 801
    :cond_0
    new-instance v1, Ljavax/mail/internet/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing charset in encoded value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "v":Ljavax/mail/internet/ParameterList$Value;
    .end local p0    # "value":Ljava/lang/String;
    throw v1

    .line 805
    .restart local v0    # "v":Ljavax/mail/internet/ParameterList$Value;
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "charset":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 807
    .local v1, "li":I
    if-gez v1, :cond_3

    .line 808
    sget-boolean v4, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v4, :cond_2

    .line 811
    return-object v0

    .line 809
    :cond_2
    new-instance v4, Ljavax/mail/internet/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing language in encoded value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .end local v0    # "v":Ljavax/mail/internet/ParameterList$Value;
    .end local p0    # "value":Ljava/lang/String;
    throw v4

    .line 814
    .restart local v0    # "v":Ljavax/mail/internet/ParameterList$Value;
    .restart local p0    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 815
    iput-object v3, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "li":I
    .end local v2    # "i":I
    .end local v3    # "charset":Ljava/lang/String;
    goto :goto_0

    .line 819
    :catch_0
    move-exception v1

    .line 820
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v2, :cond_4

    goto :goto_1

    .line 821
    :cond_4
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 816
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 817
    .local v1, "nex":Ljava/lang/NumberFormatException;
    sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v2, :cond_5

    .line 822
    .end local v1    # "nex":Ljava/lang/NumberFormatException;
    :goto_0
    nop

    .line 823
    :goto_1
    return-object v0

    .line 818
    .restart local v1    # "nex":Ljava/lang/NumberFormatException;
    :cond_5
    new-instance v2, Ljavax/mail/internet/ParseException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 346
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 347
    .local v0, "star":I
    if-gez v0, :cond_0

    .line 349
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 352
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-static {p2}, Ljavax/mail/internet/ParameterList;->extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v1

    .line 355
    .local v1, "v":Ljavax/mail/internet/ParameterList$Value;
    :try_start_0
    iget-object v2, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    iget-object v3, v1, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;

    invoke-static {v2, v3}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 356
    :catch_0
    move-exception v2

    .line 357
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z

    if-nez v3, :cond_1

    .line 360
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v1    # "v":Ljavax/mail/internet/ParameterList$Value;
    goto :goto_3

    .line 358
    .restart local v1    # "v":Ljavax/mail/internet/ParameterList$Value;
    .restart local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v3, Ljavax/mail/internet/ParseException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    .end local v1    # "v":Ljavax/mail/internet/ParameterList$Value;
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "rname":Ljava/lang/String;
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 370
    const-string v3, "*0*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 371
    invoke-static {p2}, Ljavax/mail/internet/ParameterList;->extractCharset(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v3

    .local v3, "v":Ljava/lang/Object;
    goto :goto_1

    .line 373
    .end local v3    # "v":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljavax/mail/internet/ParameterList$Value;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    .line 374
    .restart local v3    # "v":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v4, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 375
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/ParameterList$Value;

    iput-object p2, v4, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .line 377
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 380
    .end local v3    # "v":Ljava/lang/Object;
    :cond_4
    move-object v3, p2

    .line 382
    .restart local v3    # "v":Ljava/lang/Object;
    :goto_2
    iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .end local v1    # "rname":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;
    :goto_3
    return-void
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 748
    const-string v0, "()<>@,;:\\\"\t []/?="

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public combineSegments()V
    .locals 1

    .line 325
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 332
    :cond_0
    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 519
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljavax/mail/internet/ParameterList$MultiValue;

    if-eqz v1, :cond_0

    .line 521
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/ParameterList$MultiValue;

    iget-object v1, v1, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 522
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    instance-of v1, v0, Ljavax/mail/internet/ParameterList$LiteralValue;

    if-eqz v1, :cond_1

    .line 523
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/ParameterList$LiteralValue;

    iget-object v1, v1, Ljavax/mail/internet/ParameterList$LiteralValue;->value:Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 524
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    instance-of v1, v0, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v1, :cond_2

    .line 525
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/ParameterList$Value;

    iget-object v1, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 528
    .restart local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljavax/mail/internet/ParameterList$ParamEnum;

    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$ParamEnum;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 596
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 540
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z

    if-eqz v0, :cond_0

    .line 542
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    goto :goto_1

    .line 543
    :catch_0
    move-exception v0

    .line 545
    .local v0, "pex":Ljavax/mail/internet/ParseException;
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "pex":Ljavax/mail/internet/ParseException;
    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :goto_1
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .line 564
    sget-boolean v0, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v0, :cond_1

    .line 565
    invoke-static {p2, p3}, Ljavax/mail/internet/ParameterList;->encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;

    move-result-object v0

    .line 567
    .local v0, "ev":Ljavax/mail/internet/ParameterList$Value;
    if-eqz v0, :cond_0

    .line 568
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .end local v0    # "ev":Ljavax/mail/internet/ParameterList$Value;
    :goto_0
    goto :goto_1

    .line 572
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_1
    return-void
.end method

.method setLiteral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 584
    new-instance v0, Ljavax/mail/internet/ParameterList$LiteralValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$LiteralValue;-><init>(Ljavax/mail/internet/ParameterList$1;)V

    .line 585
    .local v0, "lv":Ljavax/mail/internet/ParameterList$LiteralValue;
    iput-object p2, v0, Ljavax/mail/internet/ParameterList$LiteralValue;->value:Ljava/lang/String;

    .line 586
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    return-void
.end method

.method public size()I
    .locals 1

    .line 505
    iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 12
    .param p1, "used"    # I

    .line 635
    new-instance v0, Ljavax/mail/internet/ParameterList$ToStringBuffer;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ParameterList$ToStringBuffer;-><init>(I)V

    .line 636
    .local v0, "sb":Ljavax/mail/internet/ParameterList$ToStringBuffer;
    iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 638
    .local v1, "e":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 639
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 640
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 642
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 643
    .local v4, "v":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/mail/internet/ParameterList$MultiValue;

    const-string v6, "*"

    if-eqz v5, :cond_2

    .line 644
    move-object v5, v4

    check-cast v5, Ljavax/mail/internet/ParameterList$MultiValue;

    .line 645
    .local v5, "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v5}, Ljavax/mail/internet/ParameterList$MultiValue;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 647
    invoke-virtual {v5, v7}, Ljavax/mail/internet/ParameterList$MultiValue;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 649
    .local v8, "va":Ljava/lang/Object;
    instance-of v9, v8, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v9, :cond_0

    .line 650
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 651
    .local v9, "ns":Ljava/lang/String;
    move-object v10, v8

    check-cast v10, Ljavax/mail/internet/ParameterList$Value;

    iget-object v10, v10, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .local v10, "value":Ljava/lang/String;
    goto :goto_2

    .line 653
    .end local v9    # "ns":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 654
    .restart local v9    # "ns":Ljava/lang/String;
    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .line 656
    .restart local v10    # "value":Ljava/lang/String;
    :goto_2
    invoke-static {v10}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .end local v8    # "va":Ljava/lang/Object;
    .end local v9    # "ns":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 658
    .end local v5    # "vv":Ljavax/mail/internet/ParameterList$MultiValue;
    .end local v7    # "i":I
    .end local v10    # "value":Ljava/lang/String;
    :cond_1
    goto/16 :goto_4

    :cond_2
    instance-of v5, v4, Ljavax/mail/internet/ParameterList$LiteralValue;

    if-eqz v5, :cond_3

    .line 659
    move-object v5, v4

    check-cast v5, Ljavax/mail/internet/ParameterList$LiteralValue;

    iget-object v5, v5, Ljavax/mail/internet/ParameterList$LiteralValue;->value:Ljava/lang/String;

    .line 660
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 661
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    instance-of v5, v4, Ljavax/mail/internet/ParameterList$Value;

    if-eqz v5, :cond_4

    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    move-object v5, v4

    check-cast v5, Ljavax/mail/internet/ParameterList$Value;

    iget-object v5, v5, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;

    .line 668
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {v5}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 670
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 683
    .restart local v5    # "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3c

    if-le v7, v8, :cond_7

    sget-boolean v7, Ljavax/mail/internet/ParameterList;->splitLongParameters:Z

    if-eqz v7, :cond_7

    sget-boolean v7, Ljavax/mail/internet/ParameterList;->encodeParameters:Z

    if-eqz v7, :cond_7

    .line 685
    const/4 v7, 0x0

    .line 686
    .local v7, "seg":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_5

    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 690
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 692
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .end local v7    # "seg":I
    :cond_6
    goto :goto_4

    .line 695
    :cond_7
    invoke-static {v5}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 699
    :cond_8
    invoke-virtual {v0}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
