.class Lcom/sun/mail/imap/IMAPFolder$2;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field final synthetic val$c:C

.field final synthetic val$pattern:Ljava/lang/String;

.field final synthetic val$subscribed:Z


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sun/mail/imap/IMAPFolder;

    .line 645
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$2;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-boolean p2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$subscribed:Z

    iput-char p3, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$c:C

    iput-object p4, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$pattern:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 649
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$subscribed:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v2, v2, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$c:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$pattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v2, v2, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$c:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$2;->val$pattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method
