.class Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedOutputStream"
.end annotation


# instance fields
.field private final buf:[B

.field private count:I

.field private final out:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method public constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/io/OutputStream;I)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "size"    # I

    .line 2743
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2734
    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    .line 2744
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->out:Ljava/io/OutputStream;

    .line 2745
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->buf:[B

    .line 2746
    return-void
.end method

.method private bdat([BIIZ)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2814
    if-gtz p3, :cond_0

    if-eqz p4, :cond_2

    .line 2816
    :cond_0
    const-string v0, "BDAT "

    if-eqz p4, :cond_1

    .line 2817
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " LAST"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 2819
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2820
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2821
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 2822
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 2823
    .local v0, "ret":I
    const/16 v1, 0xfa

    if-ne v0, v1, :cond_3

    .line 2827
    .end local v0    # "ret":I
    nop

    .line 2829
    :cond_2
    return-void

    .line 2824
    .restart local v0    # "ret":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$900(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .end local p4    # "last":Z
    throw v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2825
    .end local v0    # "ret":I
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    .restart local p4    # "last":Z
    :catch_0
    move-exception v0

    .line 2826
    .local v0, "mex":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BDAT write exception"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2805
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->bdat([BIIZ)V

    .line 2806
    iput v3, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    .line 2807
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2794
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->bdat([BIIZ)V

    .line 2795
    iput v2, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    .line 2796
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2756
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 2757
    array-length v0, v0

    if-lt v2, v0, :cond_0

    .line 2758
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->flush()V

    .line 2759
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2771
    nop

    :goto_0
    if-lez p3, :cond_2

    .line 2772
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2773
    .local v0, "size":I
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 2775
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->bdat([BIIZ)V

    goto :goto_1

    .line 2777
    :cond_0
    iget v2, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2778
    iget v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    .line 2780
    :goto_1
    add-int/2addr p2, v0

    .line 2781
    sub-int/2addr p3, v0

    .line 2782
    iget v1, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->count:I

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->buf:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 2783
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;->flush()V

    .line 2784
    .end local v0    # "size":I
    :cond_1
    goto :goto_0

    .line 2785
    :cond_2
    return-void
.end method
