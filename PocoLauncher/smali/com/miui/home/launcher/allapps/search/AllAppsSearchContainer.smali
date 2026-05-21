.class public Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;
.super Landroid/widget/FrameLayout;
.source "AllAppsSearchContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/IShortcutIcon$ShortcutIconContainer;


# instance fields
.field protected mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

.field protected mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

.field private mClickHideListener:Landroid/view/View$OnClickListener;

.field private mFragmentContainer:Landroid/widget/ViewAnimator;

.field protected mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;


# direct methods
.method public static synthetic $r8$lambda$3O4mprtyn6Xt-hr0Jhrqe9O5-as(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->lambda$onFinishInflate$0(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance p1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mClickHideListener:Landroid/view/View$OnClickListener;

    .line 56
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)Lcom/miui/home/launcher/allapps/search/ZeroMaskView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 200
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    return-object p0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private refreshPadding()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContainerHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 190
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    if-eqz v2, :cond_1

    .line 192
    invoke-static {v2, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContainerHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 211
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object p0

    .line 212
    instance-of v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v0, :cond_0

    .line 213
    check-cast p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getSearchAppId()I
    .locals 0

    const p0, 0x7f0a031d

    return p0
.end method

.method protected getSearchCategoryId()I
    .locals 0

    const p0, 0x7f0a032e

    return p0
.end method

.method public final getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initSearchMaskView(Z)V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mClickHideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isEditContainerShow()Z

    move-result v3

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v4

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 104
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppCellCountX(Landroid/content/Context;)I

    move-result v6

    move v5, p1

    .line 102
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->updateSearchMaskViewContent(Lcom/miui/home/launcher/Launcher;ZZZI)V

    return-void
.end method

.method public initSearchResultView()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isEditContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->updateCategory()V

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :goto_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 172
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->refreshPadding()V

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    new-instance v2, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_drawer_window_insets"

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V

    .line 176
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    new-instance v0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0068

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getSearchAppId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getSearchCategoryId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    const v0, 0x7f0a033d

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mClickHideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->refreshPadding()V

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onBackPressed()Z

    :cond_0
    return-void
.end method

.method public resetView()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->resetView()V

    .line 207
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->resetView()V

    return-void
.end method

.method public setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x12c

    if-nez p2, :cond_1

    .line 128
    new-instance p1, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 129
    new-instance p2, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    invoke-direct {p2, v2, v3, p1}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 130
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2, v0, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 131
    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->resetView()V

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 135
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->updateMaskViewItemChange()V

    goto :goto_0

    .line 139
    :cond_1
    new-instance v4, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 140
    new-instance v5, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    invoke-direct {v5, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 141
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v2, v1, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 142
    invoke-virtual {v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 143
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 149
    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateMaskViewBackground(Z)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->updateBackground(Z)V

    :cond_0
    return-void
.end method

.method public updateMaskViewItemChange()V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public updateRecommendAppsInMaskView(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/miui/home/launcher/allapps/search/ZeroMaskView;

    if-nez p0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskView;->setFrequentUsedAppList(Ljava/util/List;ZZ)V

    return-void
.end method
