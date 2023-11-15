.class Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;
.super Ljavax/mail/internet/InternetHeaders$MatchEnum;
.source "InternetHeaders.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchHeaderEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/mail/internet/InternetHeaders$MatchEnum;",
        "Ljava/util/Enumeration<",
        "Ljavax/mail/Header;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;[Ljava/lang/String;Z)V
    .locals 1
    .param p2, "n"    # [Ljava/lang/String;
    .param p3, "m"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetHeaders$InternetHeader;",
            ">;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 252
    .local p1, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetHeaders$InternetHeader;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V

    .line 253
    return-void
.end method


# virtual methods
.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 248
    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;->nextElement()Ljavax/mail/Header;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljavax/mail/Header;
    .locals 1

    .line 257
    invoke-super {p0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Header;

    return-object v0
.end method
