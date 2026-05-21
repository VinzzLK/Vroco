.class public abstract Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
.source "RecommendCategoryAppListFragment.java"


# instance fields
.field private isShow:Z

.field private mLastClickPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;-><init>()V

    return-void
.end method

.method private findViewByItemInfo(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-gt v1, v0, :cond_7

    goto :goto_2

    :cond_2
    if-lt v1, v0, :cond_7

    .line 79
    :goto_2
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v2

    .line 82
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_4

    return-object v3

    .line 85
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/AppInfo;

    if-eqz v2, :cond_5

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 87
    iget-object v4, v2, Lcom/miui/home/launcher/BaseAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v3

    :cond_5
    if-eqz p2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    return-object v2
.end method


# virtual methods
.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 2

    .line 71
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->findViewByItemInfo(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getShowingShortcutIcon(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 51
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->findViewByItemInfo(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 54
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getAnimTargetOriginalLocation()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->isIconFullyVisible(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v1, p1

    :cond_1
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/MainThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->startForbiddenUpdate()V

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    .line 43
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->isShowRecommendApps()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result p1

    if-ge p0, p1, :cond_1

    const-string p0, "recommend"

    .line 44
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "apps"

    .line 46
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->setShowRecommendApps(Z)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->mLastClickPosition:I

    .line 67
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V

    .line 104
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recommend_app_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->setShowRecommendApps(Z)V

    :cond_0
    return-void
.end method

.method public onScrollUpEnd()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onScrollUpEnd()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    return-void
.end method

.method public resetView()V
    .locals 3

    .line 119
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->resetView()V

    .line 120
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->isShow:Z

    return-void
.end method
