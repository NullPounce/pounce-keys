.class public Ljavax/mail/internet/MailDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MailDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;,
        Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;,
        Ljavax/mail/internet/MailDateFormat$AbstractDateParser;
    }
.end annotation


# static fields
.field private static final LEAP_SECOND:I = 0x3c

.field private static final LOGGER:Lcom/sun/mail/util/MailLogger;

.field private static final PATTERN:Ljava/lang/String; = "EEE, d MMM yyyy HH:mm:ss Z (z)"

.field private static final UNKNOWN_DAY_NAME:I = -0x1

.field private static final UTC:Ljava/util/TimeZone;

.field private static final serialVersionUID:J = -0x711451d5f59c82abL


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 130
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v3, Ljavax/mail/internet/MailDateFormat;

    const-string v4, "DEBUG"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->LOGGER:Lcom/sun/mail/util/MailLogger;

    .line 134
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 142
    const-string v0, "EEE, d MMM yyyy HH:mm:ss Z (z)"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 143
    return-void
.end method

.method static synthetic access$000()Lcom/sun/mail/util/MailLogger;
    .locals 1

    .line 125
    sget-object v0, Ljavax/mail/internet/MailDateFormat;->LOGGER:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$100(Ljavax/mail/internet/MailDateFormat;IIIIIIII)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Ljavax/mail/internet/MailDateFormat;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .line 125
    invoke-direct/range {p0 .. p8}, Ljavax/mail/internet/MailDateFormat;->toDate(IIIIIIII)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 170
    const-string v0, "EEE, d MMM yyyy HH:mm:ss Z (z)"

    invoke-super {p0, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private superApplyPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .line 285
    invoke-super {p0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private toDate(IIIIIIII)Ljava/util/Date;
    .locals 12
    .param p1, "dayName"    # I
    .param p2, "day"    # I
    .param p3, "month"    # I
    .param p4, "year"    # I
    .param p5, "hour"    # I
    .param p6, "minute"    # I
    .param p7, "second"    # I
    .param p8, "zone"    # I

    .line 349
    move-object v1, p0

    move v2, p1

    const/16 v0, 0x3c

    move/from16 v3, p7

    if-ne v3, v0, :cond_0

    .line 350
    const/16 v0, 0x3b

    move v10, v0

    .end local p7    # "second":I
    .local v0, "second":I
    goto :goto_0

    .line 349
    .end local v0    # "second":I
    .restart local p7    # "second":I
    :cond_0
    move v10, v3

    .line 353
    .end local p7    # "second":I
    .local v10, "second":I
    :goto_0
    iget-object v0, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    .line 355
    .local v11, "tz":Ljava/util/TimeZone;
    :try_start_0
    iget-object v0, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    sget-object v3, Ljavax/mail/internet/MailDateFormat;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 356
    iget-object v0, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 357
    iget-object v3, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v4, p4

    move v5, p3

    move v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move v9, v10

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 359
    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    iget-object v0, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    .line 360
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    goto :goto_1

    .line 364
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Inconsistent day-name"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "second":I
    .end local v11    # "tz":Ljava/util/TimeZone;
    .end local p1    # "dayName":I
    .end local p2    # "day":I
    .end local p3    # "month":I
    .end local p4    # "year":I
    .end local p5    # "hour":I
    .end local p6    # "minute":I
    .end local p8    # "zone":I
    throw v0

    .line 361
    .restart local v10    # "second":I
    .restart local v11    # "tz":Ljava/util/TimeZone;
    .restart local p1    # "dayName":I
    .restart local p2    # "day":I
    .restart local p3    # "month":I
    .restart local p4    # "year":I
    .restart local p5    # "hour":I
    .restart local p6    # "minute":I
    .restart local p8    # "zone":I
    :cond_2
    :goto_1
    iget-object v0, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0xc

    move/from16 v4, p8

    :try_start_1
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 362
    iget-object v0, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    iget-object v3, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 362
    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move/from16 v4, p8

    :goto_2
    iget-object v3, v1, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 368
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    .line 154
    .local v0, "fmt":Ljavax/mail/internet/MailDateFormat;
    const-string v1, "EEE, d MMM yyyy HH:mm:ss \'XXXXX\' (z)"

    invoke-direct {v0, v1}, Ljavax/mail/internet/MailDateFormat;->superApplyPattern(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 156
    return-object v0
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method applyLocalizedPattern() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method applyPattern() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->clone()Ljavax/mail/internet/MailDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/mail/internet/MailDateFormat;
    .locals 1

    .line 181
    invoke-super {p0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MailDateFormat;

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateStrBuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 197
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method get2DigitYearStart() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 220
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 222
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;-><init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V

    invoke-virtual {v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parse()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    new-instance v0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;-><init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V

    invoke-virtual {v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parse()Ljava/util/Date;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 223
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 2
    .param p1, "startDate"    # Ljava/util/Date;

    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method set2DigitYearStart() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "newCalendar"    # Ljava/util/Calendar;

    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method setCalendar() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 2
    .param p1, "newFormatSymbols"    # Ljava/text/DateFormatSymbols;

    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method setDateFormatSymbols() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "newNumberFormat"    # Ljava/text/NumberFormat;

    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method setNumberFormat() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
