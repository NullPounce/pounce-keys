.class public Landroidx/core/app/NotificationCompat$InboxStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# static fields
.field private static final TEMPLATE_CLASS_NAME:Ljava/lang/String; = "androidx.core.app.NotificationCompat$InboxStyle"


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4282
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 4280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 4283
    return-void
.end method

.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 4285
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    .line 4280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 4286
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 4287
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 4311
    if-eqz p1, :cond_0

    .line 4312
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4314
    :cond_0
    return-object p0
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 4333
    nop

    .line 4334
    new-instance v0, Landroid/app/Notification$InboxStyle;

    .line 4335
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 4336
    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v0

    .line 4337
    .local v0, "style":Landroid/app/Notification$InboxStyle;
    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    .line 4338
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 4340
    :cond_0
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 4341
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 4342
    .end local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 4344
    .end local v0    # "style":Landroid/app/Notification$InboxStyle;
    :cond_1
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4366
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    .line 4367
    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4368
    return-void
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 4324
    const-string v0, "androidx.core.app.NotificationCompat$InboxStyle"

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4352
    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V

    .line 4353
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4355
    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4356
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4358
    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 4294
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 4295
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 4302
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 4303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    .line 4304
    return-object p0
.end method
