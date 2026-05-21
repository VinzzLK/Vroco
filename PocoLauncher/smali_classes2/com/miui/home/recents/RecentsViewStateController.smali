.class public Lcom/miui/home/recents/RecentsViewStateController;
.super Ljava/lang/Object;
.source "RecentsViewStateController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;


# instance fields
.field mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNeedPerformEndRunnable:Z


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 30
    iput-object p1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/RecentsViewStateController;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    return p0
.end method


# virtual methods
.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 9

    if-eqz p1, :cond_3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsViewStateController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/RecentsView;

    const/4 v3, 0x0

    .line 43
    iput-boolean v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 44
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne p1, v4, :cond_1

    .line 45
    iget-boolean v1, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v7, 0x258

    invoke-static {p0, v3, v7, v8}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 50
    invoke-virtual {v0, v6}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 51
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 52
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 53
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 54
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 55
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/EnterOverviewStateEvent;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/event/EnterOverviewStateEvent;-><init>(Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto :goto_1

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {p0, v4}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V

    const/16 p0, 0x8

    .line 59
    invoke-virtual {v0, p0}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 60
    invoke-virtual {v0, v5}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    const-string p0, "set RecentsContainer GONE when setState without animation"

    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_2

    .line 64
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/TaskView;

    .line 65
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 66
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 67
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_2
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v1, Lcom/miui/home/recents/event/ExitOverviewStateEvent;

    new-instance v2, Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iget-boolean v3, v3, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    invoke-direct {v2, v3, p1}, Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;-><init>(ZLcom/miui/home/launcher/LauncherState;)V

    invoke-direct {v1, v2}, Lcom/miui/home/recents/event/ExitOverviewStateEvent;-><init>(Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;)V

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const-wide/16 p0, 0x0

    .line 72
    invoke-virtual {v0, p0, p1, p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    .line 73
    invoke-virtual {v0, p0, p1, p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeOutAnim(JJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setState: state="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   mIsIgnoreOverviewAnim="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RecentsViewStateController"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/views/RecentsView;

    .line 87
    iget-object p3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p3

    .line 89
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 90
    iget-boolean v0, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-wide v2, Lcom/miui/home/launcher/common/BlurUtils;->DEFAULT_BLUR_ANIM_DURATION:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    .line 93
    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 94
    invoke-virtual {p3, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {p3, p0}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 96
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 97
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 98
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 p0, 0x0

    .line 99
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 100
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p2, Lcom/miui/home/recents/event/EnterOverviewStateEvent;

    invoke-direct {p2, p1}, Lcom/miui/home/recents/event/EnterOverviewStateEvent;-><init>(Lcom/miui/home/launcher/LauncherState;)V

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto/16 :goto_1

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v2

    if-ne v2, v0, :cond_5

    .line 103
    iget-object v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V

    .line 104
    iget-boolean v2, p1, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    if-nez v2, :cond_4

    .line 105
    iput-boolean v4, p0, Lcom/miui/home/recents/RecentsViewStateController;->mNeedPerformEndRunnable:Z

    .line 106
    iget-object v2, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    .line 107
    new-instance v2, Lcom/miui/home/recents/RecentsViewStateController$1;

    invoke-direct {v2, p0, p3}, Lcom/miui/home/recents/RecentsViewStateController$1;-><init>(Lcom/miui/home/recents/RecentsViewStateController;Lcom/miui/home/recents/views/RecentsContainer;)V

    .line 118
    invoke-virtual {p3}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentMenuView()Lcom/miui/home/recents/views/RecentMenuView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/views/RecentMenuView;->removeMenu(Z)Z

    .line 120
    iget-object v3, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsContainer;->isOneKeyCleanAnimating()Z

    move-result v3

    if-nez v3, :cond_3

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/RecentsViewStateController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_2

    .line 122
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p0

    invoke-virtual {p0, p2, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    move-result v1

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p0

    invoke-virtual {p0, p2, v2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToHomeAnimSlideToLeft(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)Z

    move-result v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 128
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 131
    :cond_4
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p2, Lcom/miui/home/recents/event/ExitOverviewStateEvent;

    new-instance v1, Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;

    iget-boolean v0, v0, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    invoke-direct {v1, v0, p1}, Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;-><init>(ZLcom/miui/home/launcher/LauncherState;)V

    invoke-direct {p2, v1}, Lcom/miui/home/recents/event/ExitOverviewStateEvent;-><init>(Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;)V

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const-wide/16 p0, 0x0

    const-wide/16 v0, 0xfa

    .line 134
    invoke-virtual {p3, p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    .line 135
    invoke-virtual {p3, p0, p1, v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->startBackgroundFadeOutAnim(JJ)V

    :cond_5
    :goto_1
    return-void
.end method
