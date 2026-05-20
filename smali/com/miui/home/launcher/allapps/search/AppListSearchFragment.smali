.class public Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;
.source "AppListSearchFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/SearchUiResultView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0063

    return p0
.end method

.method protected getShowingShortcutIcon(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onClick(Landroid/view/View;)V

    const-string p0, "search"

    .line 36
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofEmpty()Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    return-void
.end method

.method public resetView()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
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

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setLastSearchQuery(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    .line 43
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->endDragViewContainerBlurAnim()V

    return-void
.end method
