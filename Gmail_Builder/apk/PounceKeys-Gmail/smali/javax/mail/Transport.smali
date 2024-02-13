.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;
.source "Transport.java"


# instance fields
.field private volatile transportListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/TransportListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 52
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 53
    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .locals 2
    .param p0, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 100
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static send(Ljavax/mail/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 150
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 1
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 178
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 185
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "No recipient addresses"

    if-eqz v2, :cond_14

    array-length v4, v2

    if-eqz v4, :cond_14

    .line 192
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v4, "protocols":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/mail/Address;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v5, "invalid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v6, "validSent":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v7, "validUnsent":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v2

    if-ge v8, v9, :cond_1

    .line 202
    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 203
    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 204
    .local v9, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    aget-object v10, v2, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v9    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    goto :goto_1

    .line 207
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, "w":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    aget-object v10, v2, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    aget-object v10, v2, v8

    invoke-virtual {v10}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v9    # "w":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 213
    .end local v8    # "i":I
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    .line 214
    .local v8, "dsize":I
    if-eqz v8, :cond_13

    .line 217
    iget-object v0, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_2

    iget-object v0, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    goto :goto_2

    .line 218
    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v0, v9}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    :goto_2
    move-object v9, v0

    .line 224
    .local v9, "s":Ljavax/mail/Session;
    const/4 v10, 0x0

    const/4 v0, 0x1

    if-ne v8, v0, :cond_4

    .line 225
    aget-object v0, v2, v10

    invoke-virtual {v9, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v10

    .line 227
    .local v10, "transport":Ljavax/mail/Transport;
    if-eqz v3, :cond_3

    .line 228
    move-object/from16 v11, p3

    :try_start_0
    invoke-virtual {v10, v3, v11}, Ljavax/mail/Transport;->connect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 230
    :cond_3
    move-object/from16 v11, p3

    invoke-virtual {v10}, Ljavax/mail/Transport;->connect()V

    .line 231
    :goto_3
    invoke-virtual {v10, v1, v2}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    .line 234
    nop

    .line 235
    return-void

    .line 233
    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    .line 234
    throw v0

    .line 242
    .end local v10    # "transport":Ljavax/mail/Transport;
    :cond_4
    move-object/from16 v11, p3

    const/4 v0, 0x0

    .line 243
    .local v0, "chainedEx":Ljavax/mail/MessagingException;
    const/4 v12, 0x0

    .line 245
    .local v12, "sendFailed":Z
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move/from16 v20, v12

    move-object v12, v0

    .end local v0    # "chainedEx":Ljavax/mail/MessagingException;
    .local v12, "chainedEx":Ljavax/mail/MessagingException;
    .local v20, "sendFailed":Z
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    .line 246
    .local v14, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v15, v0, [Ljavax/mail/Address;

    .line 247
    .local v15, "protaddresses":[Ljavax/mail/Address;
    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 250
    aget-object v0, v15, v10

    invoke-virtual {v9, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v0

    move-object/from16 v16, v0

    .local v16, "transport":Ljavax/mail/Transport;
    if-nez v0, :cond_6

    .line 253
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_5
    array-length v10, v15

    if-ge v0, v10, :cond_5

    .line 254
    aget-object v10, v15, v0

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto :goto_5

    .line 255
    .end local v0    # "j":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 258
    :cond_6
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljavax/mail/Transport;->connect()V
    :try_end_1
    .catch Ljavax/mail/SendFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 259
    move-object/from16 v10, v16

    .end local v16    # "transport":Ljavax/mail/Transport;
    .restart local v10    # "transport":Ljavax/mail/Transport;
    :try_start_2
    invoke-virtual {v10, v1, v15}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_2
    .catch Ljavax/mail/SendFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    :cond_7
    :goto_6
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    .line 294
    goto/16 :goto_d

    .line 293
    :catchall_1
    move-exception v0

    goto/16 :goto_e

    .line 285
    :catch_0
    move-exception v0

    goto :goto_7

    .line 260
    :catch_1
    move-exception v0

    goto :goto_8

    .line 293
    .end local v10    # "transport":Ljavax/mail/Transport;
    .restart local v16    # "transport":Ljavax/mail/Transport;
    :catchall_2
    move-exception v0

    move-object/from16 v10, v16

    .end local v16    # "transport":Ljavax/mail/Transport;
    .restart local v10    # "transport":Ljavax/mail/Transport;
    goto/16 :goto_e

    .line 285
    .end local v10    # "transport":Ljavax/mail/Transport;
    .restart local v16    # "transport":Ljavax/mail/Transport;
    :catch_2
    move-exception v0

    move-object/from16 v10, v16

    .line 286
    .end local v16    # "transport":Ljavax/mail/Transport;
    .local v0, "mex":Ljavax/mail/MessagingException;
    .restart local v10    # "transport":Ljavax/mail/Transport;
    :goto_7
    const/16 v20, 0x1

    .line 288
    if-nez v12, :cond_8

    .line 289
    move-object v12, v0

    goto :goto_6

    .line 291
    :cond_8
    :try_start_3
    invoke-virtual {v12, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_6

    .line 260
    .end local v0    # "mex":Ljavax/mail/MessagingException;
    .end local v10    # "transport":Ljavax/mail/Transport;
    .restart local v16    # "transport":Ljavax/mail/Transport;
    :catch_3
    move-exception v0

    move-object/from16 v10, v16

    .line 261
    .end local v16    # "transport":Ljavax/mail/Transport;
    .local v0, "sex":Ljavax/mail/SendFailedException;
    .restart local v10    # "transport":Ljavax/mail/Transport;
    :goto_8
    const/16 v20, 0x1

    .line 263
    if-nez v12, :cond_9

    .line 264
    move-object v12, v0

    goto :goto_9

    .line 266
    :cond_9
    invoke-virtual {v12, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 269
    :goto_9
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v16

    move-object/from16 v18, v16

    .line 270
    .local v18, "a":[Ljavax/mail/Address;
    move-object/from16 v1, v18

    .end local v18    # "a":[Ljavax/mail/Address;
    .local v1, "a":[Ljavax/mail/Address;
    if-eqz v1, :cond_a

    .line 271
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "j":I
    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_a

    .line 272
    aget-object v3, v1, v2

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p2

    goto :goto_a

    .line 275
    .end local v2    # "j":I
    :cond_a
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v2

    move-object v1, v2

    .line 276
    if-eqz v1, :cond_b

    .line 277
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_b

    .line 278
    aget-object v3, v1, v2

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 281
    .end local v2    # "k":I
    :cond_b
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v2

    .line 282
    .local v2, "c":[Ljavax/mail/Address;
    if-eqz v2, :cond_c

    .line 283
    const/4 v3, 0x0

    .local v3, "l":I
    :goto_c
    move-object/from16 v16, v0

    .end local v0    # "sex":Ljavax/mail/SendFailedException;
    .local v16, "sex":Ljavax/mail/SendFailedException;
    array-length v0, v2

    if-ge v3, v0, :cond_7

    .line 284
    aget-object v0, v2, v3

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 283
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    goto :goto_c

    .line 282
    .end local v3    # "l":I
    .end local v16    # "sex":Ljavax/mail/SendFailedException;
    .restart local v0    # "sex":Ljavax/mail/SendFailedException;
    :cond_c
    move-object/from16 v16, v0

    .end local v0    # "sex":Ljavax/mail/SendFailedException;
    .restart local v16    # "sex":Ljavax/mail/SendFailedException;
    goto :goto_6

    .line 295
    .end local v1    # "a":[Ljavax/mail/Address;
    .end local v2    # "c":[Ljavax/mail/Address;
    .end local v14    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    .end local v15    # "protaddresses":[Ljavax/mail/Address;
    .end local v16    # "sex":Ljavax/mail/SendFailedException;
    :goto_d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 293
    .restart local v14    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    .restart local v15    # "protaddresses":[Ljavax/mail/Address;
    :goto_e
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    .line 294
    throw v0

    .line 298
    .end local v10    # "transport":Ljavax/mail/Transport;
    .end local v14    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    .end local v15    # "protaddresses":[Ljavax/mail/Address;
    :cond_d
    if-nez v20, :cond_f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    .line 317
    :cond_e
    return-void

    .line 299
    :cond_f
    :goto_f
    const/4 v0, 0x0

    .local v0, "a":[Ljavax/mail/Address;
    const/4 v1, 0x0

    .local v1, "b":[Ljavax/mail/Address;
    const/4 v2, 0x0

    .line 302
    .restart local v2    # "c":[Ljavax/mail/Address;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 303
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljavax/mail/Address;

    .line 304
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 306
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 307
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljavax/mail/Address;

    .line 308
    invoke-interface {v7, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 310
    :cond_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 311
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljavax/mail/Address;

    .line 312
    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 314
    :cond_12
    new-instance v3, Ljavax/mail/SendFailedException;

    const-string v15, "Sending failed"

    move-object v14, v3

    move-object/from16 v16, v12

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v19}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v3

    .line 215
    .end local v0    # "a":[Ljavax/mail/Address;
    .end local v1    # "b":[Ljavax/mail/Address;
    .end local v2    # "c":[Ljavax/mail/Address;
    .end local v9    # "s":Ljavax/mail/Session;
    .end local v12    # "chainedEx":Ljavax/mail/MessagingException;
    .end local v20    # "sendFailed":Z
    :cond_13
    move-object/from16 v11, p3

    new-instance v1, Ljavax/mail/SendFailedException;

    invoke-direct {v1, v0}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v4    # "protocols":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/mail/Address;>;>;"
    .end local v5    # "invalid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    .end local v6    # "validSent":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    .end local v7    # "validUnsent":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    .end local v8    # "dsize":I
    :cond_14
    move-object/from16 v11, p3

    .line 186
    new-instance v1, Ljavax/mail/SendFailedException;

    invoke-direct {v1, v0}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/TransportListener;

    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 357
    .end local p0    # "this":Ljavax/mail/Transport;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 354
    .end local p1    # "l":Ljavax/mail/event/TransportListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "validSent"    # [Ljavax/mail/Address;
    .param p3, "validUnsent"    # [Ljavax/mail/Address;
    .param p4, "invalid"    # [Ljavax/mail/Address;
    .param p5, "msg"    # Ljavax/mail/Message;

    .line 393
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    new-instance v0, Ljavax/mail/event/TransportEvent;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 398
    .local v0, "e":Ljavax/mail/event/TransportEvent;
    iget-object v1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 399
    return-void
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/TransportListener;

    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local p0    # "this":Ljavax/mail/Transport;
    :cond_0
    monitor-exit p0

    return-void

    .line 369
    .end local p1    # "l":Ljavax/mail/event/TransportListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
