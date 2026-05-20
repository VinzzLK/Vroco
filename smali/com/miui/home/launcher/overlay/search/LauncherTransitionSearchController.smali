.class public Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;
.super Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;
.source "LauncherTransitionSearchController.java"


# instance fields
.field private mSearchConnectionConnected:Z


# direct methods
.method public static synthetic $r8$lambda$0da2x4T_SiiRIBgdohFqeKzynr8(Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;->mSearchConnectionConnected:Z

    .line 21
    new-instance p1, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;)V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mCancelOpenAppRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelOpenApp run mSearchConnectionConnected\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;->mSearchConnectionConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherTransitionSearchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-boolean v0, p0, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;->mSearchConnectionConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->SEARCH_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/search/SearchOverlayState;

    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->resetCurrentAnimation()V

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getCancelOpenAppTime()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getIsConnectionConnected()Z
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIsConnectionConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;->mSearchConnectionConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherTransitionSearchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;->mSearchConnectionConnected:Z

    return p0
.end method

.method protected getSuccessTransitionProgress()F
    .locals 0

    const/high16 p0, 0x3e000000    # 0.125f

    return p0
.end method

.method public onServiceConnected()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->onServiceConnected()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;->mSearchConnectionConnected:Z

    return-void
.end method

.method public onServiceDisConnected()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/miui/home/launcher/overlay/search/LauncherTransitionSearchController;->mSearchConnectionConnected:Z

    return-void
.end method

.method public recoveryHomeAnim()V
    .locals 4

    .line 74
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->recoveryHomeAnim()V

    .line 75
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

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->SEARCH_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/search/SearchOverlayState;

    if-ne v0, v2, :cond_2

    :cond_0
    const-string v0, "LauncherTransitionSearchController"

    const-string v2, "search recoveryHomeAnim:"

    .line 76
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mOverlayTransitionController:Lcom/miui/home/launcher/overlay/OverlayTransitionController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->resetCurrentAnimation()V

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->SEARCH_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/search/SearchOverlayState;

    invoke-virtual {v0, v3, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    :cond_2
    return-void
.end method

.method protected setIsUserActionUp()V
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setOverlaySceneIsUserActionUp(Landroid/content/Context;I)V

    return-void
.end method

.method protected setShouldOpenApp(FZ)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setOverlaySceneIsUserActionUp(Landroid/content/Context;I)V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->shouldOpenApp(FZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mShouldOpenApp:Z

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherTransitionBaseController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->setOverlaySceneIsOpenWindow(Landroid/content/Context;I)V

    return-void
.end method
