.class public Lcom/sun/mail/handlers/text_html;
.super Lcom/sun/mail/handlers/text_plain;
.source "text_html.java"


# static fields
.field private static myDF:[Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/activation/ActivationDataFlavor;

    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    const-class v2, Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "HTML String"

    invoke-direct {v1, v2, v3, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/mail/handlers/text_html;->myDF:[Ljavax/activation/ActivationDataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/sun/mail/handlers/text_plain;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDataFlavors()[Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .line 32
    sget-object v0, Lcom/sun/mail/handlers/text_html;->myDF:[Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method
