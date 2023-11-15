.class public final Ljavax/mail/search/SubjectTerm;
.super Ljavax/mail/search/StringTerm;
.source "SubjectTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x67d3df04e1e99fb8L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p1, Ljavax/mail/search/SubjectTerm;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 55
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v1, "subj":Ljava/lang/String;
    nop

    .line 60
    if-nez v1, :cond_0

    .line 61
    return v0

    .line 63
    :cond_0
    invoke-super {p0, v1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 56
    .end local v1    # "subj":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
