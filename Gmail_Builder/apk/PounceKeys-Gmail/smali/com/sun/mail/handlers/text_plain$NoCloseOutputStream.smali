.class Lcom/sun/mail/handlers/text_plain$NoCloseOutputStream;
.super Ljava/io/FilterOutputStream;
.source "text_plain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/handlers/text_plain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoCloseOutputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 44
    return-void
.end method
