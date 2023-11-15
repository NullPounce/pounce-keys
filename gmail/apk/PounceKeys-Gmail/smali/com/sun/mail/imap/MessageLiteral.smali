.class Lcom/sun/mail/imap/MessageLiteral;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/iap/Literal;


# instance fields
.field private buf:[B

.field private msg:Ljavax/mail/Message;

.field private msgSize:I


# direct methods
.method public constructor <init>(Ljavax/mail/Message;I)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "maxsize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4046
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    .line 4051
    iput-object p1, p0, Lcom/sun/mail/imap/MessageLiteral;->msg:Ljavax/mail/Message;

    .line 4053
    new-instance v0, Lcom/sun/mail/imap/LengthCounter;

    invoke-direct {v0, p2}, Lcom/sun/mail/imap/LengthCounter;-><init>(I)V

    .line 4054
    .local v0, "lc":Lcom/sun/mail/imap/LengthCounter;
    new-instance v1, Lcom/sun/mail/util/CRLFOutputStream;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4055
    .local v1, "os":Ljava/io/OutputStream;
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 4056
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 4057
    invoke-virtual {v0}, Lcom/sun/mail/imap/LengthCounter;->getSize()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    .line 4058
    invoke-virtual {v0}, Lcom/sun/mail/imap/LengthCounter;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B

    .line 4059
    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .line 4063
    iget v0, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4070
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B

    if-eqz v0, :cond_0

    .line 4071
    iget v1, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 4073
    :cond_0
    new-instance v0, Lcom/sun/mail/util/CRLFOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 4074
    iget-object v0, p0, Lcom/sun/mail/imap/MessageLiteral;->msg:Ljavax/mail/Message;

    invoke-virtual {v0, p1}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4080
    :goto_0
    nop

    .line 4081
    return-void

    .line 4076
    :catch_0
    move-exception v0

    .line 4078
    .local v0, "mex":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessagingException while appending message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
