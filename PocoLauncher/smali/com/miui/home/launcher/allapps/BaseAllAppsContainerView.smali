.class public Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;
.super Landroid/widget/RelativeLayout;
.source "BaseAllAppsContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;
.implements Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/IShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;
    }
.end annotation


# instance fields
.field protected mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field protected mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

.field protected mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

.field private mFirstRefreshColorFilterView:Z

.field private mHideSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIsInflateFirst:Z

.field protected mIsLightMode:Z

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

.field protected mSearchBarDivider:Landroid/view/View;

.field private mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

.field protected mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

.field private mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStateManagerListener:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;


# direct methods
.method public static synthetic $r8$lambda$40VtgIpw5QwqDDrAewyogmzAsF0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->lambda$updateAppsColorInfo$4(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EAwKxGd41uD4v2L8BQiuu5sYvxk(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;Ljava/util/TreeSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->lambda$refreshColorFilterContainerView$5(Ljava/util/TreeSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M_5iEH7FBQsocxbgtIoO06OIsoM(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->lambda$onFinishInflate$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YhD_3qG-e06UAQI0CXb85pwv6sg(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;IZLjava/util/TreeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->lambda$updateAppsColorInfo$3(IZLjava/util/TreeSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dMIW-EW2ms-2lFMzv5haCRuIII0(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->lambda$onDropBack$1(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qLWFT4N6xNpGnplMulWDzLFh9dQ(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->lambda$updateRecommendAppsInMaskView$2(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sZYizJBVg2Rt6iqS33_v6OjXvSE(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->lambda$refreshColorFilterContainerView$6(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mFirstRefreshColorFilterView:Z

    .line 95
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 97
    new-instance p1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-void
.end method

.method private getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private hideColorSearchInWorkMode()V
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->hasWorkApps()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 350
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    if-eqz v0, :cond_2

    .line 352
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setColorSearchEnabled(Z)V

    .line 353
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(ZZ)V

    :cond_2
    return-void
.end method

.method private hideShortcutMenuIfNeed()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onDropBack$1(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->requestFocus()Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$refreshColorFilterContainerView$5(Ljava/util/TreeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->setupColorFilterView(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Ljava/util/TreeSet;)V

    .line 609
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 610
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->hideColorFilter()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$refreshColorFilterContainerView$6(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$updateAppsColorInfo$3(IZLjava/util/TreeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1, p3}, Lcom/miui/home/launcher/ColorFilterContainerView;->setupColorFilterView(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Ljava/util/TreeSet;)V

    .line 544
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V

    .line 545
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 546
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->hideColorFilter()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateAppsColorInfo$4(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$updateRecommendAppsInMaskView$2(ILjava/util/List;)V
    .locals 1

    .line 290
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->updateRecommendAppsInMaskView(Ljava/util/List;Z)V

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onRecommendAppsUpdate: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseAllAppsContainerView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private loadSoscLayout()V
    .locals 1

    .line 636
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SoscUtils;->getInsetsBottom(Landroid/view/WindowInsets;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 637
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->onScreenSizeChanged()V

    .line 638
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScreenSizeChanged()V

    .line 640
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 641
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->showSearchPanel(Z)V

    :cond_0
    return-void
.end method

.method private updateRecommendAppsInMaskView()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getRecommendApps(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;)Ljava/util/List;

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    .line 296
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getDefaultRecommendApps(Lcom/miui/home/launcher/Launcher;)Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->updateRecommendAppsInMaskView(Ljava/util/List;Z)V

    .line 299
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->isSettingQuickSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    .line 301
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    .line 302
    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelRevealAnim()V
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    if-eqz p0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->cancelRevealAnim()V

    :cond_0
    return-void
.end method

.method public changeSearchBarState(Z)V
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    if-eqz p0, :cond_0

    .line 559
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    :cond_0
    return-void
.end method

.method public clearSearchResult()V
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getAllAppsAlphabeticalAppsList()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    return-void
.end method

.method public getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    return-object p0
.end method

.method public getCategoryCount()I
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCategoryCount()I

    move-result p0

    return p0
.end method

.method public getColorFilterContainerView()Lcom/miui/home/launcher/ColorFilterContainerView;
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    return-object p0
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 526
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

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

    .line 217
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarController()Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-object p0
.end method

.method public getSearchContainer()Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    return-object p0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method

.method public hideKeyboard()V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->getInput()Lcom/miui/home/launcher/ExtendedEditText;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/miui/home/launcher/ExtendedEditText;->hideKeyboard()V

    :cond_1
    return-void
.end method

.method public hideSearchContainer()V
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mHideSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 313
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 314
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 315
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 316
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mHideSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 318
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mHideSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchContainer()V

    :cond_2
    return-void
.end method

.method public initialize(Lcom/miui/home/launcher/ExtendedEditText;)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;-><init>(Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->initialize(Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;Lcom/miui/home/launcher/ExtendedEditText;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public isColorFilterEnabled()Z
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result p0

    return p0
.end method

.method public isListContainerShow()Z
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchContainerShow()Z
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchContainer()V

    .line 514
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 164
    invoke-static {p1}, Lcom/miui/home/launcher/util/SoscUtils;->getInsetsBottom(Landroid/view/WindowInsets;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 165
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAppsUpdated(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 363
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 364
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 369
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mStateManagerListener:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mStateManagerListener:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->resetSearch()V

    const/4 p0, 0x1

    return p0

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 401
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 402
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    .line 408
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mStateManagerListener:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$StateManagerListener;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    :cond_1
    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 178
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 183
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 185
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 102
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 105
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    const/4 v1, 0x1

    .line 116
    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsInflateFirst:Z

    const v1, 0x7f0a0061

    .line 117
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const v1, 0x7f0a0067

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const v1, 0x7f0a0066

    .line 119
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    const v1, 0x7f0a0065

    .line 120
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ab

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070068

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a00fd

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ColorFilterContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    .line 126
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->init(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->setUpColorFilterContainerView()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 334
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideColorSearchInWorkMode()V

    .line 335
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_alpha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    .line 338
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    .line 339
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->updateMaskViewBackground(Z)V

    .line 345
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->refreshColorFilterContainerView(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageAddMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 245
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 252
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onNewIntent()Z
    .locals 0

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 323
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->loadSoscLayout()V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onScreenSizeChanged()V

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->onScreenSizeChanged()V

    .line 328
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScreenSizeChanged()V

    :goto_0
    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAllAppsAlphabeticalAppsList()V

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mFirstRefreshColorFilterView:Z

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    const-string v1, "all_apps_color_filter_switch"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->refreshColorFilterContainerView(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;Z)V

    .line 152
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsOpen()V

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScrollUpEnd()V

    .line 154
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showWorkProfileTipsOnDrawer(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 481
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ViewSwitcher;->setAlpha(F)V

    .line 482
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 632
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->loadSoscLayout()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 502
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    .line 503
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsInflateFirst:Z

    if-eqz v1, :cond_1

    .line 504
    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsInflateFirst:Z

    .line 506
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    const-string v1, "color_mode"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public refreshColorFilterContainerView(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 1

    const/4 v0, 0x1

    .line 586
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->refreshColorFilterContainerView(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;Z)V

    return-void
.end method

.method public refreshColorFilterContainerView(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;Z)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all_apps_color_filter_switch"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 594
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAllAppsAlphabeticalAppsList()V

    .line 595
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-nez p1, :cond_1

    return-void

    .line 598
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result p1

    .line 599
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->setColorFilterEnabled(Z)V

    .line 600
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->setFilterAppsWithColor(ZZ)V

    const/4 p2, 0x0

    .line 601
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mFirstRefreshColorFilterView:Z

    if-eqz p1, :cond_3

    .line 603
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 604
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    .line 606
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/graphics/IconPalette;->updateAllAppsColorType(Ljava/util/List;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    sget-object p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda5;

    .line 607
    invoke-virtual {p1, p2, p0}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    goto :goto_0

    .line 614
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    .line 615
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p0, p2, p2, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V

    goto :goto_0

    .line 617
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_color_group_anim_open"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 618
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorAnimEnabled()Z

    move-result p1

    .line 619
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->setColorFilterAnimOpen(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchPanel()V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->resetView()V

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->resetView()V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-eqz v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/ColorFilterContainerView;->resetRadioGroup(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;ZZ)V

    :cond_0
    return-void
.end method

.method public resetAppsWhenLauncherModeChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 624
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 625
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->hideColorFilter()V

    :cond_0
    return-void
.end method

.method public resetCategoryContainerVisible()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setAlpha(F)V

    .line 493
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    return-void
.end method

.method public resetSearch()V
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    return-void
.end method

.method public scrollToWorkPage()V
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->scrollToWorkPage()V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isFilteringAppsWithColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public showSearchContainer()V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 275
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 276
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v3, 0x0

    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 277
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 278
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 282
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->updateRecommendAppsInMaskView()V

    return-void
.end method

.method public showSearchPanel()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mHideSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mHideSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->showSearchPanel(Z)V

    return-void
.end method

.method public showSearchPanel(Z)V
    .locals 7

    .line 447
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->isSettingFinderQueryMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getNightModeStatusGlobal()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorModeGlobal()I

    move-result v4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v5

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppCellCountX(Landroid/content/Context;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/mi/appfinder/launcher/FinderController;->onObtainLauncherEtFocusInFinderMode(Landroid/app/Activity;IIII)V

    const-string p0, "Finder"

    const-string p1, "search panel returned for appfinder enable"

    .line 449
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 453
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 454
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setAlpha(F)V

    .line 455
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 456
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchResultView()V

    .line 457
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchMaskView(Z)V

    .line 458
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/event/AllAppsEnterSearchEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/event/AllAppsEnterSearchEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 459
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->showSearchContainer()V

    .line 460
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearchViewShow()V

    .line 461
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    :cond_1
    return-void
.end method

.method public updateAppsColorInfo(Z)V
    .locals 3

    .line 535
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAllAppsAlphabeticalAppsList()V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppsColorInfo\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAllAppsContainerView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getSelectedColorType()I

    move-result v0

    .line 541
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/graphics/IconPalette;->updateAllAppsColorType(Ljava/util/List;)Lio/reactivex2/Observable;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;IZ)V

    sget-object p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$$ExternalSyntheticLambda4;

    .line 542
    invoke-virtual {v1, v2, p0}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method
