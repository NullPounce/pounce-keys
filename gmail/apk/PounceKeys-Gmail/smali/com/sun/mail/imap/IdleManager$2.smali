.class Lcom/sun/mail/imap/IdleManager$2;
.super Ljava/lang/Object;
.source "IdleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IdleManager;->processKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IdleManager;

.field final synthetic val$folder0:Lcom/sun/mail/imap/IMAPFolder;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IdleManager;Lcom/sun/mail/imap/IMAPFolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sun/mail/imap/IdleManager;

    .line 399
    iput-object p1, p0, Lcom/sun/mail/imap/IdleManager$2;->this$0:Lcom/sun/mail/imap/IdleManager;

    iput-object p2, p0, Lcom/sun/mail/imap/IdleManager$2;->val$folder0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager$2;->val$folder0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V

    .line 404
    return-void
.end method
