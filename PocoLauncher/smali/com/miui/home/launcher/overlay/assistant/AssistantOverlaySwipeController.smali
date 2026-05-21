.class public Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;
.super Lcom/miui/home/launcher/overlay/OverlaySwipeController;
.source "AssistantOverlaySwipeController.java"


# instance fields
.field private mTransitionController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 22
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 48
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 49
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 50
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SuperDraglayer;->isWidgetBeingResized()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 51
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 52
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 53
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 54
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 55
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 56
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 57
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SuperDraglayer;->isStatusBarFollowingTouch()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 58
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 59
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 60
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getSearchOverlayController()Lcom/miui/home/launcher/overlay/search/SearchOverlayTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/overlay/search/SearchOverlayTransitionController;->isShow()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 61
    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 62
    invoke-static {v2}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 66
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    const-string v3, "AssistantOverlaySwipeController"

    const-string v4, " Can\'t scroll to -1 screen "

    .line 69
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, " Check Launcher status "

    .line 70
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v5

    xor-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " 2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 3 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 73
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 4 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 74
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 5 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 75
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SuperDraglayer;->isWidgetBeingResized()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 6 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 76
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 7 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 77
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isPreviewShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 8 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 78
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/FeedTransController;->isShow()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 9 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 79
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 10 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 80
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isSearchEdgeShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 11 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 81
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isSearchBarMenuShowing()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 12 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 82
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SuperDraglayer;->isStatusBarFollowingTouch()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 13 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 83
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 14 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 84
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 15 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 85
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchOverlayController()Lcom/miui/home/launcher/overlay/search/SearchOverlayTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/search/SearchOverlayTransitionController;->isShow()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 16 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 17 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 87
    invoke-static {p1}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p1

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 18 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantOn(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 19 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 89
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant(Lcom/miui/home/launcher/Launcher;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 20 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 21 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;

    .line 91
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " 22 "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " 23 "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public getReconnectSlop()I
    .locals 0

    .line 100
    sget p0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method protected getSwipeDirection()I
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getPAScrollBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 106
    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mTransitionController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mTransitionController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->needInterruptEvent(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v4, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mTransitionController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->needInterruptEvent(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    .line 108
    :goto_3
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_4

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public onDrag(FF)Z
    .locals 2

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isPhone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 124
    iget p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mWindowShift:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollChange(FZ)V

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 120
    :cond_2
    :goto_0
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/ScrollToPersonalAssistEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/ScrollToPersonalAssistEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 121
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onDrag(FF)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onDragEnd(FZ)V

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onOverlayOnDragEnd()V

    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onDragStart(Z)V

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onOverlayOnDragStart()V

    return-void
.end method

.method public setAssistantTransitionController(Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlaySwipeController;->mTransitionController:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    return-void
.end method
