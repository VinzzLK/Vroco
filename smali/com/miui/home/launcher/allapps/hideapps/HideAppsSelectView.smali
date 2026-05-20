.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;
.super Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;
.source "HideAppsSelectView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;
.implements Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView$HideAppsComparator;
    }
.end annotation


# instance fields
.field private mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    new-instance p2, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView$HideAppsComparator;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView$HideAppsComparator;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setUseComparator(Ljava/util/Comparator;)V

    return-void
.end method

.method private onCompleteBtnClick()V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->onCompleteBtnClick(Z)V

    return-void
.end method

.method private onCompleteBtnClick(Z)V
    .locals 10

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 70
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/miui/home/launcher/BaseAppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 72
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/AppInfo;->setIsHideApp(Z)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/AppInfo;->setIsHideApp(Z)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getHideApps()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->subtract(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 86
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->subtract(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 89
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->setHideApps(Ljava/util/List;)V

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setToHideApps(Ljava/util/List;)V

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideapps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HideAppsSelectView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nothideapps: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v5

    .line 101
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    .line 102
    iget v7, v6, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v8, 0x11

    if-ne v7, v8, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutInfo;->isShortcut()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 107
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/AppInfo;

    .line 108
    invoke-virtual {v8}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 109
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_5
    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/Launcher;->bindShortcutsRemoved(Ljava/util/ArrayList;)V

    .line 119
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 120
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5, v4}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_3

    .line 124
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v4, v3

    .line 125
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 126
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 128
    :cond_8
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/Launcher;->removeAppWidget(Ljava/util/HashSet;)V

    .line 130
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/home/launcher/LauncherModel;->removeHideAppInfoFromDatabaseExcludeCurrentDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 133
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 134
    :cond_a
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateApps(Ljava/util/List;)V

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {v0, v3, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->changeToPage(IZ)V

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->reset()V

    return-void
.end method

.method private refreshData()V
    .locals 4

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 147
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 150
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(Z)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->notifyItemChanged()V

    .line 155
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->updateTitle(Z)V

    return-void
.end method

.method private syncState(Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->notifyItemChanged(Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method

.method private updateTitle(Z)V
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 200
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10025d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->setTitleText(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 1

    .line 234
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public hideSearchContainer()V
    .locals 5

    .line 315
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 316
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 317
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 318
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 319
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hideSearchPanel()V
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->hideSearchContainer()V

    :cond_0
    return-void
.end method

.method public isCheckBoxShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSearchContainerShow()Z
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

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

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 165
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/AppInfo;

    if-eqz v0, :cond_1

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 168
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->invertChecked()V

    .line 169
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->checkCheckBox(Z)V

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    if-eq p1, v0, :cond_0

    .line 173
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->syncState(Lcom/miui/home/launcher/AppInfo;)V

    :cond_0
    const/4 p1, 0x0

    .line 175
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->updateTitle(Z)V

    :cond_1
    return-void
.end method

.method public onEnter()V
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->onShow()V

    return-void
.end method

.method public onExit()V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->onFinishInflate()V

    const v0, 0x7f0a0067

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    return-void
.end method

.method public onHide()V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->reset()V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onShow()V
    .locals 2

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 244
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 245
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->refreshData()V

    return-void
.end method

.method public onTitleBarLeftBtnClick()V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onBackPressed()Z

    return-void

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->changeToPage(I)V

    return-void
.end method

.method public onTitleBarRightBtnClick()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->onCompleteBtnClick()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->clearSearchResult()V

    .line 266
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->hideSearchPanel()V

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->resetSearch()V

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    .line 269
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 270
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public resetCategoryContainerVisible()V
    .locals 0

    return-void
.end method

.method public shouldContainerHandleTouchEventBySelf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->getCurrentRecyclerView()Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    .line 282
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public showSearchContainer()V
    .locals 5

    .line 307
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 308
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 309
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 310
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0, v2, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 311
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showSearchPanel()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->isSearchContainerShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchResultView()V

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->mSearchContainer:Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;

    invoke-virtual {v0, p0, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;->setClickForSearchItem(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->showSearchContainer()V

    .line 215
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearchViewShow()V

    :cond_0
    return-void
.end method

.method public updateColorForUiMode()V
    .locals 0

    .line 303
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->updateColorForUiMode()V

    return-void
.end method
