.class public Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.super Ljava/lang/Object;
.source "BODYSTRUCTURE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static MULTI:I

.field private static NESTED:I

.field private static SINGLE:I

.field static final name:[C

.field private static final parseDebug:Z


# instance fields
.field public attachment:Ljava/lang/String;

.field public bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field public cParams:Ljavax/mail/internet/ParameterList;

.field public dParams:Ljavax/mail/internet/ParameterList;

.field public description:Ljava/lang/String;

.field public disposition:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field public id:Ljava/lang/String;

.field public language:[Ljava/lang/String;

.field public lines:I

.field public md5:Ljava/lang/String;

.field public msgno:I

.field private processedType:I

.field public size:I

.field public subtype:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    .line 57
    const/4 v0, 0x3

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    .line 61
    nop

    .line 62
    const-string v0, "mail.imap.parse.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    .line 61
    return-void

    nop

    :array_0
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
        0x53s
        0x54s
        0x52s
        0x55s
        0x43s
        0x54s
        0x55s
        0x52s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 17
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, -0x1

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 42
    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 66
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_0

    .line 67
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: parsing BODYSTRUCTURE"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    .line 69
    if-eqz v2, :cond_1

    .line 70
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEBUG IMAP: msgno "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_44

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    const-string v5, "DEBUG IMAP: language "

    const-string v6, "DEBUG IMAP: language len "

    const-string v7, "DEBUG IMAP: disposition DONE"

    const-string v8, "DEBUG IMAP: disposition "

    const-string v9, "DEBUG IMAP: disposition NIL"

    const/16 v11, 0x4e

    const-string v12, "DEBUG IMAP: parse DONE"

    const-string v13, "DEBUG IMAP: subtype "

    const/4 v14, 0x1

    const/16 v15, 0x29

    if-ne v3, v4, :cond_1a

    .line 79
    if-eqz v2, :cond_2

    .line 80
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: parsing multipart"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    :cond_2
    const-string v2, "multipart"

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 82
    sget v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v2

    .line 84
    .local v3, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    const/16 v16, 0x1

    .line 86
    .local v16, "i":I
    :cond_3
    new-instance v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v2

    if-eq v2, v4, :cond_3

    .line 97
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 100
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_4

    .line 101
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    :cond_4
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 104
    if-eqz v2, :cond_5

    .line 105
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    :cond_5
    return-void

    .line 111
    :cond_6
    if-eqz v2, :cond_7

    .line 112
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "DEBUG IMAP: parsing extension data"

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v10

    iput-object v10, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 115
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 116
    if-eqz v2, :cond_8

    .line 117
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: body parameters DONE"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :cond_8
    return-void

    .line 122
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v10

    .line 123
    .local v10, "b":B
    if-ne v10, v4, :cond_d

    .line 124
    if-eqz v2, :cond_a

    .line 125
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "DEBUG IMAP: parse disposition"

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    .line 128
    if-eqz v2, :cond_b

    .line 129
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v8

    iput-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 132
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 136
    if-eqz v2, :cond_14

    .line 137
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 133
    :cond_c
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v4, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition in multipart"

    invoke-direct {v2, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_d
    if-eq v10, v11, :cond_12

    const/16 v7, 0x6e

    if-ne v10, v7, :cond_e

    goto :goto_1

    .line 149
    :cond_e
    if-eqz v2, :cond_f

    .line 150
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "DEBUG IMAP: bad multipart disposition, applying Exchange bug workaround"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    .line 153
    if-eqz v2, :cond_10

    .line 154
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEBUG IMAP: multipart description "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    :cond_10
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_11

    .line 159
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_0

    .line 160
    :cond_11
    return-void

    .line 139
    :cond_12
    :goto_1
    if-eqz v2, :cond_13

    .line 140
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    :cond_13
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 165
    :cond_14
    :goto_2
    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 166
    if-eqz v2, :cond_15

    .line 167
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: no body-fld-lang"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    :cond_15
    return-void

    .line 172
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    if-ne v7, v4, :cond_17

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 174
    if-eqz v2, :cond_18

    .line 175
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 178
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "l":Ljava/lang/String;
    if-eqz v4, :cond_18

    .line 180
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "la":[Ljava/lang/String;
    iput-object v6, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 182
    if-eqz v2, :cond_18

    .line 183
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    .end local v4    # "l":Ljava/lang/String;
    .end local v6    # "la":[Ljava/lang/String;
    :cond_18
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_19

    .line 192
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_3

    .line 193
    .end local v3    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;>;"
    .end local v10    # "b":B
    .end local v16    # "i":I
    :cond_19
    goto/16 :goto_8

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    if-eq v3, v15, :cond_43

    .line 215
    if-eqz v2, :cond_1b

    .line 216
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG IMAP: single part"

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 218
    if-eqz v2, :cond_1c

    .line 219
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEBUG IMAP: type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    :cond_1c
    sget v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 222
    if-eqz v2, :cond_1d

    .line 223
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    :cond_1d
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-nez v3, :cond_1e

    .line 227
    const-string v3, "application"

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 228
    const-string v3, "octet-stream"

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 230
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 231
    if-eqz v2, :cond_1f

    .line 232
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEBUG IMAP: cParams "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    .line 234
    if-eqz v2, :cond_20

    .line 235
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEBUG IMAP: id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    .line 237
    if-eqz v2, :cond_21

    .line 238
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEBUG IMAP: description "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readAtomString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 244
    if-eqz v3, :cond_23

    const-string v10, "NIL"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 245
    if-eqz v2, :cond_22

    .line 246
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG IMAP: NIL encoding, applying Exchange bug workaround"

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    :cond_22
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 254
    :cond_23
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_24

    .line 255
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 256
    :cond_24
    if-eqz v2, :cond_25

    .line 257
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEBUG IMAP: encoding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 259
    if-eqz v2, :cond_26

    .line 260
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEBUG IMAP: size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    :cond_26
    iget v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-ltz v3, :cond_42

    .line 266
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v10, "text"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v10, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    const-string v11, "/"

    const-string v13, "DEBUG IMAP: lines "

    if-eqz v3, :cond_29

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 268
    if-eqz v2, :cond_27

    .line 269
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    :cond_27
    iget v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-ltz v3, :cond_28

    goto/16 :goto_4

    .line 271
    :cond_28
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v2, v10}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_29
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v15, "message"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 274
    const-string v15, "rfc822"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 276
    sget v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_2d

    .line 283
    new-instance v3, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v3, v1}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 284
    if-eqz v2, :cond_2a

    .line 285
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "DEBUG IMAP: got envelope of nested message"

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    :cond_2a
    new-array v3, v14, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    new-instance v14, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v14, v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    const/4 v15, 0x0

    aput-object v14, v3, v15

    .line 288
    .local v3, "bs":[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v14

    iput v14, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 290
    if-eqz v2, :cond_2b

    .line 291
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    :cond_2b
    iget v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-ltz v13, :cond_2c

    .line 295
    .end local v3    # "bs":[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    goto :goto_4

    .line 293
    .restart local v3    # "bs":[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :cond_2c
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v2, v10}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    .end local v3    # "bs":[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    :cond_2d
    if-eqz v2, :cond_2f

    .line 297
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG IMAP: missing envelope and body of nested message"

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 302
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v3

    .line 304
    .local v3, "bn":B
    int-to-char v10, v3

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_41

    .line 311
    .end local v3    # "bn":B
    :cond_2f
    :goto_4
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 312
    if-eqz v2, :cond_30

    .line 313
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    :cond_30
    return-void

    .line 320
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    .line 321
    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 322
    if-eqz v2, :cond_32

    .line 323
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: no MD5 DONE"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    :cond_32
    return-void

    .line 328
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v3

    .line 329
    .local v3, "b":B
    if-ne v3, v4, :cond_37

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    .line 331
    if-eqz v2, :cond_34

    .line 332
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    :cond_34
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v8

    iput-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 335
    if-eqz v2, :cond_35

    .line 336
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DEBUG IMAP: dParams "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    :cond_35
    const/16 v8, 0x29

    invoke-virtual {v1, v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v9

    if-eqz v9, :cond_36

    goto :goto_6

    .line 338
    :cond_36
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v4, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition"

    invoke-direct {v2, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 341
    :cond_37
    const/16 v8, 0x4e

    if-eq v3, v8, :cond_39

    const/16 v8, 0x6e

    if-ne v3, v8, :cond_38

    goto :goto_5

    .line 346
    :cond_38
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BODYSTRUCTURE parse error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": bad single part disposition, b "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :cond_39
    :goto_5
    if-eqz v2, :cond_3a

    .line 343
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    :cond_3a
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 352
    :goto_6
    const/16 v8, 0x29

    invoke-virtual {v1, v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 353
    if-eqz v2, :cond_3b

    .line 354
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    :cond_3b
    return-void

    .line 359
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v7

    if-ne v7, v4, :cond_3d

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 361
    if-eqz v2, :cond_3e

    .line 362
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 365
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .restart local v4    # "l":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 367
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    .line 368
    .restart local v6    # "la":[Ljava/lang/String;
    iput-object v6, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 369
    if-eqz v2, :cond_3e

    .line 370
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    .end local v4    # "l":Ljava/lang/String;
    .end local v6    # "la":[Ljava/lang/String;
    :cond_3e
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_3f

    .line 379
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_7

    .line 380
    :cond_3f
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_40

    .line 381
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: all DONE"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    .end local v3    # "b":B
    :cond_40
    :goto_8
    return-void

    .line 305
    .local v3, "bn":B
    :cond_41
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BODYSTRUCTURE parse error: server erroneously included ``lines\'\' element with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    .end local v3    # "bn":B
    :cond_42
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "BODYSTRUCTURE parse error: bad ``size\'\' element"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_43
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "BODYSTRUCTURE parse error: missing body content"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_44
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "BODYSTRUCTURE parse error: missing ``(\'\' at start"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseBodyExtension(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 437
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 439
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    .line 440
    .local v0, "b":B
    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 441
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 443
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    .line 444
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 445
    :cond_1
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    .line 449
    :goto_0
    return-void
.end method

.method private parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "list":Ljavax/mail/internet/ParameterList;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    .line 403
    .local v1, "b":B
    const/16 v2, 0x28

    if-ne v1, v2, :cond_6

    .line 404
    new-instance v2, Ljavax/mail/internet/ParameterList;

    invoke-direct {v2}, Ljavax/mail/internet/ParameterList;-><init>()V

    move-object v0, v2

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "name":Ljava/lang/String;
    sget-boolean v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v3, :cond_1

    .line 408
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEBUG IMAP: parameter name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    :cond_1
    if-eqz v2, :cond_5

    .line 414
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 416
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DEBUG IMAP: parameter value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    :cond_2
    if-nez v4, :cond_4

    .line 418
    if-eqz v3, :cond_3

    .line 419
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "DEBUG IMAP: NIL parameter value, applying Exchange bug workaround"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    :cond_3
    const-string v4, ""

    .line 423
    :cond_4
    invoke-virtual {v0, v2, v4}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {v0}, Ljavax/mail/internet/ParameterList;->combineSegments()V

    goto :goto_1

    .line 410
    .restart local v2    # "name":Ljava/lang/String;
    :cond_5
    new-instance v3, Lcom/sun/mail/iap/ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BODYSTRUCTURE parse error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": null name in parameter list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 426
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    const/16 v2, 0x4e

    if-eq v1, v2, :cond_8

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_7

    goto :goto_0

    .line 431
    :cond_7
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    const-string v3, "Parameter list parse error"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_8
    :goto_0
    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_9

    .line 428
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: parameter list NIL"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_9
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 433
    :goto_1
    return-object v0
.end method


# virtual methods
.method public isMulti()Z
    .locals 2

    .line 386
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNested()Z
    .locals 2

    .line 394
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingle()Z
    .locals 2

    .line 390
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
