.class public Ljavax/mail/event/FolderEvent;
.super Ljavax/mail/event/MailEvent;
.source "FolderEvent.java"


# static fields
.field public static final CREATED:I = 0x1

.field public static final DELETED:I = 0x2

.field public static final RENAMED:I = 0x3

.field private static final serialVersionUID:J = 0x493fb076540416e3L


# instance fields
.field protected transient folder:Ljavax/mail/Folder;

.field protected transient newFolder:Ljavax/mail/Folder;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .param p3, "type"    # I

    .line 78
    invoke-direct {p0, p1, p2, p2, p3}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "oldFolder"    # Ljavax/mail/Folder;
    .param p3, "newFolder"    # Ljavax/mail/Folder;
    .param p4, "type"    # I

    .line 92
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 93
    iput-object p2, p0, Ljavax/mail/event/FolderEvent;->folder:Ljavax/mail/Folder;

    .line 94
    iput-object p3, p0, Ljavax/mail/event/FolderEvent;->newFolder:Ljavax/mail/Folder;

    .line 95
    iput p4, p0, Ljavax/mail/event/FolderEvent;->type:I

    .line 96
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .line 137
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/FolderListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/FolderListener;->folderCreated(Ljavax/mail/event/FolderEvent;)V

    goto :goto_0

    .line 139
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 140
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/FolderListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/FolderListener;->folderDeleted(Ljavax/mail/event/FolderEvent;)V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 142
    move-object v0, p1

    check-cast v0, Ljavax/mail/event/FolderListener;

    invoke-interface {v0, p0}, Ljavax/mail/event/FolderListener;->folderRenamed(Ljavax/mail/event/FolderEvent;)V

    .line 143
    :cond_2
    :goto_0
    return-void
.end method

.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 114
    iget-object v0, p0, Ljavax/mail/event/FolderEvent;->folder:Ljavax/mail/Folder;

    return-object v0
.end method

.method public getNewFolder()Ljavax/mail/Folder;
    .locals 1

    .line 129
    iget-object v0, p0, Ljavax/mail/event/FolderEvent;->newFolder:Ljavax/mail/Folder;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 104
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    return v0
.end method
