.class public Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;
.super Lcom/miui/home/launcher/search/SearchEdgeEffect;
.source "GlobalSearchEdgeEffect.java"


# instance fields
.field private mGlobalBrowser:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/search/SearchEdgeEffect;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V

    const p2, 0x7f0600f1

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setIconColor(I)V

    return-void
.end method

.method private findGlobalBrowser()Ljava/lang/String;
    .locals 3

    .line 94
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object p0

    .line 98
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "com.mi.globalbrowser"

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/AllAppsList;->isInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 101
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "com.android.browser"

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/AllAppsList;->isInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    :cond_2
    return-object v0
.end method

.method private launchGlobalBrowser(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 82
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->mGlobalBrowser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getIsGlobalMiBrowserChangedFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->findGlobalBrowser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->mGlobalBrowser:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->resetGlobalMiBrowserChangedFlag()V

    .line 90
    :cond_2
    invoke-static {p1}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->openContentCenterBySlideUp(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method canShowEffect()Z
    .locals 1

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)Z
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method getDrawableResource()I
    .locals 0

    const p0, 0x7f0802ae

    return p0
.end method

.method public bridge synthetic getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    move-result-object p0

    return-object p0
.end method

.method public isRunningInSoscSplitOrSmallWindow()Z
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->findGlobalBrowser()Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getHalfSplitAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 115
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isPkgInSmallWindowMode(Ljava/lang/String;I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public onDarkModeChanged(Z)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setIconColor(I)V

    return-void
.end method

.method public bridge synthetic onPull(FI)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onPull(FI)V

    return-void
.end method

.method public bridge synthetic onRelease(I)Z
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onRelease(I)Z

    move-result p0

    return p0
.end method

.method open()V
    .locals 4

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getGlobalSwipeUpPackage(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->launchGlobalBrowser(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/search/SearchEdgeEffect;->TOP:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    if-ne p0, v1, :cond_1

    const-string p0, "home_swipe_down"

    goto :goto_0

    :cond_1
    const-string p0, "home_swipe_up"

    .line 68
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "swipe_mode"

    .line 69
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    const p0, 0x7f01003b

    const v1, 0x7f01003c

    .line 71
    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 72
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setCurveBottom(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setCurveBottom(F)V

    return-void
.end method

.method public bridge synthetic setCurveTop(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setCurveTop(F)V

    return-void
.end method
