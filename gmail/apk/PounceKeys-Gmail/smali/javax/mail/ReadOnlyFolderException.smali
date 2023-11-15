.class public Ljavax/mail/ReadOnlyFolderException;
.super Ljavax/mail/MessagingException;
.source "ReadOnlyFolderException.java"


# static fields
.field private static final serialVersionUID:J = 0x4f447e8d4f54375dL


# instance fields
.field private transient folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;)V
    .locals 1
    .param p1, "folder"    # Ljavax/mail/Folder;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "message"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Ljavax/mail/ReadOnlyFolderException;->folder:Ljavax/mail/Folder;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 69
    invoke-direct {p0, p2, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 70
    iput-object p1, p0, Ljavax/mail/ReadOnlyFolderException;->folder:Ljavax/mail/Folder;

    .line 71
    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 80
    iget-object v0, p0, Ljavax/mail/ReadOnlyFolderException;->folder:Ljavax/mail/Folder;

    return-object v0
.end method
