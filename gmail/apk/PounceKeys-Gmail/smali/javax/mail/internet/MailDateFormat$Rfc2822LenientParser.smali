.class Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;
.super Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;
.source "MailDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MailDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rfc2822LenientParser"
.end annotation


# instance fields
.field private hasDefaultFws:Ljava/lang/Boolean;

.field final synthetic this$0:Ljavax/mail/internet/MailDateFormat;


# direct methods
.method constructor <init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "pos"    # Ljava/text/ParsePosition;

    .line 890
    iput-object p1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->this$0:Ljavax/mail/internet/MailDateFormat;

    .line 891
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;-><init>(Ljavax/mail/internet/MailDateFormat;Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 892
    return-void
.end method


# virtual methods
.method isMonthNameCaseSensitive()Z
    .locals 1

    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method isValidZoneOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 1009
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

    .line 905
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipFoldingWhiteSpace()Z

    .line 906
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

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

    .line 957
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipFoldingWhiteSpace()Z

    .line 958
    return-void
.end method

.method parseFwsInMonth()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->hasDefaultFws:Ljava/lang/Boolean;

    const/16 v1, 0x2d

    if-nez v0, :cond_0

    .line 914
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipChar(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->hasDefaultFws:Ljava/lang/Boolean;

    .line 915
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipFoldingWhiteSpace()Z

    goto :goto_0

    .line 916
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipFoldingWhiteSpace()Z

    goto :goto_0

    .line 919
    :cond_1
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseChar(C)V

    .line 921
    :goto_0
    return-void
.end method

.method parseHour()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 942
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    return v0
.end method

.method parseMinute()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 947
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    return v0
.end method

.method parseOptionalBegin()I
    .locals 2

    .line 896
    nop

    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->peekAsciiDigit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 900
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method parseSecond()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 952
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    return v0
.end method

.method parseYear()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 930
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseAsciiDigits(II)I

    move-result v0

    .line 931
    .local v0, "year":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 932
    return v0

    .line 933
    :cond_0
    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 934
    add-int/lit16 v1, v0, 0x76c

    return v1

    .line 936
    :cond_1
    add-int/lit16 v1, v0, 0x7d0

    return v1
.end method

.method parseZone()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 963
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 967
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->peekChar(C)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->peekChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 969
    :cond_0
    const/16 v1, 0x55

    const/16 v2, 0x75

    const/16 v3, 0x74

    const/16 v4, 0x54

    invoke-virtual {p0, v1, v2, v4, v3}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    return v0

    .line 971
    :cond_1
    const/16 v6, 0x47

    const/16 v7, 0x67

    const/16 v8, 0x4d

    const/16 v9, 0x6d

    const/16 v10, 0x54

    const/16 v11, 0x74

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternativeTriple(CCCCCC)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 973
    return v0

    .line 976
    :cond_2
    const/16 v1, 0x45

    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternative(CC)Z

    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Invalid zone"

    if-eqz v1, :cond_3

    .line 977
    const/4 v1, 0x4

    .local v1, "hoursOffset":I
    goto :goto_0

    .line 978
    .end local v1    # "hoursOffset":I
    :cond_3
    const/16 v1, 0x43

    const/16 v5, 0x63

    :try_start_1
    invoke-virtual {p0, v1, v5}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternative(CC)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 979
    const/4 v1, 0x5

    .restart local v1    # "hoursOffset":I
    goto :goto_0

    .line 980
    .end local v1    # "hoursOffset":I
    :cond_4
    const/16 v1, 0x4d

    const/16 v5, 0x6d

    invoke-virtual {p0, v1, v5}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternative(CC)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 981
    const/4 v1, 0x6

    .restart local v1    # "hoursOffset":I
    goto :goto_0

    .line 982
    .end local v1    # "hoursOffset":I
    :cond_5
    const/16 v1, 0x50

    const/16 v5, 0x70

    invoke-virtual {p0, v1, v5}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternative(CC)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 983
    const/4 v1, 0x7

    .line 988
    .restart local v1    # "hoursOffset":I
    :goto_0
    const/16 v5, 0x53

    const/16 v6, 0x73

    invoke-virtual {p0, v5, v6, v4, v3}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternativePair(CCCC)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 989
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 990
    :cond_6
    const/16 v5, 0x44

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v4, v3}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->skipAlternativePair(CCCC)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 996
    :goto_1
    mul-int/lit8 v0, v1, 0x3c

    return v0

    .line 992
    :cond_7
    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    iget-object v4, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 993
    new-instance v3, Ljava/text/ParseException;

    iget-object v4, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    .line 994
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-direct {v3, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 985
    .end local v1    # "hoursOffset":I
    :cond_8
    new-instance v1, Ljava/text/ParseException;

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    .line 986
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 968
    :cond_9
    :goto_2
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->parseZoneOffset()I

    move-result v0

    return v0

    .line 964
    :cond_a
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Missing zone"

    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 998
    :catch_0
    move-exception v1

    .line 999
    .local v1, "e":Ljava/text/ParseException;
    invoke-static {}, Ljavax/mail/internet/MailDateFormat;->access$000()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1000
    invoke-static {}, Ljavax/mail/internet/MailDateFormat;->access$000()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No timezone? : \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1003
    :cond_b
    return v0
.end method

.method peekFoldingWhiteSpace()Z
    .locals 2

    .line 1035
    invoke-super {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822StrictParser;->peekFoldingWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    .line 1036
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    .line 1037
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1035
    :goto_1
    return v0
.end method

.method skipFoldingWhiteSpace()Z
    .locals 3

    .line 1014
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->peekFoldingWhiteSpace()Z

    move-result v0

    .line 1017
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1018
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->text:Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1026
    goto :goto_1

    .line 1023
    :sswitch_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$Rfc2822LenientParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1024
    goto :goto_0

    .line 1030
    :cond_0
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
