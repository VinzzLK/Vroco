.class public Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
.source "WorkCategoryAppListFragment.java"


# instance fields
.field private mFastScrollerContainer:Landroid/view/View;

.field private mIsWorkModeOff:Z

.field private mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mIsWorkModeOff:Z

    return-void
.end method

.method private handleWorkModeChange(Z)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mFastScrollerContainer:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 64
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 67
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private shouldShowWorkFooter()Z
    .locals 0

    .line 54
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    return p0
.end method


# virtual methods
.method protected getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    .line 30
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->WORK_MATHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    return-object p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0065

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 79
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->isAnyProfileQuietModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mIsWorkModeOff:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->handleWorkModeChange(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    const v0, 0x7f0a0437

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->addSpringView(I)V

    const p2, 0x7f0a0438

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    const v0, 0x7f0a0085

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const v0, 0x7f0a0063

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mFastScrollerContainer:Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->isAnyProfileQuietModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mIsWorkModeOff:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->handleWorkModeChange(Z)V

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->shouldShowWorkFooter()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewStatus()V

    :cond_0
    return-void
.end method
