.class public abstract Ljavax/mail/search/AddressStringTerm;
.super Ljavax/mail/search/StringTerm;
.source "AddressStringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x2ad6978ecdebb490L


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 76
    instance-of v0, p1, Ljavax/mail/search/AddressStringTerm;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected match(Ljavax/mail/Address;)Z
    .locals 2
    .param p1, "a"    # Ljavax/mail/Address;

    .line 60
    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    .line 66
    .local v0, "ia":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 68
    .end local v0    # "ia":Ljavax/mail/internet/InternetAddress;
    :cond_0
    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
