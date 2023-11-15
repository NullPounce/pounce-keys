.class Ljavax/mail/internet/InternetHeaders$MatchStringEnum;
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
    name = "MatchStringEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/mail/internet/InternetHeaders$MatchEnum;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
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

    .line 238
    .local p1, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetHeaders$InternetHeader;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;-><init>(Ljava/util/List;[Ljava/lang/String;ZZ)V

    .line 239
    return-void
.end method


# virtual methods
.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 234
    invoke-virtual {p0}, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 1

    .line 243
    invoke-super {p0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
