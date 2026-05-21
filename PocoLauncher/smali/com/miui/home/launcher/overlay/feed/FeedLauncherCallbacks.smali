.class public Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;
.super Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;
.source "FeedLauncherCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;
    }
.end annotation


# instance fields
.field mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

.field private mFeedOpenObserver:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-object p0
.end method

.method private createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    .locals 3

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->supportFeed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    :goto_0
    sget v0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    int-to-float v0, v0

    .line 120
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 122
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SuperDraglayer;->getFeedOverlaySwipeController()Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 123
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SuperDraglayer;->getFeedOverlaySwipeController()Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->getSwipeDetectorTouchSlop()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->getFeedOverlaySwipeController()Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->getSwipeDetectorTouchSlop()F

    move-result v0

    .line 127
    :cond_1
    new-instance p0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    const-string v1, "com.miui.newhome"

    invoke-direct {p0, v1, p1, v0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;-><init>(Ljava/lang/String;ZF)V

    return-object p0
.end method

.method private registerObserver()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedOpenObserver:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;-><init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedOpenObserver:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_slideup_gesture"

    .line 83
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedOpenObserver:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.newhome.NEW_DYNAMIC_EFFECT"

    .line 86
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedOpenObserver:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;

    .line 85
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedOpenObserver:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedOpenObserver:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedOpenObserver:Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks$FeedOpenObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public createLauncherClient(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 2

    .line 34
    new-instance p1, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    .line 35
    new-instance p1, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    invoke-direct {p1, v0, p2, v1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->registerObserver()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->onDestroy()V

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->unregisterObserver()V

    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->onNewIntent(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onHomeIntentAfterFilter(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->onResume()V

    const/4 p0, 0x0

    .line 64
    sput-boolean p0, Lcom/miui/home/launcher/overlay/feed/FeedUtils;->isGlobalSearchActivityTop:Z

    return-void
.end method
