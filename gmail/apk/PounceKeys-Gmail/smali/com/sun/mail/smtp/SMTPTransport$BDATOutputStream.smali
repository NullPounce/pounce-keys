.class Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;
.super Lcom/sun/mail/smtp/SMTPOutputStream;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BDATOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method public constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/io/OutputStream;I)V
    .locals 1
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "size"    # I

    .line 2712
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 2713
    new-instance v0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2714
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2723
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2724
    return-void
.end method
