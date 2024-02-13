.class Ljavax/mail/internet/ParameterList$Value;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation


# instance fields
.field charset:Ljava/lang/String;

.field encodedValue:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/mail/internet/ParameterList$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/mail/internet/ParameterList$1;

    .line 147
    invoke-direct {p0}, Ljavax/mail/internet/ParameterList$Value;-><init>()V

    return-void
.end method
