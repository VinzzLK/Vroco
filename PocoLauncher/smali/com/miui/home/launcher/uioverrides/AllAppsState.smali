.class public Lcom/miui/home/launcher/uioverrides/AllAppsState;
.super Lcom/miui/home/launcher/LauncherState;
.source "AllAppsState.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    return-void
.end method

.method private getSearchBarParallax()F
    .locals 1

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    return p0
.end method

.method private isColorFilterContainerViewShow(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 76
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 78
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private isHideDrawerSearchBar(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 72
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsState;->isColorFilterContainerViewShow(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsState;->getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    return p0
.end method

.method public getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F
    .locals 5

    .line 62
    sget-object v0, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/LauncherDecoupleHelper;->isShowSearchBar(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/uioverrides/AllAppsState;->getSearchBarParallax()F

    move-result v4

    aput v4, v1, v0

    const/4 v0, 0x2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsState;->isHideDrawerSearchBar(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    aput v2, v1, v0

    const/4 p0, 0x3

    aput v3, v1, p0

    const/4 p0, 0x4

    aput v3, v1, p0

    return-object v1
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    neg-float p0, p0

    const/high16 p1, 0x3e000000    # 0.125f

    mul-float/2addr p0, p1

    return p0
.end method

.method public onExitState(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 35
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/ExitAllAppStateEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/event/ExitAllAppStateEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 36
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    :cond_0
    return-void
.end method

.method public onStateEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->requestPredictionUpdate()V

    .line 30
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->fixSplitState()V

    return-void
.end method
