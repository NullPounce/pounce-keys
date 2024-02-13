.class public Ljavax/mail/FolderClosedException;
.super Ljavax/mail/MessagingException;
.source "FolderClosedException.java"


# static fields
.field private static final serialVersionUID:J = 0x176c8d33ac752d2bL


# instance fields
.field private transient folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;)V
    .locals 1
    .param p1, "folder"    # Ljavax/mail/Folder;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "message"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Ljavax/mail/FolderClosedException;->folder:Ljavax/mail/Folder;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 71
    invoke-direct {p0, p2, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    iput-object p1, p0, Ljavax/mail/FolderClosedException;->folder:Ljavax/mail/Folder;

    .line 73
    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 81
    iget-object v0, p0, Ljavax/mail/FolderClosedException;->folder:Ljavax/mail/Folder;

    return-object v0
.end method
