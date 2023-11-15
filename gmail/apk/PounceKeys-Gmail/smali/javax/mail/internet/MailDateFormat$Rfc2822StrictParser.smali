.class Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;
.super Ljavax/mail/internet/MailDateFormat$AbstractDateParser;
.source "MailDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MailDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rfc2822StrictParser"
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/mail/internet/MailDateFormat;


# direct methods
.method constructor <init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;

    .line 779
    iput-object p1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->this$0:Ljavax/mail/internet/MailDateFormat;

    .line 780
    invoke-direct {p0, p2, p3}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 781
    return-void
.end method


# virtual methods
.method isMonthNameCaseSensitive()Z
    .locals 1

    .line 848
    const/4 v0, 0x1

    return v0
.end method

.method parseDay()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 829
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->skipFoldingWhiteSpace()Z

    .line 830
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseAsciiDigits(II)I

    move-result v0

    return v0
.end method

.method parseFwsBetweenTimeOfDayAndZone()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseFoldingWhiteSpace()V

    .line 878
    return-void
.end method

.method parseFwsInMonth()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseFoldingWhiteSpace()V

    .line 845
    return-void
.end method

.method parseHour()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 865
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseAsciiDigits(I)I

    move-result v0

    return v0
.end method

.method parseMinute()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 869
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseAsciiDigits(I)I

    move-result v0

    return v0
.end method

.method parseMonth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 837
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseFwsInMonth()V

    .line 838
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->isMonthNameCaseSensitive()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseMonthName(Z)I

    move-result v0

    .line 839
    .local v0, "month":I
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseFwsInMonth()V

    .line 840
    return v0
.end method

.method parseOptionalBegin()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->peekAsciiDigit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->skipFoldingWhiteSpace()Z

    .line 820
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseDayName()I

    move-result v0

    .line 821
    .local v0, "dayName":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseChar(C)V

    goto :goto_0

    .line 823
    .end local v0    # "dayName":I
    :cond_0
    const/4 v0, -0x1

    .line 825
    .restart local v0    # "dayName":I
    :goto_0
    return v0
.end method

.method parseSecond()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 873
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseAsciiDigits(I)I

    move-result v0

    return v0
.end method

.method parseYear()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 852
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseAsciiDigits(II)I

    move-result v0

    .line 853
    .local v0, "year":I
    const/16 v2, 0x76c

    if-lt v0, v2, :cond_0

    .line 854
    return v0

    .line 856
    :cond_0
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->pos:Ljava/text/ParsePosition;

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 857
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->text:Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 858
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->pos:Ljava/text/ParsePosition;

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 860
    :cond_1
    new-instance v1, Ljava/text/ParseException;

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    const-string v3, "Invalid year"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method parseZone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseZoneOffset()I

    move-result v0

    return v0
.end method

.method tryParse()Ljava/util/Date;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 785
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseOptionalBegin()I

    move-result v11

    .line 787
    .local v11, "dayName":I
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseDay()I

    move-result v12

    .line 788
    .local v12, "day":I
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseMonth()I

    move-result v13

    .line 789
    .local v13, "month":I
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseYear()I

    move-result v14

    .line 791
    .local v14, "year":I
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseFoldingWhiteSpace()V

    .line 793
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseHour()I

    move-result v15

    .line 794
    .local v15, "hour":I
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseChar(C)V

    .line 795
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseMinute()I

    move-result v16

    .line 796
    .local v16, "minute":I
    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->skipChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseSecond()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 798
    .local v9, "second":I
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseFwsBetweenTimeOfDayAndZone()V

    .line 800
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->parseZone()I

    move-result v17

    .line 803
    .local v17, "zone":I
    :try_start_0
    iget-object v2, v1, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->this$0:Ljavax/mail/internet/MailDateFormat;

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v10, v17

    invoke-static/range {v2 .. v10}, Ljavax/mail/internet/MailDateFormat;->access$100(Ljavax/mail/internet/MailDateFormat;IIIIIIII)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/text/ParseException;

    iget-object v3, v1, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->pos:Ljava/text/ParsePosition;

    .line 808
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    const-string v4, "Invalid input: some of the calendar fields have invalid values, or day-name is inconsistent with date"

    invoke-direct {v2, v4, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
