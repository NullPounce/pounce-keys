.class final Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;
.super Ljava/util/logging/Formatter;
.source "MailHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/util/logging/MailHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TailNameFormatter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4347
    const-class v0, Lcom/sun/mail/util/logging/MailHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 4372
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 4373
    if-eqz p1, :cond_0

    .line 4374
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->name:Ljava/lang/String;

    .line 4375
    return-void

    .line 4373
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static of(Ljava/lang/String;)Ljava/util/logging/Formatter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4360
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 4395
    instance-of v0, p1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v0, :cond_0

    .line 4396
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->name:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    iget-object v1, v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 4398
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 4379
    const-string v0, ""

    return-object v0
.end method

.method public final getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 4384
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 4408
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 4413
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->name:Ljava/lang/String;

    return-object v0
.end method
