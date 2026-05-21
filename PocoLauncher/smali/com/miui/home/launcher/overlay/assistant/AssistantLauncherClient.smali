.class public Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;
.super Lcom/miui/home/launcher/overlay/OverlayLauncherClient;
.source "AssistantLauncherClient.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# static fields
.field private static final IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z


# instance fields
.field private mColdStartOptimize:Z

.field private mLastReconnectTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_CAMERA_IN_CORNER:Z

    sput-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->mColdStartOptimize:Z

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->mLastReconnectTime:J

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 39
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 40
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDestroy()V

    .line 63
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;->getDirection()I

    move-result p1

    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.personalassistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/overlay/assistant/AssistantColdStartMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 89
    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantColdStartMessage;->isColdStartOptimize()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->mColdStartOptimize:Z

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method

.method protected onServiceDisconnected()V
    .locals 6

    .line 101
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->mColdStartOptimize:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->mLastReconnectTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 102
    iput-boolean v1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mHasTryReconnect:Z

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->mLastReconnectTime:J

    .line 105
    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->mColdStartOptimize:Z

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setPAScrollBlur(I)V

    .line 109
    :cond_1
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onServiceDisconnected()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onStart()V

    .line 47
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method

.method public queueIdle()Z
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->connect()V

    const/4 p0, 0x0

    return p0
.end method
