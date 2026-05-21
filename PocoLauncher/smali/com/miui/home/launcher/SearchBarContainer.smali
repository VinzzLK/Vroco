.class public Lcom/miui/home/launcher/SearchBarContainer;
.super Lcom/miui/home/launcher/FitSystemWindowView;
.source "SearchBarContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mSearchBar:Lcom/miui/home/launcher/SearchBar;

.field private mTrackSearchBarShowRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$IHJTtxseaUPHz_bqHIbCwuwKWi0(Lcom/miui/home/launcher/SearchBarContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->lambda$trackShow$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FitSystemWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance p1, Lcom/miui/home/launcher/SearchBarContainer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/SearchBarContainer$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/SearchBarContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    .line 33
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 34
    new-instance p2, Lcom/miui/home/launcher/SearchBarContainer$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/SearchBarContainer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/SearchBarContainer;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    return-void
.end method

.method private synthetic lambda$trackShow$0()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBar;->isThemesShow()I

    move-result v1

    .line 87
    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarShow(II)V

    .line 88
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->isXiaoaiShow()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 89
    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarXiaoAiShow(II)V

    :cond_0
    return-void
.end method

.method private refreshSearchBarMarginBottom()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getEventBusHandlers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hideMenu()V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->hideMenu()V

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->isShowingMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 157
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/FitSystemWindowView;->onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 165
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->onWallpaperColorChanged()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBar;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshSearchBarEnable()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 51
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    new-instance v3, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v3}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "refreshSearchBarEnable, isShowSearchBar:%s , isDrawerMode:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchBarContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    .line 55
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public refreshSearchBarWidth()V
    .locals 2

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarWidth()I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->isSeatsFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarWidthDelta()I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBar;->setSearchBarWidthAnim(I)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setSearchBarWidth(I)V

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setSearchBarEnableAccessibility(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f100087

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setupViews()V
    .locals 1

    const v0, 0x7f0a031f

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBar;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    return-void
.end method

.method public trackShow()V
    .locals 1

    .line 83
    new-instance v0, Lcom/miui/home/launcher/SearchBarContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarContainer$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/SearchBarContainer;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
