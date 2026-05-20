.class public Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;
.super Lcom/miui/home/launcher/overlay/OverlayTransitionController;
.source "FeedOverlayTransitionController.java"


# instance fields
.field private mProgress:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method private canHideShowOverlayWithAnim()Z
    .locals 1

    .line 125
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->mProgress:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private inAnimationState()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected initCurrentAnimation(F)Z
    .locals 7

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    :goto_1
    move-object v2, v0

    if-eqz p1, :cond_2

    .line 26
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    :goto_2
    move-object v3, v0

    goto :goto_3

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v3, v1

    goto :goto_3

    .line 30
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    goto :goto_2

    .line 32
    :goto_3
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    iget v0, v0, Lcom/miui/home/launcher/LauncherState;->transitionDuration:I

    int-to-long v4, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;JLcom/miui/home/launcher/util/LauncherStateSwitch;)Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    return p1
.end method

.method public isOverlayAttached()Z
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p0, :cond_0

    .line 152
    invoke-interface {p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->isOverlayAttached()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShow()Z
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " curState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedOverlayTransitionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onScrollChanged(F)V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->inAnimationState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollChanged(F)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->isOverlayScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setOverlayScrolling(Z)V

    .line 106
    :cond_1
    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->mProgress:F

    return-void
.end method

.method public onScrollEnd(F)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollEnd(F)V

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setOverlayScrolling(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    .line 50
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p1

    .line 56
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq p1, v0, :cond_2

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    goto :goto_1

    .line 59
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    :goto_1
    return-void
.end method

.method public onScrollStart(F)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setOverlayScrolling(Z)V

    .line 41
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->onScrollStart(F)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    if-eq p1, v1, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->canHideShowOverlayWithAnim()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->hideOverlay(Z)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->canHideShowOverlayWithAnim()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    .line 88
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->canHideShowOverlayWithAnim()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setTargetCancelled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 0

    .line 130
    iget-boolean p2, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz p2, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-nez p0, :cond_1

    return-void

    .line 136
    :cond_1
    sget-object p2, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    const/4 p3, 0x1

    if-eq p1, p2, :cond_2

    .line 137
    invoke-interface {p0, p3}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->hideOverlay(Z)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-interface {p0, p3}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    :goto_0
    return-void
.end method
