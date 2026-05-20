.class public Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;
.super Lcom/miui/home/launcher/overlay/OverlaySwipeController;
.source "FeedOverlaySwipeController.java"


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 24
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method

.method public static canSlidingUp(Lcom/miui/home/launcher/Launcher;)Z
    .locals 16

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v1

    .line 82
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result v2

    .line 83
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v3

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v4

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v5

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v6

    .line 89
    sget-boolean v7, Lcom/miui/home/launcher/overlay/feed/FeedUtils;->isGlobalSearchActivityTop:Z

    .line 90
    sget-boolean v8, Lcom/miui/home/settings/preference/DesktopModePreference;->mEndIsDrawer:Z

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/home/settings/LauncherGestureController;->isSupportSlideOpenHomeFeed()Z

    move-result v9

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isShow()Z

    move-result v10

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getSearchOverlayController()Lcom/miui/home/launcher/overlay/search/SearchOverlayTransitionController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/home/launcher/overlay/search/SearchOverlayTransitionController;->isShow()Z

    move-result v11

    .line 94
    invoke-static/range {p0 .. p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v12

    const/4 v14, 0x1

    if-eqz v12, :cond_0

    move v12, v14

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 95
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isFolderShowing:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " !supportSlideOpenHomeFeed:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v13, v9, 0x1

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " assistantShow:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " searchOverlayShow: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " topOpenViewNotNull:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " touchState : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " scrolling : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " normalEditing : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " WidgetThumbnailViewShowing : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " UninstallDialogShowing : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " isMinusScreenShowing: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " isGlobalSearchActivityTop: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", endIsDrawerMode: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "Launcher.Feed"

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-eq v2, v14, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    if-eqz v9, :cond_2

    if-nez v6, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-nez v7, :cond_2

    if-nez v8, :cond_2

    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    return v14

    :cond_2
    :goto_1
    const-string v0, "can not use"

    .line 115
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->canSlidingUp(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public getReconnectSlop()I
    .locals 0

    const/high16 p0, 0x430c0000    # 140.0f

    .line 123
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p0

    return p0
.end method

.method protected getSwipeDirection()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDrag(FF)Z
    .locals 6

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrag: :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v1}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " displacement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v1}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDisplacement()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->getReconnectSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isNewEffect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 41
    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Launcher.Feed"

    .line 40
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 44
    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;

    invoke-direct {v1, v4}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string v0, "onDrag: OverlayReconnectMessage"

    .line 46
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onDrag(FF)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.Feed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->isNewEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDisplacement()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlaySwipeController;->getReconnectSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const-string v0, "reconnect on drag end"

    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollInteractionEnd(FZ)V

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/miui/home/launcher/overlay/OverlaySwipeController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/touch/SwipeDetector;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onDragStart(Z)V

    const-string p0, "Launcher.Feed"

    const-string p1, "onDragStart: "

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
