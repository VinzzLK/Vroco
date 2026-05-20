.class public Lcom/miui/home/recents/OverviewState;
.super Lcom/miui/home/launcher/LauncherState;
.source "OverviewState.java"


# static fields
.field private static TAG:Ljava/lang/String; = "OverviewState"


# instance fields
.field public mIsFromRecentLaunchAnimEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1f4

    const/4 v1, 0x4

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsFromRecentLaunchAnimEnd:Z

    return-void
.end method


# virtual methods
.method public getShortcutMenuLayerAlpha()F
    .locals 0

    .line 97
    sget-boolean p0, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_1
    return p0
.end method

.method public getShortcutMenuLayerScale()F
    .locals 0

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f6e147b    # 0.93f

    goto :goto_0

    :cond_0
    const p0, 0x3f733333    # 0.95f

    :goto_0
    return p0
.end method

.method public getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onExitState(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 78
    sget-object p0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v0, "onExitState"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/Utilities;->importantForAccessibility(Landroid/view/View;Z)V

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result p0

    if-nez p0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 82
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isLightBgForStatusBar(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->onExitState()V

    .line 86
    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "action_close_recent"

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStateEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    .line 45
    sget-object p0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v0, "onStateEnabled"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->dismissPullToSearchTips()V

    .line 50
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->dismissSlideToContentTips()V

    .line 51
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    .line 52
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    .line 53
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled(Z)V

    .line 55
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060649

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 58
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/RotationHelper;->updateRotationAnimation(I)V

    .line 61
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/Utilities;->importantForAccessibility(Landroid/view/View;Z)V

    const v1, 0x7f100025

    .line 62
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 63
    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const-string v2, "action_open_recent"

    invoke-virtual {v1, v2, p0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 66
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;-><init>()V

    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    .line 68
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 69
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    .line 71
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->isSoscEventDispatching()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/LauncherSoscController;->cancelSoscingAnim(Z)V

    :cond_2
    return-void
.end method

.method public onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 92
    sget-object p0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v0, "onStateTransitionEnd"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method

.method public reenter(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 106
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-wide/16 v1, 0x258

    .line 107
    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    :cond_0
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    :cond_1
    return-void
.end method
