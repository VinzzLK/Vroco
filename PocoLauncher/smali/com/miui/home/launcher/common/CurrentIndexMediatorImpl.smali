.class public Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;
.super Lcom/miui/home/launcher/common/CurrentIndexMediator;
.source "CurrentIndexMediatorImpl.java"


# instance fields
.field private final mCurrentRangeIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreScreenIndex:I

.field private mTemGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$e8afWVcT0TPsiNNnUEO0f4PDgeg(Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->lambda$getAccessibilityItemCountAsync$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJbp2gPde2DvY_3MsDSc3SkEsjk([ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->lambda$getSingleCellLayoutAccessibilityCount$1([ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediator;-><init>(Lcom/miui/home/launcher/Workspace;)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mPreScreenIndex:I

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentRangeIndex:Ljava/util/List;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mTemGadgets:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic lambda$getAccessibilityItemCountAsync$0(Ljava/util/function/Consumer;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->getSingleCellLayoutAccessibilityCount(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getSingleCellLayoutAccessibilityCount$1([ILandroid/view/View;)V
    .locals 1

    .line 184
    instance-of p1, p1, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 185
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_0
    return-void
.end method

.method private updateGadgetsLifeCycle(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    .line 137
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateHotSeats()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeats;->onPresent()V

    :cond_0
    return-void
.end method


# virtual methods
.method public announceForAccessibilityIfNeed()V
    .locals 1

    .line 154
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$1;-><init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->getAccessibilityItemCountAsync(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method protected doForEachChildView(Landroid/view/ViewGroup;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 193
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 194
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getAccessibilityItemCountAsync(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/ScreenLoaderHelper;->getInstance()Lcom/miui/home/launcher/ScreenLoaderHelper;

    move-result-object v0

    const-class v1, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    new-instance v2, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/ScreenLoaderHelper;->observeFirstScreenLoaded(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAllIndexesOnScreen(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCurrentAllScreenID()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentAllScreenIndex()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentRangeIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentRangeIndex:Ljava/util/List;

    iget v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mCurrentRangeIndex:Ljava/util/List;

    return-object p0
.end method

.method protected getSingleCellLayoutAccessibilityCount(I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 183
    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    new-instance v2, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda2;-><init>([I)V

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->doForEachChildView(Landroid/view/ViewGroup;Ljava/util/function/Consumer;)V

    aget p0, v0, v1

    return p0
.end method

.method protected initCellLayoutLifeCycle()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 112
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->isInCurrentScreen(I)Z

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isInCurrentScreen(I)Z
    .locals 0

    .line 108
    iget p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate()V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->initCellLayoutLifeCycle()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/ScreenLoaderHelper;->getInstance()Lcom/miui/home/launcher/ScreenLoaderHelper;

    move-result-object p0

    const-class v0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenLoaderHelper;->unObserveFirstScreenLoaded(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 91
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 44
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    return-void
.end method

.method public setTmpGadgets(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/Gadget;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mTemGadgets:Ljava/util/ArrayList;

    return-void
.end method

.method protected updateCellLayoutVisibility(I)V
    .locals 2

    .line 118
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mPreScreenIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    .line 119
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateSingleCellLayoutStatus(IZI)V

    return-void
.end method

.method protected updateData()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    if-nez v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, v0, Lcom/miui/home/launcher/Launcher;->mGadgets:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateGadgetsLifeCycle(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mTemGadgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mTemGadgets:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateGadgetsLifeCycle(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    :cond_1
    const/4 v0, 0x3

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateCellLayoutVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScroll()V

    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->announceForAccessibilityIfNeed()V

    .line 72
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;

    iget-object v2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/common/messages/CurrentScreenIdMessage;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->refreshAllAppsArrow()V

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUserPresentAnimation()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->checkMissingIcon()V

    .line 79
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onWorkspaceScreenChanged()V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateIndex(IZ)V
    .locals 1

    .line 49
    iget v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    iput v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mPreScreenIndex:I

    .line 50
    iput p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateData()V

    :cond_0
    return-void
.end method

.method protected updateSingleCellLayoutStatus(IZI)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->getCellLayout(I)Lcom/miui/home/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/CellLayout;->onVisible(I)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/CellLayout;->onInvisible(I)V

    .line 131
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->updateHotSeats()V

    return-void
.end method

.method protected updateSingleGadgetLifeCycle(Lcom/miui/home/launcher/gadget/Gadget;)V
    .locals 4

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 144
    iget-object v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    iget-wide v2, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 145
    iget v1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorImpl;->mPreScreenIndex:I

    if-ne v0, v1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_0

    .line 147
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    if-ne v0, p0, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method
