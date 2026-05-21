.class public Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;
.super Lcom/miui/home/launcher/overlay/OverlayLauncherClient;
.source "FeedLauncherClient.java"


# instance fields
.field protected isShowOverlayWhenConnected:Z

.field private keepFeedAlive:Z

.field private mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

.field private mUserLevel:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mUserLevel:I

    .line 37
    iput-boolean p2, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    .line 42
    instance-of p2, p3, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    if-eqz p2, :cond_0

    .line 43
    check-cast p3, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    iput-object p3, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    .line 45
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 46
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 49
    new-instance p2, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;-><init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mUserLevel:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mUserLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Z
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->isEnable()Z

    move-result p0

    return p0
.end method

.method private initNewEffect(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.newhome"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->initFeed(Landroid/content/Context;)V

    .line 167
    sget-object p0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-static {}, Lcom/miui/home/launcher/overlay/feed/FeedUtils;->isNewHomeNewDynamicEffect()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->setNewEffect(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mHasTryReconnect:Z

    .line 175
    invoke-super {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->disconnect()V

    return-void
.end method

.method protected isDisconnectConnection()Z
    .locals 1

    .line 106
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->isDisconnectConnection()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDestroy()V

    .line 115
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 129
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;->getDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 130
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isShowOverlayWhenConnected:Z

    .line 131
    iget p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->mUserLevel:I

    if-ne p1, v0, :cond_0

    .line 132
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->keepFeedAlive:Z

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageAddMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageAddMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->initNewEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageChangedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->initNewEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.newhome"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->initNewEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onStart()V

    .line 70
    new-instance v0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;-><init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStop()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isShowOverlayWhenConnected:Z

    return-void
.end method

.method public setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->setOverlay(Lcom/miui/launcher/overlay/ILauncherOverlay;)V

    if-eqz p1, :cond_0

    .line 181
    iget-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isShowOverlayWhenConnected:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->canSlidingUp(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 184
    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 185
    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->showOverlay(I)V

    :cond_0
    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isShowOverlayWhenConnected:Z

    return-void
.end method
