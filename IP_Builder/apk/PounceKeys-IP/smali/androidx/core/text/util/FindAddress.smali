.class Landroidx/core/text/util/FindAddress;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/FindAddress$ZipRange;
    }
.end annotation


# static fields
.field private static final HOUSE_COMPONENT:Ljava/lang/String; = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)"

.field private static final HOUSE_END:Ljava/lang/String; = "(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final HOUSE_POST_DELIM:Ljava/lang/String; = ",\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final HOUSE_PRE_DELIM:Ljava/lang/String; = ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final MAX_ADDRESS_LINES:I = 0x5

.field private static final MAX_ADDRESS_WORDS:I = 0xe

.field private static final MAX_LOCATION_NAME_DISTANCE:I = 0x5

.field private static final MIN_ADDRESS_WORDS:I = 0x4

.field private static final NL:Ljava/lang/String; = "\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final SP:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"

.field private static final WORD_DELIM:Ljava/lang/String; = ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final WORD_END:Ljava/lang/String; = "(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final WS:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final kMaxAddressNameWordLength:I = 0x19

.field private static final sHouseNumberRe:Ljava/util/regex/Pattern;

.field private static final sLocationNameRe:Ljava/util/regex/Pattern;

.field private static final sStateRe:Ljava/util/regex/Pattern;

.field private static final sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

.field private static final sSuffixedNumberRe:Ljava/util/regex/Pattern;

.field private static final sWordRe:Ljava/util/regex/Pattern;

.field private static final sZipCodeRe:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 72
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v0, v1

    const/16 v15, 0x63

    const/4 v14, -0x1

    invoke-direct {v1, v15, v15, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v1, v2

    const/16 v3, 0x23

    const/16 v4, 0x24

    invoke-direct {v2, v3, v4, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v2, v3

    const/16 v4, 0x48

    const/16 v13, 0x47

    invoke-direct {v3, v13, v4, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v4, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v3, v4

    const/16 v12, 0x60

    invoke-direct {v4, v12, v12, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v5, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v4, v5

    const/16 v6, 0x55

    const/16 v11, 0x56

    invoke-direct {v5, v6, v11, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v6, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v5, v6

    const/16 v7, 0x5a

    invoke-direct {v6, v7, v12, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v7, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v6, v7

    const/16 v8, 0x50

    const/16 v9, 0x51

    invoke-direct {v7, v8, v9, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v8, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v7, v8

    const/4 v10, 0x6

    invoke-direct {v8, v10, v10, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v9, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v8, v9

    const/16 v12, 0x14

    invoke-direct {v9, v12, v12, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v9, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v17, v9

    move-object/from16 v59, v0

    const/16 v0, 0x13

    move-object/from16 v10, v17

    invoke-direct {v10, v0, v0, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v10, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v17, v10

    const/4 v0, 0x6

    const/16 v11, 0x20

    const/16 v12, 0x22

    move-object/from16 v13, v17

    invoke-direct {v13, v11, v12, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v12, Landroidx/core/text/util/FindAddress$ZipRange;

    const/16 v13, 0x56

    move-object v11, v12

    const/16 v13, 0x60

    invoke-direct {v12, v13, v13, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v12, Landroidx/core/text/util/FindAddress$ZipRange;

    move v0, v13

    move-object v13, v12

    const/16 v15, 0x1e

    const/16 v0, 0x1f

    invoke-direct {v13, v15, v0, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v60, v1

    const/16 v1, 0x56

    const/16 v15, 0x47

    move-object v13, v0

    const/16 v15, 0x60

    invoke-direct {v0, v15, v15, v14, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move v1, v14

    move-object v14, v0

    invoke-direct {v0, v15, v15, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object v15, v0

    move-object/from16 v61, v2

    const/16 v2, 0x32

    move-object/from16 v62, v3

    const/16 v3, 0x34

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v16, v0

    const/16 v2, 0x53

    invoke-direct {v0, v2, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v17, v0

    const/16 v3, 0x3c

    const/16 v2, 0x3e

    invoke-direct {v0, v3, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v18, v0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v19, v0

    const/16 v2, 0x42

    const/16 v3, 0x43

    move-object/from16 v63, v4

    const/16 v4, 0x49

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v20, v0

    const/16 v2, 0x28

    const/16 v3, 0x2a

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v21, v0

    const/16 v2, 0x46

    const/16 v3, 0x47

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v22, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v23, v0

    const/16 v2, 0x15

    const/16 v3, 0x14

    invoke-direct {v0, v3, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v24, v0

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v25, v0

    const/16 v4, 0x60

    invoke-direct {v0, v4, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v26, v0

    const/16 v4, 0x30

    const/16 v2, 0x31

    invoke-direct {v0, v4, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v27, v0

    const/16 v2, 0x37

    const/16 v4, 0x38

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v28, v0

    const/16 v3, 0x3f

    const/16 v2, 0x41

    invoke-direct {v0, v3, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v29, v0

    const/16 v2, 0x60

    invoke-direct {v0, v2, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v30, v0

    const/16 v2, 0x27

    const/16 v3, 0x26

    invoke-direct {v0, v3, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v31, v0

    const/16 v2, 0x37

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v32, v0

    const/16 v2, 0x1b

    const/16 v4, 0x1c

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v33, v0

    const/16 v2, 0x3a

    invoke-direct {v0, v2, v2, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v34, v0

    const/16 v2, 0x44

    const/16 v4, 0x45

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v35, v0

    const/4 v2, 0x3

    const/4 v4, 0x4

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v36, v0

    const/4 v2, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v2, v4, v1, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v37, v0

    const/16 v2, 0x57

    const/16 v4, 0x58

    const/16 v3, 0x56

    invoke-direct {v0, v2, v4, v3, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v38, v0

    const/16 v3, 0x59

    const/16 v2, 0x60

    invoke-direct {v0, v4, v3, v2, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v39, v0

    const/16 v2, 0xa

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v1, 0x6

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v40, v0

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v41, v0

    const/16 v1, 0x4a

    const/16 v2, 0x49

    invoke-direct {v0, v2, v1, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v42, v0

    const/16 v1, 0x61

    invoke-direct {v0, v1, v1, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v43, v0

    const/16 v1, 0xf

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v44, v0

    const/16 v1, 0x9

    const/4 v2, 0x6

    invoke-direct {v0, v2, v2, v4, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v45, v0

    const/16 v2, 0x60

    invoke-direct {v0, v2, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v46, v0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v47, v0

    const/16 v4, 0x1d

    const/16 v2, 0x1d

    invoke-direct {v0, v4, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v48, v0

    const/16 v2, 0x39

    const/16 v4, 0x39

    invoke-direct {v0, v2, v4, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v49, v0

    const/16 v2, 0x25

    const/16 v4, 0x26

    invoke-direct {v0, v2, v4, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v50, v0

    const/16 v2, 0x4b

    const/16 v4, 0x4f

    const/16 v1, 0x57

    const/16 v3, 0x58

    invoke-direct {v0, v2, v4, v1, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v51, v0

    const/16 v1, 0x54

    const/16 v2, 0x54

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v52, v0

    const/16 v1, 0x16

    const/16 v2, 0x18

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v53, v0

    const/4 v1, 0x6

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v54, v0

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v55, v0

    const/16 v1, 0x62

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v56, v0

    const/16 v1, 0x35

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v57, v0

    const/16 v1, 0x18

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    move-object/from16 v58, v0

    const/16 v1, 0x52

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    move-object/from16 v3, v62

    move-object/from16 v4, v63

    filled-new-array/range {v0 .. v58}, [Landroidx/core/text/util/FindAddress$ZipRange;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    .line 152
    nop

    .line 153
    const-string v0, "[^,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]+(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    .line 170
    nop

    .line 171
    const-string v0, "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    .line 175
    const-string v0, "(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+states[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mariana[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(nd|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+hampshire)|(nj|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+jersey)|(nm|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+island)|(sc|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(sd|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+virginia)|(wy|wyoming))(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    .line 238
    const-string v0, "(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    .line 264
    nop

    .line 265
    const-string v0, "([0-9]+)(st|nd|rd|th)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    .line 267
    nop

    .line 268
    const-string v0, "(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    .line 267
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    return-void
.end method

.method private static attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I
    .locals 13
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "houseNumberMatch"    # Ljava/util/regex/MatchResult;

    .line 401
    const/4 v0, -0x1

    .line 402
    .local v0, "restartPos":I
    const/4 v1, -0x1

    .line 403
    .local v1, "nonZipMatch":I
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result v2

    .line 404
    .local v2, "it":I
    const/4 v3, 0x1

    .line 405
    .local v3, "numLines":I
    const/4 v4, 0x1

    .line 406
    .local v4, "consecutiveHouseNumbers":Z
    const/4 v5, 0x0

    .line 407
    .local v5, "foundLocationName":Z
    const/4 v6, 0x1

    .line 408
    .local v6, "wordCount":I
    const-string v7, ""

    .line 410
    .local v7, "lastWord":Ljava/lang/String;
    sget-object v8, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 412
    .local v8, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_d

    .line 413
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 415
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    neg-int v9, v9

    return v9

    .line 417
    :cond_0
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0x19

    if-le v9, v10, :cond_1

    .line 419
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    neg-int v9, v9

    return v9

    .line 423
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    const/4 v10, -0x1

    if-ge v2, v9, :cond_3

    .line 424
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "it":I
    .local v9, "it":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v11, "\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v10, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    move v2, v9

    goto :goto_1

    .line 428
    .end local v9    # "it":I
    .restart local v2    # "it":I
    :cond_3
    const/4 v9, 0x5

    if-le v3, v9, :cond_4

    goto/16 :goto_3

    .line 431
    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/16 v11, 0xe

    if-le v6, v11, :cond_5

    goto/16 :goto_3

    .line 433
    :cond_5
    invoke-static {p0, v2}, Landroidx/core/text/util/FindAddress;->matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_7

    .line 434
    if-eqz v4, :cond_6

    const/4 v9, 0x1

    if-le v3, v9, :cond_6

    .line 437
    neg-int v9, v2

    return v9

    .line 440
    :cond_6
    if-ne v0, v10, :cond_c

    move v0, v2

    goto :goto_2

    .line 444
    :cond_7
    const/4 v4, 0x0

    .line 446
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/core/text/util/FindAddress;->isValidLocationName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 447
    const/4 v5, 0x1

    .line 448
    goto :goto_2

    .line 451
    :cond_8
    if-ne v6, v9, :cond_9

    if-nez v5, :cond_9

    .line 453
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 454
    goto :goto_3

    .line 457
    :cond_9
    if-eqz v5, :cond_c

    const/4 v9, 0x4

    if-le v6, v9, :cond_c

    .line 459
    invoke-static {p0, v2}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v9

    .line 460
    .local v9, "stateMatch":Ljava/util/regex/MatchResult;
    if-eqz v9, :cond_c

    .line 461
    const-string v10, "et"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9, v12}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "al"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 463
    invoke-interface {v9}, Ljava/util/regex/MatchResult;->end()I

    move-result v2

    .line 464
    goto :goto_3

    .line 468
    :cond_a
    sget-object v10, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 469
    .local v10, "zipMatcher":Ljava/util/regex/Matcher;
    invoke-interface {v9}, Ljava/util/regex/MatchResult;->end()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 470
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 471
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    return v11

    .line 482
    :cond_b
    invoke-interface {v9}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    .line 412
    .end local v9    # "stateMatch":Ljava/util/regex/MatchResult;
    .end local v10    # "zipMatcher":Ljava/util/regex/Matcher;
    :cond_c
    :goto_2
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto/16 :goto_0

    .line 488
    :cond_d
    :goto_3
    if-lez v1, :cond_e

    return v1

    .line 490
    :cond_e
    if-lez v0, :cond_f

    move v9, v0

    goto :goto_4

    :cond_f
    move v9, v2

    :goto_4
    neg-int v9, v9

    return v9
.end method

.method private static checkHouseNumber(Ljava/lang/String;)Z
    .locals 7
    .param p0, "houseNumber"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "digitCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    return v2

    .line 279
    :cond_2
    sget-object v1, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 280
    .local v1, "suffixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    .line 281
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 282
    .local v3, "num":I
    if-nez v3, :cond_3

    .line 283
    return v2

    .line 285
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "suffix":Ljava/lang/String;
    rem-int/lit8 v4, v3, 0xa

    const-string v5, "th"

    packed-switch v4, :pswitch_data_0

    .line 294
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 292
    :pswitch_0
    rem-int/lit8 v4, v3, 0x64

    const/16 v6, 0xd

    if-ne v4, v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "rd"

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 290
    :pswitch_1
    rem-int/lit8 v4, v3, 0x64

    const/16 v6, 0xc

    if-ne v4, v6, :cond_5

    goto :goto_2

    :cond_5
    const-string v5, "nd"

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 288
    :pswitch_2
    rem-int/lit8 v4, v3, 0x64

    const/16 v6, 0xb

    if-ne v4, v6, :cond_6

    goto :goto_3

    :cond_6
    const-string v5, "st"

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 297
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v3    # "num":I
    :cond_7
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .line 500
    sget-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 501
    .local v0, "houseNumberMatcher":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 502
    .local v1, "start":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 505
    invoke-static {p0, v0}, Landroidx/core/text/util/FindAddress;->attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I

    move-result v2

    .line 506
    .local v2, "end":I
    if-lez v2, :cond_0

    .line 507
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 509
    :cond_0
    neg-int v1, v2

    .line 510
    .end local v2    # "end":I
    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_0

    .line 514
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static isValidLocationName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .line 388
    sget-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidZipCode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "zipCode"    # Ljava/lang/String;

    .line 377
    sget-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidZipCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "zipCode"    # Ljava/lang/String;
    .param p1, "state"    # Ljava/lang/String;

    .line 366
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result v0

    return v0
.end method

.method private static isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z
    .locals 3
    .param p0, "zipCode"    # Ljava/lang/String;
    .param p1, "stateMatch"    # Ljava/util/regex/MatchResult;

    .line 345
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 347
    :cond_0
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    .line 348
    .local v1, "stateIndex":I
    :goto_0
    if-lez v1, :cond_2

    .line 349
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "stateIndex":I
    .local v2, "stateIndex":I
    invoke-interface {p1, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 351
    .end local v2    # "stateIndex":I
    .restart local v1    # "stateIndex":I
    :cond_2
    :goto_1
    sget-object v2, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    aget-object v2, v2, v1

    .line 352
    invoke-virtual {v2, p0}, Landroidx/core/text/util/FindAddress$ZipRange;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 351
    :goto_2
    return v0
.end method

.method public static matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 310
    const/4 v0, 0x0

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 311
    :cond_0
    sget-object v1, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 312
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    .line 314
    .local v2, "matchResult":Ljava/util/regex/MatchResult;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 316
    .end local v2    # "matchResult":Ljava/util/regex/MatchResult;
    :cond_1
    return-object v0
.end method

.method public static matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 330
    const/4 v0, 0x0

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 331
    :cond_0
    sget-object v1, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 332
    .local v1, "stateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    :cond_1
    return-object v0
.end method
