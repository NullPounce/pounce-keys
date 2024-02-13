.class Lcom/sun/mail/imap/IMAPFolder$18;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field final synthetic val$acl:Lcom/sun/mail/imap/ACL;

.field final synthetic val$mod:C


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sun/mail/imap/IMAPFolder;

    .line 3038
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$18;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder$18;->val$mod:C

    iput-object p3, p0, Lcom/sun/mail/imap/IMAPFolder$18;->val$acl:Lcom/sun/mail/imap/ACL;

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

    .line 3042
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$18;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder$18;->val$mod:C

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$18;->val$acl:Lcom/sun/mail/imap/ACL;

    invoke-virtual {p1, v0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V

    .line 3043
    const/4 v0, 0x0

    return-object v0
.end method
