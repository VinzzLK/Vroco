.class public Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;
.super Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;
.source "SearchLauncherCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;
    }
.end annotation


# instance fields
.field private mSearchOpenObserver:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-object p0
.end method

.method private createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    .locals 2

    .line 111
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->supportSearch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportOverlayPullDownOpenSearch()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 114
    :goto_0
    new-instance p1, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    const/4 v0, 0x2

    const-string v1, "com.android.quicksearchbox"

    invoke-direct {p1, v1, p0, v0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;-><init>(Ljava/lang/String;ZI)V

    return-object p1
.end method

.method private registerObserver()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->mSearchOpenObserver:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;-><init>(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->mSearchOpenObserver:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_pulldown_gesture"

    .line 81
    invoke-static {v1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->mSearchOpenObserver:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_open_from_home_down_overlay"

    .line 84
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->mSearchOpenObserver:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;

    .line 83
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->mSearchOpenObserver:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->mSearchOpenObserver:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->mSearchOpenObserver:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public createLauncherClient(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 2

    .line 37
    new-instance p1, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherOverlay;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 38
    new-instance v0, Lcom/miui/home/launcher/overlay/search/SearchLauncherClient;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/home/launcher/overlay/search/SearchLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    .line 40
    invoke-virtual {p1, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->registerObserver()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->onDestroy()V

    .line 53
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->unregisterObserver()V

    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->SEARCH_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/search/SearchOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
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

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V

    :cond_0
    return-void
.end method
