.class public Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;
.super Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;
.source "LauncherTransitionFeedController.java"


# instance fields
.field private mFeedConnectionConnected:Z

.field private final mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;


# direct methods
.method public static synthetic $r8$lambda$acguHT6LsdcqNQre9NvoHy-yuhY(Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->lambda$recoveryHomeAnim$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lynqqWjiAj3aqmGG7_jjhC9-7Tw(Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedConnectionConnected:Z

    .line 33
    iput-object p2, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    .line 34
    new-instance p1, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;)V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCancelOpenAppRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isNeedCancelOpenApp()Z
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->isOverlayAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedLauncherOverlay:Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherOverlay;->isOverlayReadyToShow()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 160
    :goto_1
    iget-boolean v4, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedConnectionConnected:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    move v2, v1

    .line 167
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedCancelOpenApp called, mFeedConnectionConnected:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedConnectionConnected:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isOverlayAttached:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isOverlayReadyToShow:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " isNeedCancelOpenApp:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FeedOverlayLauncherTransitionController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->isNeedCancelOpenApp()Z

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 37
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelOpenApp run, isNeedCancelOpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FeedOverlayLauncherTransitionController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    if-ne v1, v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->resetCurrentAnimation()V

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$recoveryHomeAnim$1()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    if-ne v0, v2, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->resetCurrentAnimation()V

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected executeRemainingAnimation(Z)V
    .locals 8

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->getRemainingAnimationDuration()J

    move-result-wide v3

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeRemainingAnimation remainingAnimationDuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " anim.getDuration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FeedOverlayLauncherTransitionController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 105
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->getRemainingAnimationInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 109
    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 p1, 0x0

    aput v0, p0, p1

    const/4 p1, 0x1

    aput v1, p0, p1

    .line 111
    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 112
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method protected getCancelOpenAppTime()J
    .locals 2

    const-wide/16 v0, 0x5dc

    return-wide v0
.end method

.method protected getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->getCurrentAnimation()Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getIsConnectionConnected()Z
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsConnectionConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedConnectionConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedOverlayLauncherTransitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedConnectionConnected:Z

    return p0
.end method

.method protected getRemainingAnimationDuration()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method protected getRemainingAnimationInterpolator(Z)Landroid/view/animation/Interpolator;
    .locals 0

    if-nez p1, :cond_0

    .line 82
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_OVERLAY_ALPHA_IN:Landroid/view/animation/Interpolator;

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->getRemainingAnimationInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method protected getSuccessTransitionProgress()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method protected handleCancelOpenApp()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCancelOpenAppRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->removeCancelOpenAppRunnable()V

    const-string v0, "FeedOverlayLauncherTransitionController"

    const-string v1, "cancelOpenApp postDelayed"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCancelOpenAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->getCancelOpenAppTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedConnectionConnected:Z

    return-void
.end method

.method public onServiceDisConnected()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;->mFeedConnectionConnected:Z

    return-void
.end method

.method public recoveryHomeAnim()V
    .locals 2

    .line 145
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->recoveryHomeAnim()V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoveryHomeAnim getState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedOverlayLauncherTransitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/overlay/feed/LauncherTransitionFeedController;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setIsUserActionUp()V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setNewHomeOverlaySceneIsUserActionUp(Landroid/content/Context;I)V

    return-void
.end method

.method protected setShouldOpenApp(FZ)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setNewHomeOverlaySceneIsUserActionUp(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->shouldOpenApp(FZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mShouldOpenApp:Z

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setOverlaySceneShouldLaunchNewHome(Landroid/content/Context;I)V

    return-void
.end method
