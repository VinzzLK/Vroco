.class public Lcom/miui/home/launcher/allapps/AllAppsContainerView;
.super Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;
.source "AllAppsContainerView.java"


# instance fields
.field private isInHideView:Z

.field private mHideAppSearchBarCallbacks:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

.field private mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

.field private mHideAppsTransitionController:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

.field private mHideSwitchListener:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView:Z

    .line 199
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;

    .line 200
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideSwitchListener:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    return-object p0
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppSearchBarCallbacks:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    return-void

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->clearSearchResult()V

    return-void
.end method

.method public createHideAppContainerView()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->reset()V

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    const/4 v1, 0x4

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 229
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsTransitionController:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    .line 230
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->setUpView(Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;Landroid/view/View;Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->setUpView(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->getSearchBarCallback()Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppSearchBarCallbacks:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    .line 234
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 236
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public handleTouchEventBySelf()Z
    .locals 2

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->isPocoHideAppTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->shouldContainerHandleTouchEventBySelf()Z

    move-result p0

    return p0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getSelectedColorType()I

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 171
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentPagePosition()I

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public hideSearchPanel()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppSearchBarCallbacks:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->hideSearchPanel()V

    return-void

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchPanel()V

    return-void
.end method

.method public isInHideView()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView:Z

    return p0
.end method

.method public isShowSearchBar()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->isShowSearchBar()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->isHideSearchShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->resetSearch()V

    const/4 p0, 0x1

    return p0

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 40
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onFinishInflate()V

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideSwitchListener:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    const-string v2, "hide_apps_switch"

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppPreferenceHelper;->registerOnSharedPreferenceChangeListener(Ljava/lang/String;Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->createHideAppContainerView()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsTransitionController:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->handleTouchEventBySelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsTransitionController:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 140
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onPasswordSetSuccess()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsTransitionController:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->showHideView(Z)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->changeToContentContainerView()V

    :cond_1
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

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppSearchBarCallbacks:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/allapps/AllAppsContainerView$$ExternalSyntheticLambda0;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 102
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsTransitionController:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->handleTouchEventBySelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsTransitionController:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onWallpaperColorChanged()V

    .line 244
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 245
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    :cond_1
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onWallpaperColorChanged()V

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->updateColorForColorMode()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->reset()V

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->reset()V

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsTransitionController:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->hideHideView(Z)V

    :cond_0
    return-void
.end method

.method public setAppsInHideView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public setHideView(Z)V
    .locals 1

    .line 130
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView:Z

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p1

    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppsContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public showHideAppsTransferReminderDialog()V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransferController;->showHideAppsTransferReminderDialog(Landroid/content/Context;)V

    return-void
.end method

.method public showSearchPanel()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isInHideView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mHideAppSearchBarCallbacks:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->showSearchPanel()V

    return-void

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->showSearchPanel()V

    return-void
.end method
