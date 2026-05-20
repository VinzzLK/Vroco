.class public Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;
.super Ljava/lang/Object;
.source "GlobalSearchSwipeController.java"

# interfaces
.implements Lcom/miui/home/launcher/util/SwipeTouchController;


# instance fields
.field private mCanIntercept:Z

.field private mDisallowIntercept:Z

.field private final mDownEventsPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mSearchTouchAreaController:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mSearchTouchAreaController:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->setTouchArea(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private showPullDownTipsDialog()V
    .locals 2

    .line 131
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController$1;-><init>(Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showPullDownTips(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)V

    return-void
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 145
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isPullDownGestureGlobalSearch()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 150
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isPullDownGestureGlobalSearch()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 155
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationConfig;->isSearchSupportOverlay(Landroid/content/Context;)Z

    move-result v0

    .line 168
    iget-object v2, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAssistantOverlayController()Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayTransitionController;->isShow()Z

    move-result v2

    .line 169
    iget-object v3, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isShow()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GlobalSearchSwipeController return assistantShowing:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " feedShowing:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Search"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->canTouchControllerInterceptTouchEvent(Z)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 180
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInLayoutPreview()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 185
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    return v1

    .line 189
    :cond_a
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_b

    return v1

    :cond_b
    return v4
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 67
    iget-boolean v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDisallowIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 73
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_1

    return v1

    .line 80
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 83
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    .line 88
    :cond_4
    iget-boolean v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mCanIntercept:Z

    if-nez v4, :cond_5

    return v1

    :cond_5
    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDownEventsPosition:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-nez v0, :cond_6

    return v1

    .line 96
    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 97
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    .line 98
    iget-object v4, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mSearchTouchAreaController:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-virtual {v4, v3, v2, p1, v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->isInPullDownToSearchZone(FFLandroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result p1

    if-nez p1, :cond_a

    .line 99
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v0, "home_down"

    const-string v2, "global_search"

    if-eqz p1, :cond_8

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->needShowSwipeDownDialog()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 102
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->showPullDownTipsDialog()V

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setSwipeDownDialogShowed()V

    goto :goto_1

    .line 105
    :cond_7
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomePullDown(Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->openSearch(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isShowPullToSearchTips()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 111
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->showPullDownTipsDialog()V

    .line 112
    invoke-static {v1}, Lcom/miui/home/launcher/GlobalSearchUtil;->setShowPullToSearchTips(Z)V

    goto :goto_1

    .line 114
    :cond_9
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomePullDown(Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->openSearch(Ljava/lang/String;)V

    .line 119
    :goto_1
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/PullVerticalEvent;

    invoke-direct {p1}, Lcom/miui/home/recents/event/PullVerticalEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const/4 p0, 0x1

    return p0

    .line 123
    :cond_a
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mSearchTouchAreaController:Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/search/SearchTouchAreaController;->getTouchSlop()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 124
    iput-boolean v1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mCanIntercept:Z

    :cond_b
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public requestDisallowInterceptTouchEventHorizontal(Z)V
    .locals 0

    return-void
.end method

.method public requestDisallowInterceptTouchEventVertical(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/miui/home/launcher/uioverrides/GlobalSearchSwipeController;->mDisallowIntercept:Z

    return-void
.end method
