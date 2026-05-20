.class public Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;
.super Lcom/miui/home/launcher/overlay/OverlaySwipeController;
.source "SearchOverlaySwipeController.java"


# instance fields
.field private final mDownEventsPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchTouchAreaController:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/SwipeDetector$Direction;)V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;->mSearchTouchAreaController:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    .line 35
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->setTouchArea(Landroid/view/View;)V

    return-void
.end method

.method public static canPullDown(Lcom/miui/home/launcher/Launcher;)Z
    .locals 14

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v1

    .line 111
    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v3

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v4

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v5

    .line 116
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->isShow()Z

    move-result v6

    .line 117
    invoke-static {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v8

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/miui/home/settings/LauncherGestureController;->isSupportOverlayPullDownOpenSearch()Z

    move-result v10

    xor-int/2addr v10, v9

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isShow()Z

    move-result v11

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result p0

    .line 121
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isFolderShowing:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " scrolling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " normalEditing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " WidgetThumbnailViewShowing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " UninstallDialogShowing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " isMinusScreenShowing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " allAppShowing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " topOpenView:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " notSupportOverlayPullDownOpenSearch:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " assistantOverlayShowing:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " feedOverlayShowing:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Launcher.Search"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v9

    :cond_2
    :goto_1
    const-string p0, "can not use"

    .line 137
    invoke-static {v13, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 102
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

    .line 105
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;->canPullDown(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public getReconnectSlop()I
    .locals 0

    .line 145
    sget p0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    mul-int/lit8 p0, p0, 0x5

    return p0
.end method

.method protected getSwipeDirection()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 80
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    .line 82
    iget-object v4, p0, Lcom/miui/home/launcher/overlay/search/SearchOverlaySwipeController;->mSearchTouchAreaController:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-virtual {v4, v3, v1, p1, v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->isInPullDownToSearchZoneOverlay(FFLandroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 86
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isShowPullToSearchTips()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 92
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDrag(FF)Z
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mDetector:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->getDirection()Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/touch/SwipeDetector;->VERTICAL:Lcom/miui/home/launcher/touch/SwipeDetector$Direction;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onDrag(FF)Z

    move-result p0

    return p0
.end method

.method public onDragEnd(FZ)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->onScrollInteractionEnd(FZ)V

    .line 57
    :cond_0
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

    .line 40
    invoke-super {p0, p1}, Lcom/miui/home/launcher/overlay/OverlaySwipeController;->onDragStart(Z)V

    return-void
.end method
