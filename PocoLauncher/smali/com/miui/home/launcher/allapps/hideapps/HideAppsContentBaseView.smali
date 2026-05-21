.class public abstract Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;
.super Landroid/widget/RelativeLayout;
.source "HideAppsContentBaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field protected mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field protected mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 52
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 53
    new-instance p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {p1, p2, p3}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->getAppFilter()Ljava/util/function/Predicate;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setHideFilter(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private initRecyclerView(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->isCheckBoxShow()Z

    move-result v5

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->setUp(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsContainerView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;ZZ)V

    return-void
.end method


# virtual methods
.method protected getAppFilter()Ljava/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isCheckBoxShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01da

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    .line 65
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method

.method public setUp(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    .line 70
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 72
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->initRecyclerView(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V

    return-void
.end method

.method public updateColorForUiMode()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->updateColorForUiMode()V

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f06006a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060027

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
