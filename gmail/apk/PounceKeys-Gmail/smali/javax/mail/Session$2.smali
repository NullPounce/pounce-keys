.class Ljavax/mail/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljavax/mail/StreamLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/Session;->loadProviders(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/mail/Session;


# direct methods
.method constructor <init>(Ljavax/mail/Session;)V
    .locals 0
    .param p1, "this$0"    # Ljavax/mail/Session;

    .line 948
    iput-object p1, p0, Ljavax/mail/Session$2;->this$0:Ljavax/mail/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 951
    iget-object v0, p0, Ljavax/mail/Session$2;->this$0:Ljavax/mail/Session;

    invoke-static {v0, p1}, Ljavax/mail/Session;->access$000(Ljavax/mail/Session;Ljava/io/InputStream;)V

    .line 952
    return-void
.end method
