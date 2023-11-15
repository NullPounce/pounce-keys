.class public Lcom/BatteryHealth/MessageSender;
.super Landroid/os/AsyncTask;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final IP:Ljava/lang/String; = "192.168.0.129"

.field private static final PORT:I = 0x115c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/BatteryHealth/MessageSender;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 19
    .local v0, "message":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    const-string v2, "192.168.0.129"

    const/16 v3, 0x115c

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 20
    .local v1, "socket":Ljava/net/Socket;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 21
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 24
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 25
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
