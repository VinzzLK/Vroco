.class public Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;
.super Landroid/widget/LinearLayout;
.source "SmallIconsRecommendScreen.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private alphaAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

.field private mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

.field private mRecommendHeader:Landroid/widget/LinearLayout;

.field private mRecommendTitle:Landroid/widget/TextView;

.field private mRefresh:Landroid/widget/ImageView;

.field private mXOutImageView:Landroid/widget/ImageView;

.field recommendScreenAlpha:F


# direct methods
.method public static synthetic $r8$lambda$TI8xRMV2g6PLySzy1vjgVlfbOPI(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->lambda$showOrHideRecommendScreenInner$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->alphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 p2, 0x0

    .line 199
    iput p2, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->recommendScreenAlpha:F

    .line 97
    check-cast p1, Lcom/miui/home/launcher/Launcher;

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private getAlphaAnimConfig(Z)Lmiuix/animation/base/AnimConfig;
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->alphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->alphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x1

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;-><init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;Z)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->alphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->alphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const p1, 0x3eb33333    # 0.35f

    goto :goto_1

    :cond_1
    const p1, 0x3e3851ec    # 0.18f

    :goto_1
    invoke-static {v1, p1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 225
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->alphaAnimConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method private getPadding()I
    .locals 2

    .line 446
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    sub-float/2addr p0, v0

    float-to-int p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private synthetic lambda$showOrHideRecommendScreenInner$0()V
    .locals 2

    .line 174
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager;->allowConnectToNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowMarketConnectNetworkDialog()V

    .line 177
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, p0, v1}, Lcom/market/sdk/MarketManager;->startUserAgreementActivity(Landroid/app/Activity;I)Z

    :cond_0
    return-void
.end method

.method private setViewLayoutParamsOfSoscSplit()V
    .locals 7

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 424
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 425
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getFolderGridViewWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 426
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getPadding()I

    move-result v3

    .line 428
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 429
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getPadding()I

    move-result v5

    const/4 v6, 0x0

    .line 426
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 430
    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 434
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getFolderGridViewWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 435
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 436
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->calculateFixedGap()V

    .line 437
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRecommendAppsViewLayoutParams()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 253
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getFolderGridViewWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    .line 254
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 255
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->calculateFixedGap()V

    .line 256
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRecommendHeaderRightIcon()V
    .locals 3

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isShowXOut()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateRecommendHeaderViewLayoutParams()V
    .locals 6

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 261
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 262
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getFolderGridViewWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 263
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getPadding()I

    move-result v2

    .line 265
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 266
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07063a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    .line 263
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 267
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 140
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 408
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CancelEmptySpaceLongClickMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 409
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doRefresh()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isRequestWhenClickRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->count()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->refreshDisplayContents()V

    goto :goto_0

    .line 335
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onDoRefreshWhenLowContent()V

    :goto_0
    return-void
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getContent()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    return-object p0
.end method

.method public getDragSource()Lcom/miui/home/launcher/DragSource;
    .locals 0

    return-object p0
.end method

.method public getRecommendTitle()Landroid/widget/TextView;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public init()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const v1, 0x7f100436

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 291
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public onAppStartDownload(Ljava/lang/String;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->onAppStartDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 451
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 452
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02f7

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02fa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onXOutClick()V

    goto :goto_0

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 314
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 315
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, -0x3c4c0000    # -360.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string p1, "click_refresh"

    .line 317
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->doRefresh()V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->onScreenSizeChanged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 459
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 460
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isLoadingAnimationShortcutInfo(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->add(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    .line 383
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01aa

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    .line 114
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0a02f9

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    const v0, 0x7f0a02f7

    .line 119
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fa

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mXOutImageView:Landroid/widget/ImageView;

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f3

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    .line 124
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->resetRecommendView()V

    return-void
.end method

.method public onFolderAlphaChange(F)V
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/ScreenCellsChanged;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->resetRecommendView()V

    :cond_0
    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 2

    .line 229
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRecommendGridPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 231
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08068c

    .line 232
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setHeaderBgRes(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f08068b

    .line 234
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setHeaderBgRes(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->resetRecommendView()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 414
    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setViewLayoutParamsOfSoscSplit()V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->resetRecommendView()V

    :goto_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendTitle:Landroid/widget/TextView;

    const v2, 0x7f1100ee

    const v3, 0x7f1100ef

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRefresh:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080691

    goto :goto_0

    :cond_0
    const v2, 0x7f080690

    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public refreshDisplayContents()V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->snapToNextScreen()V

    return-void
.end method

.method public resetRecommendView()V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->updateRecommendHeaderViewLayoutParams()V

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->updateRecommendAppsViewLayoutParams()V

    return-void
.end method

.method setContentAdapter(Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 306
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 394
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setHeaderBgRes(I)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 399
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendHeader:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public showOrHideRecommendScreen(Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->haveData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->init()V

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onFolderShowRecommends()V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onFolderHideRecommends()V

    :goto_0
    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendController:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->haveData()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->showOrHideRecommendScreenInner(Z)V

    return-void
.end method

.method public showOrHideRecommendScreenInner(Z)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 168
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 169
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;-><init>(I)V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/FolderCling;->onRecommendScreenVisibilityChanged(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->updateRecommendHeaderRightIcon()V

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getUnsafetyHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 181
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 185
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 187
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    .line 189
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 p1, 0x4

    .line 190
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 193
    :cond_2
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_3

    move-wide v6, v4

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->recommendScreenAlpha:F

    float-to-double v6, v6

    :goto_0
    invoke-virtual {v1, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 194
    new-instance v6, Lmiuix/animation/controller/AnimState;

    invoke-direct {v6}, Lmiuix/animation/controller/AnimState;-><init>()V

    if-eqz p1, :cond_4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_4
    invoke-virtual {v6, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v4, v0, [Landroid/view/View;

    aput-object p0, v4, v2

    .line 195
    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v4

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->getAlphaAnimConfig(Z)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-interface {v4, v1, v3, v0}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_1
    return-void
.end method

.method public snapToAppView(Ljava/lang/String;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->mRecommendAppsView:Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsThumbnailView;->snapToAppView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
