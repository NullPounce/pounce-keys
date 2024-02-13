.class public Ljavax/mail/FetchProfile$Item;
.super Ljava/lang/Object;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/FetchProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

.field public static final ENVELOPE:Ljavax/mail/FetchProfile$Item;

.field public static final FLAGS:Ljavax/mail/FetchProfile$Item;

.field public static final SIZE:Ljavax/mail/FetchProfile$Item;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "ENVELOPE"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    .line 104
    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "CONTENT_INFO"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    .line 114
    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "SIZE"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->SIZE:Ljavax/mail/FetchProfile$Item;

    .line 119
    new-instance v0, Ljavax/mail/FetchProfile$Item;

    const-string v1, "FLAGS"

    invoke-direct {v0, v1}, Ljavax/mail/FetchProfile$Item;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Ljavax/mail/FetchProfile$Item;->name:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/FetchProfile$Item;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
