.class Ljavax/activation/DataHandler$1;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/activation/DataHandler;

.field final synthetic val$fdch:Ljavax/activation/DataContentHandler;

.field final synthetic val$pos:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Ljavax/activation/DataHandler;Ljavax/activation/DataContentHandler;Ljava/io/PipedOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Ljavax/activation/DataHandler;

    .line 246
    iput-object p1, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;

    iput-object p2, p0, Ljavax/activation/DataHandler$1;->val$fdch:Ljavax/activation/DataContentHandler;

    iput-object p3, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 249
    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$fdch:Ljavax/activation/DataContentHandler;

    iget-object v1, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;

    invoke-static {v1}, Ljavax/activation/DataHandler;->access$000(Ljavax/activation/DataHandler;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;

    invoke-static {v2}, Ljavax/activation/DataHandler;->access$100(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-interface {v0, v1, v2, v3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :try_start_1
    iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    :try_start_2
    iget-object v1, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 256
    throw v0

    .line 250
    :catch_1
    move-exception v0

    .line 254
    :try_start_3
    iget-object v0, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 255
    :goto_1
    goto :goto_2

    :catch_2
    move-exception v0

    .line 256
    nop

    .line 257
    :goto_2
    return-void
.end method
