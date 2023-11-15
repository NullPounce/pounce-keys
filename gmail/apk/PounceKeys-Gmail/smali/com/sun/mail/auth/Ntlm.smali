.class public Lcom/sun/mail/auth/Ntlm;
.super Ljava/lang/Object;
.source "Ntlm.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final HIRESPONSERVERSION:B = 0x1t

.field private static final NTLMSSP_NEGOTIATE_128:I = 0x20000000

.field private static final NTLMSSP_NEGOTIATE_56:I = -0x80000000

.field private static final NTLMSSP_NEGOTIATE_ALWAYS_SIGN:I = 0x8000

.field private static final NTLMSSP_NEGOTIATE_DATAGRAM:I = 0x40

.field private static final NTLMSSP_NEGOTIATE_EXTENDED_SESSIONSECURITY:I = 0x80000

.field private static final NTLMSSP_NEGOTIATE_IDENTIFY:I = 0x100000

.field private static final NTLMSSP_NEGOTIATE_KEY_EXCH:I = 0x40000000

.field private static final NTLMSSP_NEGOTIATE_LM_KEY:I = 0x80

.field private static final NTLMSSP_NEGOTIATE_NTLM:I = 0x200

.field private static final NTLMSSP_NEGOTIATE_OEM:I = 0x2

.field private static final NTLMSSP_NEGOTIATE_OEM_DOMAIN_SUPPLIED:I = 0x1000

.field private static final NTLMSSP_NEGOTIATE_OEM_WORKSTATION_SUPPLIED:I = 0x2000

.field private static final NTLMSSP_NEGOTIATE_SEAL:I = 0x20

.field private static final NTLMSSP_NEGOTIATE_SIGN:I = 0x10

.field private static final NTLMSSP_NEGOTIATE_TARGET_INFO:I = 0x800000

.field private static final NTLMSSP_NEGOTIATE_UNICODE:I = 0x1

.field private static final NTLMSSP_NEGOTIATE_VERSION:I = 0x2000000

.field private static final NTLMSSP_REQUEST_NON_NT_SESSION_KEY:I = 0x400000

.field private static final NTLMSSP_REQUEST_TARGET:I = 0x4

.field private static final NTLMSSP_TARGET_TYPE_DOMAIN:I = 0x10000

.field private static final NTLMSSP_TARGET_TYPE_SERVER:I = 0x20000

.field private static final RESPONSERVERSION:B = 0x1t

.field private static final Z4:[B

.field private static final Z6:[B

.field private static hex:[C


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private fac:Ljavax/crypto/SecretKeyFactory;

.field private hmac:Ljavax/crypto/Mac;

.field private hostname:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private md4:Lcom/sun/mail/auth/MD4;

.field private ntdomain:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private type1:[B

.field private type3:[B

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    nop

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/auth/Ntlm;->Z6:[B

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/auth/Ntlm;->Z4:[B

    .line 489
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/mail/auth/Ntlm;->hex:[C

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/mail/util/MailLogger;)V
    .locals 4
    .param p1, "ntdomain"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "logger"    # Lcom/sun/mail/util/MailLogger;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 131
    .local v0, "i":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 132
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 134
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 135
    if-eq v0, v2, :cond_1

    .line 136
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 137
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 138
    :cond_1
    if-nez p1, :cond_2

    .line 139
    const-string p1, ""

    .line 141
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "DEBUG NTLM"

    invoke-virtual {p5, v1, v2}, Lcom/sun/mail/util/MailLogger;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    .line 146
    invoke-direct {p0}, Lcom/sun/mail/auth/Ntlm;->init0()V

    .line 147
    return-void
.end method

.method private calcLMHash()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 249
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 250
    .local v1, "magic":[B
    const/4 v2, 0x0

    .line 252
    .local v2, "pwb":[B
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iso-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 256
    nop

    .line 257
    const/16 v3, 0xe

    new-array v4, v3, [B

    .line 258
    .local v4, "pwb1":[B
    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 259
    .local v5, "len":I
    if-le v5, v3, :cond_0

    .line 260
    const/16 v5, 0xe

    .line 261
    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    new-instance v6, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {p0, v4, v3}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 264
    .local v6, "dks1":Ljavax/crypto/spec/DESKeySpec;
    new-instance v7, Ljavax/crypto/spec/DESKeySpec;

    const/4 v8, 0x7

    invoke-direct {p0, v4, v8}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 266
    .local v7, "dks2":Ljavax/crypto/spec/DESKeySpec;
    iget-object v8, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v8, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 267
    .local v8, "key1":Ljavax/crypto/SecretKey;
    iget-object v9, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v9, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 268
    .local v9, "key2":Ljavax/crypto/SecretKey;
    iget-object v10, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 269
    iget-object v10, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v10, v1, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v10

    .line 270
    .local v10, "out1":[B
    iget-object v12, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v12, v11, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 271
    iget-object v11, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v11, v1, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v11

    .line 273
    .local v11, "out2":[B
    const/16 v12, 0x15

    new-array v12, v12, [B

    .line 274
    .local v12, "result":[B
    invoke-static {v10, v3, v12, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    invoke-static {v11, v3, v12, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    return-object v12

    .line 253
    .end local v4    # "pwb1":[B
    .end local v5    # "len":I
    .end local v6    # "dks1":Ljavax/crypto/spec/DESKeySpec;
    .end local v7    # "dks2":Ljavax/crypto/spec/DESKeySpec;
    .end local v8    # "key1":Ljavax/crypto/SecretKey;
    .end local v9    # "key2":Ljavax/crypto/SecretKey;
    .end local v10    # "out1":[B
    .end local v11    # "out2":[B
    .end local v12    # "result":[B
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method private calcNTHash()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "pw":[B
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 285
    nop

    .line 286
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->md4:Lcom/sun/mail/auth/MD4;

    invoke-virtual {v1, v0}, Lcom/sun/mail/auth/MD4;->digest([B)[B

    move-result-object v1

    .line 287
    .local v1, "out":[B
    const/16 v2, 0x15

    new-array v2, v2, [B

    .line 288
    .local v2, "result":[B
    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    return-object v2

    .line 283
    .end local v1    # "out":[B
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private calcResponse([B[B)[B
    .locals 13
    .param p1, "key"    # [B
    .param p2, "text"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 299
    array-length v0, p1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 300
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 301
    .local v0, "dks1":Ljavax/crypto/spec/DESKeySpec;
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 302
    .local v2, "dks2":Ljavax/crypto/spec/DESKeySpec;
    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    const/16 v4, 0xe

    invoke-direct {p0, p1, v4}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 303
    .local v3, "dks3":Ljavax/crypto/spec/DESKeySpec;
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v4, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 304
    .local v4, "key1":Ljavax/crypto/SecretKey;
    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v5, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 305
    .local v5, "key2":Ljavax/crypto/SecretKey;
    iget-object v6, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v6, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 306
    .local v6, "key3":Ljavax/crypto/SecretKey;
    iget-object v7, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 307
    iget-object v7, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/16 v9, 0x8

    invoke-virtual {v7, p2, v1, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v7

    .line 308
    .local v7, "out1":[B
    iget-object v10, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v10, v8, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 309
    iget-object v10, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v10, p2, v1, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v10

    .line 310
    .local v10, "out2":[B
    iget-object v11, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v11, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 311
    iget-object v8, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v8, p2, v1, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v8

    .line 312
    .local v8, "out3":[B
    const/16 v11, 0x18

    new-array v11, v11, [B

    .line 313
    .local v11, "result":[B
    invoke-static {v7, v1, v11, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    invoke-static {v10, v1, v11, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    const/16 v12, 0x10

    invoke-static {v8, v1, v11, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    return-object v11

    .line 299
    .end local v0    # "dks1":Ljavax/crypto/spec/DESKeySpec;
    .end local v2    # "dks2":Ljavax/crypto/spec/DESKeySpec;
    .end local v3    # "dks3":Ljavax/crypto/spec/DESKeySpec;
    .end local v4    # "key1":Ljavax/crypto/SecretKey;
    .end local v5    # "key2":Ljavax/crypto/SecretKey;
    .end local v6    # "key3":Ljavax/crypto/SecretKey;
    .end local v7    # "out1":[B
    .end local v8    # "out3":[B
    .end local v10    # "out2":[B
    .end local v11    # "result":[B
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private calcV2Response([B[B[B)[B
    .locals 7
    .param p1, "nthash"    # [B
    .param p2, "blob"    # [B
    .param p3, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, "txt":[B
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnicodeLittleUnmarked"

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 332
    nop

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/auth/Ntlm;->hmacMD5([B[B)[B

    move-result-object v1

    .line 334
    .local v1, "ntlmv2hash":[B
    array-length v2, p2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 335
    .local v2, "cb":[B
    const/4 v4, 0x0

    invoke-static {p3, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    array-length v5, p2

    invoke-static {p2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    array-length v3, p2

    const/16 v5, 0x10

    add-int/2addr v3, v5

    new-array v3, v3, [B

    .line 338
    .local v3, "result":[B
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/auth/Ntlm;->hmacMD5([B[B)[B

    move-result-object v6

    invoke-static {v6, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    array-length v6, p2

    invoke-static {p2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    return-object v3

    .line 329
    .end local v1    # "ntlmv2hash":[B
    .end local v2    # "cb":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v1

    .line 331
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private copybytes([BILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "destpos"    # I
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "enc"    # Ljava/lang/String;

    .line 151
    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    .local v0, "x":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "x":[B
    nop

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private hmacMD5([B[B)[B
    .locals 4
    .param p1, "key"    # [B
    .param p2, "text"    # [B

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->hmac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v1, "HmacMD5"

    if-nez v0, :cond_0

    .line 230
    :try_start_1
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->hmac:Ljavax/crypto/Mac;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 233
    :cond_0
    nop

    .line 235
    const/16 v0, 0x10

    :try_start_2
    new-array v2, v0, [B

    .line 236
    .local v2, "nk":[B
    array-length v3, p1

    if-le v3, v0, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 238
    .local v0, "skey":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 239
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->hmac:Ljavax/crypto/Mac;

    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 242
    .end local v0    # "skey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "nk":[B
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 240
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 231
    .end local v0    # "ex":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private init0()V
    .locals 4

    .line 98
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    .line 99
    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    .line 100
    const/16 v1, 0x9

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->type3:[B

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :try_start_0
    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    .line 107
    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    .line 108
    new-instance v0, Lcom/sun/mail/auth/MD4;

    invoke-direct {v0}, Lcom/sun/mail/auth/MD4;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/auth/Ntlm;->md4:Lcom/sun/mail/auth/MD4;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 109
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :array_0
    .array-data 1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
        0x3t
    .end array-data
.end method

.method private makeDesKey([BI)[B
    .locals 11
    .param p1, "input"    # [B
    .param p2, "off"    # I

    .line 208
    array-length v0, p1

    new-array v0, v0, [I

    .line 209
    .local v0, "in":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 210
    aget-byte v2, p1, v1

    if-gez v2, :cond_0

    aget-byte v2, p1, v1

    add-int/lit16 v2, v2, 0x100

    goto :goto_1

    :cond_0
    aget-byte v2, p1, v1

    :goto_1
    aput v2, v0, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 213
    .local v1, "out":[B
    add-int/lit8 v2, p2, 0x0

    aget v2, v0, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 214
    add-int/lit8 v2, p2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x7

    shl-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p2, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    shr-int/2addr v4, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 215
    add-int/lit8 v2, p2, 0x1

    aget v2, v0, v2

    const/4 v4, 0x6

    shl-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v6, p2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x2

    shr-int/2addr v6, v7

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 216
    add-int/lit8 v2, p2, 0x2

    aget v2, v0, v2

    const/4 v6, 0x5

    shl-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v8, p2, 0x3

    aget v8, v0, v8

    const/4 v9, 0x3

    shr-int/2addr v8, v9

    or-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    .line 217
    add-int/lit8 v2, p2, 0x3

    aget v2, v0, v2

    const/4 v8, 0x4

    shl-int/2addr v2, v8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v10, p2, 0x4

    aget v10, v0, v10

    shr-int/2addr v10, v8

    or-int/2addr v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 218
    add-int/lit8 v2, p2, 0x4

    aget v2, v0, v2

    shl-int/2addr v2, v9

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v8, p2, 0x5

    aget v8, v0, v8

    shr-int/2addr v8, v6

    or-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 219
    add-int/lit8 v2, p2, 0x5

    aget v2, v0, v2

    shl-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v6, p2, 0x6

    aget v6, v0, v6

    shr-int/2addr v6, v4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 220
    add-int/lit8 v2, p2, 0x6

    aget v2, v0, v2

    shl-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 221
    return-object v1
.end method

.method private static readInt([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 476
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static readShort([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .line 466
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 495
    sget-object v2, Lcom/sun/mail/auth/Ntlm;->hex:[C

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sun/mail/auth/Ntlm;->hex:[C

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeInt([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "data"    # I

    .line 483
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 484
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 485
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 486
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 487
    return-void
.end method

.method private writeShort([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "data"    # I

    .line 471
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 472
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 473
    return-void
.end method


# virtual methods
.method public generateType1Msg(I)Ljava/lang/String;
    .locals 1
    .param p1, "flags"    # I

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/auth/Ntlm;->generateType1Msg(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateType1Msg(IZ)Ljava/lang/String;
    .locals 8
    .param p1, "flags"    # I
    .param p2, "v2"    # Z

    .line 164
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 165
    .local v0, "dlen":I
    const v1, 0xa203

    or-int/2addr v1, p1

    .line 172
    .local v1, "type1flags":I
    if-eqz v0, :cond_0

    .line 173
    or-int/lit16 v1, v1, 0x1000

    .line 174
    :cond_0
    if-eqz p2, :cond_1

    .line 175
    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    const/16 v3, 0xc

    invoke-direct {p0, v2, v3, v1}, Lcom/sun/mail/auth/Ntlm;->writeInt([BII)V

    .line 177
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    const/16 v3, 0x1c

    const/16 v4, 0x20

    aput-byte v4, v2, v3

    .line 178
    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v0}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 179
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    const/16 v3, 0x12

    invoke-direct {p0, v2, v3, v0}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 181
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 182
    .local v2, "hlen":I
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    const/16 v5, 0x18

    invoke-direct {p0, v3, v5, v2}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 183
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    const/16 v5, 0x1a

    invoke-direct {p0, v3, v5, v2}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 185
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    add-int/lit8 v4, v2, 0x20

    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    add-int/lit8 v4, v2, 0x20

    const/16 v5, 0x14

    invoke-direct {p0, v3, v5, v4}, Lcom/sun/mail/auth/Ntlm;->writeInt([BII)V

    .line 189
    add-int/lit8 v3, v2, 0x20

    add-int/2addr v3, v0

    new-array v3, v3, [B

    .line 190
    .local v3, "msg":[B
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    add-int/lit8 v5, v2, 0x20

    add-int/2addr v5, v0

    const/4 v7, 0x0

    invoke-static {v4, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type 1 message: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/sun/mail/auth/Ntlm;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 194
    :cond_2
    const/4 v4, 0x0

    .line 196
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-static {v3}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v7

    invoke-direct {v5, v7, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 199
    nop

    .line 200
    return-object v4

    .line 197
    :catch_0
    move-exception v5

    .line 198
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
.end method

.method public generateType3Msg(Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p1, "type2msg"    # Ljava/lang/String;

    .line 348
    move-object/from16 v1, p0

    const-string v0, "UnicodeLittleUnmarked"

    const/4 v2, 0x0

    .line 350
    .local v2, "type2":[B
    :try_start_0
    const-string/jumbo v3, "us-ascii"

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 354
    nop

    .line 355
    :try_start_1
    iget-object v3, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    iget-object v3, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type 2 message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/sun/mail/auth/Ntlm;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 358
    :cond_0
    const/16 v3, 0x8

    new-array v5, v3, [B

    .line 359
    .local v5, "challenge":[B
    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-static {v2, v6, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    const v8, 0x8201

    .line 366
    .local v8, "type3flags":I
    iget-object v9, v1, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    .line 367
    .local v9, "ulen":I
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v12, 0x24

    invoke-direct {v1, v11, v12, v9}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 368
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v12, 0x26

    invoke-direct {v1, v11, v12, v9}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 369
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/2addr v11, v10

    .line 370
    .local v11, "dlen":I
    iget-object v12, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v13, 0x1c

    invoke-direct {v1, v12, v13, v11}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 371
    iget-object v12, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v14, 0x1e

    invoke-direct {v1, v12, v14, v11}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 372
    iget-object v12, v1, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/2addr v12, v10

    .line 373
    .local v12, "hlen":I
    iget-object v14, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v15, 0x2c

    invoke-direct {v1, v14, v15, v12}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 374
    iget-object v14, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v13, 0x2e

    invoke-direct {v1, v14, v13, v12}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 376
    const/16 v13, 0x40

    .line 377
    .local v13, "l":I
    iget-object v14, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-direct {v1, v14, v13, v6, v0}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v14, 0x20

    invoke-direct {v1, v6, v14, v13}, Lcom/sun/mail/auth/Ntlm;->writeInt([BII)V

    .line 379
    add-int/2addr v13, v11

    .line 380
    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    iget-object v10, v1, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    invoke-direct {v1, v6, v13, v10, v0}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v10, 0x28

    invoke-direct {v1, v6, v10, v13}, Lcom/sun/mail/auth/Ntlm;->writeInt([BII)V

    .line 382
    add-int/2addr v13, v9

    .line 383
    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    iget-object v14, v1, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-direct {v1, v6, v13, v14, v0}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v6, 0x30

    invoke-direct {v1, v0, v6, v13}, Lcom/sun/mail/auth/Ntlm;->writeInt([BII)V

    .line 385
    add-int/2addr v13, v12

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "msg":[B
    const/4 v6, 0x0

    .line 389
    .local v6, "lmresponse":[B
    const/4 v14, 0x0

    .line 390
    .local v14, "ntresponse":[B
    const/16 v15, 0x14

    invoke-static {v2, v15}, Lcom/sun/mail/auth/Ntlm;->readInt([BI)I

    move-result v19

    .line 393
    .local v19, "flags":I
    const/high16 v20, 0x80000

    and-int v21, v19, v20

    if-eqz v21, :cond_3

    .line 395
    iget-object v15, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v10, "Using NTLMv2"

    invoke-virtual {v15, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 396
    or-int v8, v8, v20

    .line 397
    new-array v10, v3, [B

    .line 399
    .local v10, "nonce":[B
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    invoke-virtual {v15, v10}, Ljava/util/Random;->nextBytes([B)V

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/auth/Ntlm;->calcNTHash()[B

    move-result-object v15

    .line 401
    .local v15, "nthash":[B
    invoke-direct {v1, v15, v10, v5}, Lcom/sun/mail/auth/Ntlm;->calcV2Response([B[B[B)[B

    move-result-object v20

    move-object/from16 v6, v20

    .line 402
    new-array v3, v7, [B

    .line 403
    .local v3, "targetInfo":[B
    const/high16 v23, 0x800000

    and-int v23, v19, v23

    if-eqz v23, :cond_1

    .line 404
    const/16 v7, 0x28

    invoke-static {v2, v7}, Lcom/sun/mail/auth/Ntlm;->readShort([BI)I

    move-result v7

    .line 405
    .local v7, "tlen":I
    move-object/from16 v22, v0

    const/16 v0, 0x2c

    .end local v0    # "msg":[B
    .local v22, "msg":[B
    invoke-static {v2, v0}, Lcom/sun/mail/auth/Ntlm;->readInt([BI)I

    move-result v0

    .line 406
    .local v0, "toff":I
    move-object/from16 v18, v3

    .end local v3    # "targetInfo":[B
    .local v18, "targetInfo":[B
    new-array v3, v7, [B

    .line 407
    .end local v18    # "targetInfo":[B
    .restart local v3    # "targetInfo":[B
    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 403
    .end local v7    # "tlen":I
    .end local v22    # "msg":[B
    .local v0, "msg":[B
    :cond_1
    move-object/from16 v22, v0

    move-object/from16 v18, v3

    .line 409
    .end local v0    # "msg":[B
    .restart local v22    # "msg":[B
    :goto_0
    array-length v0, v3

    const/16 v4, 0x20

    add-int/2addr v0, v4

    new-array v0, v0, [B

    .line 410
    .local v0, "blob":[B
    const/4 v4, 0x1

    const/4 v7, 0x0

    aput-byte v4, v0, v7

    .line 411
    aput-byte v4, v0, v4

    .line 412
    sget-object v4, Lcom/sun/mail/auth/Ntlm;->Z6:[B

    move-object/from16 v17, v2

    .end local v2    # "type2":[B
    .local v17, "type2":[B
    const/4 v2, 0x6

    move-object/from16 v18, v6

    const/4 v6, 0x2

    .end local v6    # "lmresponse":[B
    .local v18, "lmresponse":[B
    invoke-static {v4, v7, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide v24, 0xa9730b66800L

    add-long v6, v6, v24

    const-wide/16 v24, 0x2710

    mul-long v6, v6, v24

    .line 415
    .local v6, "now":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_2

    .line 416
    add-int/lit8 v16, v2, 0x8

    const-wide/16 v24, 0xff

    move-object/from16 v20, v5

    .end local v5    # "challenge":[B
    .local v20, "challenge":[B
    and-long v4, v6, v24

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v16

    .line 417
    const/16 v4, 0x8

    shr-long/2addr v6, v4

    .line 415
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v20

    goto :goto_1

    .end local v20    # "challenge":[B
    .restart local v5    # "challenge":[B
    :cond_2
    move-object/from16 v20, v5

    .line 419
    .end local v2    # "i":I
    .end local v5    # "challenge":[B
    .restart local v20    # "challenge":[B
    const/16 v2, 0x10

    const/4 v5, 0x0

    invoke-static {v10, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    sget-object v2, Lcom/sun/mail/auth/Ntlm;->Z4:[B

    const/4 v4, 0x4

    move-wide/from16 v24, v6

    const/16 v6, 0x18

    .end local v6    # "now":J
    .local v24, "now":J
    invoke-static {v2, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    array-length v6, v3

    const/16 v7, 0x1c

    invoke-static {v3, v5, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    array-length v6, v3

    add-int/2addr v6, v7

    invoke-static {v2, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    move-object/from16 v2, v20

    .end local v20    # "challenge":[B
    .local v2, "challenge":[B
    invoke-direct {v1, v15, v0, v2}, Lcom/sun/mail/auth/Ntlm;->calcV2Response([B[B[B)[B

    move-result-object v4

    move-object v0, v4

    .line 424
    .end local v3    # "targetInfo":[B
    .end local v10    # "nonce":[B
    .end local v14    # "ntresponse":[B
    .end local v15    # "nthash":[B
    .end local v24    # "now":J
    .local v0, "ntresponse":[B
    move-object/from16 v6, v18

    goto :goto_2

    .line 425
    .end local v17    # "type2":[B
    .end local v18    # "lmresponse":[B
    .end local v22    # "msg":[B
    .local v0, "msg":[B
    .local v2, "type2":[B
    .restart local v5    # "challenge":[B
    .local v6, "lmresponse":[B
    .restart local v14    # "ntresponse":[B
    :cond_3
    move-object/from16 v22, v0

    move-object/from16 v17, v2

    move-object v2, v5

    .end local v0    # "msg":[B
    .end local v5    # "challenge":[B
    .local v2, "challenge":[B
    .restart local v17    # "type2":[B
    .restart local v22    # "msg":[B
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/auth/Ntlm;->calcLMHash()[B

    move-result-object v0

    .line 426
    .local v0, "lmhash":[B
    invoke-direct {v1, v0, v2}, Lcom/sun/mail/auth/Ntlm;->calcResponse([B[B)[B

    move-result-object v3

    move-object v6, v3

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/auth/Ntlm;->calcNTHash()[B

    move-result-object v3

    .line 428
    .local v3, "nthash":[B
    invoke-direct {v1, v3, v2}, Lcom/sun/mail/auth/Ntlm;->calcResponse([B[B)[B

    move-result-object v4

    .line 430
    .end local v0    # "lmhash":[B
    .end local v3    # "nthash":[B
    .end local v14    # "ntresponse":[B
    .local v4, "ntresponse":[B
    :goto_2
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    array-length v3, v6

    const/4 v5, 0x0

    invoke-static {v6, v5, v0, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    array-length v3, v6

    const/16 v5, 0xc

    invoke-direct {v1, v0, v5, v3}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 432
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    array-length v3, v6

    const/16 v5, 0xe

    invoke-direct {v1, v0, v5, v3}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 433
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v3, 0x10

    invoke-direct {v1, v0, v3, v13}, Lcom/sun/mail/auth/Ntlm;->writeInt([BII)V

    .line 434
    const/16 v0, 0x18

    add-int/2addr v13, v0

    .line 435
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    array-length v3, v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    array-length v3, v4

    const/16 v5, 0x14

    invoke-direct {v1, v0, v5, v3}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 437
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    array-length v3, v4

    const/16 v5, 0x16

    invoke-direct {v1, v0, v5, v3}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 438
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v3, 0x18

    invoke-direct {v1, v0, v3, v13}, Lcom/sun/mail/auth/Ntlm;->writeInt([BII)V

    .line 439
    array-length v0, v4

    add-int/2addr v13, v0

    .line 440
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v3, 0x38

    invoke-direct {v1, v0, v3, v13}, Lcom/sun/mail/auth/Ntlm;->writeShort([BII)V

    .line 442
    new-array v0, v13, [B

    move-object v3, v0

    .line 443
    .end local v22    # "msg":[B
    .local v3, "msg":[B
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v5, 0x3c

    invoke-direct {v1, v0, v5, v8}, Lcom/sun/mail/auth/Ntlm;->writeInt([BII)V

    .line 447
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type 3 message: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/sun/mail/auth/Ntlm;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 450
    :cond_4
    const/4 v5, 0x0

    .line 452
    .local v5, "result":Ljava/lang/String;
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v7

    const-string v10, "iso-8859-1"

    invoke-direct {v0, v7, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 455
    .end local v5    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    nop

    .line 456
    return-object v0

    .line 453
    .end local v0    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "type2msg":Ljava/lang/String;
    throw v7

    .line 458
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "challenge":[B
    .end local v3    # "msg":[B
    .end local v4    # "ntresponse":[B
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "lmresponse":[B
    .end local v8    # "type3flags":I
    .end local v9    # "ulen":I
    .end local v11    # "dlen":I
    .end local v12    # "hlen":I
    .end local v13    # "l":I
    .end local v17    # "type2":[B
    .end local v19    # "flags":I
    .restart local p1    # "type2msg":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 351
    .local v2, "type2":[B
    :catch_2
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "type2msg":Ljava/lang/String;
    throw v3
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 460
    .end local v2    # "type2":[B
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    .restart local p1    # "type2msg":Ljava/lang/String;
    :goto_3
    iget-object v2, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "GeneralSecurityException"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    const-string v2, ""

    return-object v2
.end method
