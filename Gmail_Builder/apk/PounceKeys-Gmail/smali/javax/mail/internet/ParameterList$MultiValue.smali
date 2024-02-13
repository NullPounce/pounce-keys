.class Ljavax/mail/internet/ParameterList$MultiValue;
.super Ljava/util/ArrayList;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x9b5571bef6f202fL


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/mail/internet/ParameterList$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/mail/internet/ParameterList$1;

    .line 167
    invoke-direct {p0}, Ljavax/mail/internet/ParameterList$MultiValue;-><init>()V

    return-void
.end method
