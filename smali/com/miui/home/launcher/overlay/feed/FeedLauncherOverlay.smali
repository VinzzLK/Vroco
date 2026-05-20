.class public Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;
.super Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;
.source "FeedLauncherOverlay.java"


# instance fields
.field private mIsDoAnimationBySelf:Z

.field private mNeedCloseDoAnimationBySelf:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mIsDoAnimationBySelf:Z

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mNeedCloseDoAnimationBySelf:Z

    .line 26
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    .line 27
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setOverlaySceneShouldLaunchNewHome(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private closeDoAnimationBySelf()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mNeedCloseDoAnimationBySelf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mIsDoAnimationBySelf:Z

    .line 106
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mNeedCloseDoAnimationBySelf:Z

    :cond_0
    return-void
.end method

.method private recoveryHomeAnim()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/miui/home/launcher/overlay/LauncherTransitionCallbacks;->onServiceDisConnected()V

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->recoveryHomeAnim()V

    :cond_0
    return-void
.end method

.method private setBySelfWhenServiceChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 67
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mNeedCloseDoAnimationBySelf:Z

    goto :goto_0

    .line 70
    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mIsDoAnimationBySelf:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getLauncherTransitionController(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;
    .locals 1

    .line 133
    new-instance v0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;)V

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FeedLauncherOverlay"

    return-object p0
.end method

.method public isDoAnimationBySelf()Z
    .locals 1

    .line 138
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mIsDoAnimationBySelf:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverlayAttached()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mWasOverlayAttached:Z

    return p0
.end method

.method public isOverlayReadyToShow()I
    .locals 4

    const/4 v0, 0x0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v1, :cond_0

    const-string v2, "method_isOverlayReadyToShow"

    const-string v3, ""

    .line 156
    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->callOverlay(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->getLogTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    const-string v1, "isOverlayReadyToShow"

    .line 164
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onBindingDied()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->mIsDoAnimationBySelf:Z

    .line 113
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->recoveryHomeAnim()V

    return-void
.end method

.method public onOverlayScrollEnd(F)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onOverlayScrollEnd(F)V

    .line 98
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->closeDoAnimationBySelf()V

    .line 99
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setOverlaySceneShouldLaunchNewHome(Landroid/content/Context;I)V

    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onScrollInteractionBegin()V

    return-void
.end method

.method public onScrollInteractionEnd(FZ)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->onScrollInteractionEnd(FZ)V

    .line 92
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->closeDoAnimationBySelf()V

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Z)V
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverlayReconnectMessage onServiceStateChanged: overlayAttached:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isNewHomeNewDynamicEffect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWasOverlayAttached:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mWasOverlayAttached:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FeedLauncherOverlay"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->setBySelfWhenServiceChanged(Z)V

    if-nez p1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->recoveryHomeAnim()V

    .line 52
    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setOverlaySceneShouldLaunchNewHome(Landroid/content/Context;I)V

    .line 57
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mWasOverlayAttached:Z

    return-void
.end method

.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setFeedOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method

.method public setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherOverlayCallbacks:Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncherTransitionBaseController:Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    :cond_0
    return-void
.end method
