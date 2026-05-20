.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;
.super Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;
.source "HideAppsContentView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;


# instance fields
.field private headerElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

.field private mEmptyTextMsg:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$lNxruJd-QPJnTV5n49cNsroAdRs(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private check()V
    .locals 3

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->onTitleBarRightBtnClick()V

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

    .line 58
    sget-object p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->sNotHideFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public onEnter()V
    .locals 0

    return-void
.end method

.method public onExit()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->onFinishInflate()V

    const v0, 0x7f0a01d6

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->mEmptyView:Landroid/view/View;

    const v0, 0x7f0a01d5

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->mEmptyTextMsg:Landroid/widget/TextView;

    const v0, 0x7f0a01d7

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onHide()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->reset()V

    return-void
.end method

.method public onShow()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->check()V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->headerElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->getCurrentRecyclerView()Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public onTitleBarLeftBtnClick()V
    .locals 2

    .line 75
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "is_from_reset_password"

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->showHideAppsViewPlaceHolder(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onTitleBarRightBtnClick()V
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mHideAppsContentContainerView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->changeToPage(I)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->getCurrentRecyclerView()Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scrollToTop()V

    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->setApps(Ljava/util/List;)V

    .line 64
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->check()V

    return-void
.end method

.method public setUp(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->setUp(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V

    .line 94
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->headerElevationController:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    return-void
.end method

.method public shouldContainerHandleTouchEventBySelf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->mNormalContainerView:Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/AllAppsNormalContainerView;->getCurrentRecyclerView()Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    move-result-object p0

    .line 141
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

.method public updateColorForUiMode()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->updateColorForUiMode()V

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->mEmptyTextMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060050

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->mEmptyTextMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f06004f

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
