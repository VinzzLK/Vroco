.class public Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
.super Landroid/widget/ViewSwitcher;
.source "AllAppsCategoryContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/IShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

.field protected mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;


# direct methods
.method public static synthetic $r8$lambda$RKMwavFRTWAMq6ytKyeENjOgfEM(Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->lambda$onFinishInflate$0(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f01001a

    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    const p2, 0x7f01001b

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    return-void
.end method

.method private getInsetsPaddingTop()I
    .locals 2

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/util/SoscUtils;->isBottomLayout()Z

    move-result v0

    const v1, 0x7f070079

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 71
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private switchView(I)V
    .locals 2

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindCategoryAdded()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryAdded()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryNameUpdate()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryOrderUpdate()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryRemoved()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryUpdate(I)V

    return-void
.end method

.method public editCategory(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->updateCategory(I)V

    const/4 p1, 0x1

    .line 77
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    return-void
.end method

.method public getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    move-result-object p0

    return-object p0
.end method

.method public getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getAllAppsView()Landroid/view/View;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAllAppsView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 151
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, p0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCategoryCount()I
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCategoryCount()I

    move-result p0

    return p0
.end method

.method public getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentCategoryView()Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPagePosition()I
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentPagePosition()I

    move-result p0

    return p0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 176
    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRecommendApps(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getRecommendApps(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$RecommendAppsCallback;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, p0, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEditContainerShow()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMainPage()Z
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->isInMainPage()Z

    move-result p0

    return p0
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2

    .line 158
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getInsetsPaddingTop()I

    move-result v0

    .line 61
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, p0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->onBackPressed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onFinishInflate()V

    const v0, 0x7f0a00de

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    const v0, 0x7f0a00dd

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    .line 48
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onScreenSizeChanged()V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onScrollUpEnd()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getInsetsPaddingTop()I

    move-result p1

    .line 193
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public resetView()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->resetView()V

    return-void
.end method

.method public scrollToWorkPage()V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToWorkPage()V

    :cond_0
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, p0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public switchToList()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    return-void
.end method
