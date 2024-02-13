.class public interface abstract Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
.super Ljava/lang/Object;
.source "IMAPFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/IMAPFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProtocolCommand"
.end annotation


# virtual methods
.method public abstract doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation
.end method
