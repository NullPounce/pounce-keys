.class public Lcom/sun/mail/util/FolderClosedIOException;
.super Ljava/io/IOException;
.source "FolderClosedIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x3b699a4df297b817L


# instance fields
.field private transient folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;)V
    .locals 1
    .param p1, "folder"    # Ljavax/mail/Folder;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "message"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/sun/mail/util/FolderClosedIOException;->folder:Ljavax/mail/Folder;

    .line 51
    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sun/mail/util/FolderClosedIOException;->folder:Ljavax/mail/Folder;

    return-object v0
.end method
