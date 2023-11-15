.class public abstract Ljavax/mail/event/FolderAdapter;
.super Ljava/lang/Object;
.source "FolderAdapter.java"

# interfaces
.implements Ljavax/mail/event/FolderListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public folderCreated(Ljavax/mail/event/FolderEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/FolderEvent;

    .line 29
    return-void
.end method

.method public folderDeleted(Ljavax/mail/event/FolderEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/FolderEvent;

    .line 33
    return-void
.end method

.method public folderRenamed(Ljavax/mail/event/FolderEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/FolderEvent;

    .line 31
    return-void
.end method
