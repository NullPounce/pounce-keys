.class final Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;
.super Ljava/lang/Object;
.source "MailHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/util/logging/MailHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetAndSetContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NOT_MODIFIED:Ljava/lang/Object;


# instance fields
.field private final source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4291
    const-class v0, Lcom/sun/mail/util/logging/MailHandler;

    .line 4296
    const-class v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .line 4307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4308
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    .line 4309
    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    .line 4319
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 4320
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4322
    .local v1, "ccl":Ljava/lang/ClassLoader;
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 4323
    const/4 v2, 0x0

    .local v2, "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 4324
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    instance-of v3, v2, Ljava/lang/ClassLoader;

    if-eqz v3, :cond_1

    .line 4325
    check-cast v2, Ljava/lang/ClassLoader;

    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 4326
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 4327
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 4328
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    instance-of v3, v2, Ljava/lang/Thread;

    if-eqz v3, :cond_3

    .line 4329
    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 4331
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_3
    instance-of v3, v2, Ljava/lang/Class;

    if-nez v3, :cond_5

    .line 4332
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 4335
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-eq v1, v2, :cond_4

    .line 4336
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 4337
    return-object v1

    .line 4339
    :cond_4
    sget-object v3, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    return-object v3

    .line 4331
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->source:Ljava/lang/Object;

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
