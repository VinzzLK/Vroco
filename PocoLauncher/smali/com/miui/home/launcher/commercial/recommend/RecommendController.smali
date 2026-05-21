.class public abstract Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.super Ljava/lang/Object;
.source "RecommendController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;,
        Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;
    }
.end annotation


# static fields
.field private static final RECOMMEND_DISABLE_INTERVAL:J

.field private static sLoadingContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCacheEndTime:J

.field private mCommercialRecommendAppsContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

.field public mGuessCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsRequesting:Z

.field private mNeedHideBecauseReturnEmptyData:Z

.field private mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

.field protected mRecommendInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mViewExpireTime:J


# direct methods
.method public static synthetic $r8$lambda$DrQ4S3vIJEvIXVqpJzz-6IuR0wU(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->lambda$onRequestedDataEmpty$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$KA56YuH3-BiUHreK-vDVaclFgCs(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->lambda$new$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kl9JlB99a89pvG1m1tOjJX-Oh7I(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->lambda$preloadRecommendAppsIcon$0(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    .line 53
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xf731400

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    sput-wide v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->RECOMMEND_DISABLE_INTERVAL:J

    return-void
.end method

.method protected constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    .line 51
    iput-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mNeedHideBecauseReturnEmptyData:Z

    .line 242
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mGuessCallback:Ljava/util/function/Consumer;

    .line 421
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$2;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->buildCommercialRemoteShortCutInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private static buildCommercialRemoteShortCutInfo(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;J)Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;
    .locals 4

    .line 434
    new-instance v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;-><init>(I)V

    .line 435
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 436
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setNetIconUrl(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->setAppId(Ljava/lang/String;)V

    .line 439
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 440
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "invalidClassName"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 441
    iput-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 442
    iput-wide p1, v0, Lcom/miui/home/launcher/ItemInfo;->container:J

    return-object v0
.end method

.method public static clearLoadingContents()V
    .locals 1

    .line 458
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getCacheEndTime()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCacheEndTime:J

    return-wide v0
.end method

.method public static getController(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendController;
    .locals 1

    .line 73
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    :goto_0
    return-object v0
.end method

.method private hideRecommendScreenDelay()V
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setNeedHideBecauseReturnEmptyData(Z)V

    return-void
.end method

.method public static initLoadingAnimationContents()V
    .locals 3

    .line 447
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearLoadingContents()V

    .line 448
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 451
    new-instance v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;-><init>(I)V

    .line 452
    sget-object v2, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAfterRecommendDisableInterval()Z
    .locals 5

    .line 525
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 529
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHomeDataCreateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->RECOMMEND_DISABLE_INTERVAL:J

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isNeedHideBecauseReturnEmptyData()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mNeedHideBecauseReturnEmptyData:Z

    return p0
.end method

.method private synthetic lambda$new$1(Ljava/util/List;)V
    .locals 5

    .line 243
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onGuessCallback()V

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setIsRequesting(Z)V

    if-eqz p1, :cond_2

    .line 245
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getCacheTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setCacheEndTime(J)V

    .line 249
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getEndTimeInMills()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setViewExpireTime(J)V

    const-string v1, "request_success"

    .line 250
    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setRecommendInfo(Ljava/util/List;)V

    .line 253
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isNeedHideBecauseReturnEmptyData()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setNeedHideBecauseReturnEmptyData(Z)V

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 257
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;->setRecommendScreenVisibility(Z)V

    goto :goto_1

    .line 246
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onRequestedDataEmpty()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$onRequestedDataEmpty$2()V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    return-void
.end method

.method private static synthetic lambda$preloadRecommendAppsIcon$0(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private onRequestedDataEmpty()V
    .locals 2

    const-string v0, "request_fail"

    .line 263
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    const-string v0, "RecommendController"

    const-string v1, "requested data is empty"

    .line 264
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canShowOldRecommendData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->runAfterRecommendScreenShowAnim(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hideRecommendScreenDelay()V

    :goto_0
    return-void
.end method

.method private setCacheEndTime(J)V
    .locals 1

    .line 130
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCacheEndTime:J

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set cacheEnd time\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecommendController"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setViewExpireTime(J)V
    .locals 1

    .line 135
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mViewExpireTime:J

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set expire time\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecommendController"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public canRecommendScreenShow()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendSwitchShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isGuessYouLikeAdsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isNeedHideBecauseReturnEmptyData()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract canRecommendSwitchShow()Z
.end method

.method public abstract canShowOldRecommendData()Z
.end method

.method public clearContents()V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearIconResInContents()V

    .line 168
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearIconResInContents()V
    .locals 2

    const-string v0, "RecommendController"

    const-string v1, "clearIconResInContents"

    .line 172
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 174
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->recycleIconRes()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public count()I
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    return-object p0
.end method

.method public getFilteredRecommendAppsContents()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$3;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    .line 472
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFilteredRecommendInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$4;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterByLauncherApps(Ljava/util/List;Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;)V

    .line 482
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    return-object p0
.end method

.method protected getFirstRecommendInfo()Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method public getFolderRecommendAdInfo(Lcom/miui/home/launcher/RemoteShortcutInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 3

    .line 292
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    .line 293
    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;
    .locals 3

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_enable_recommend_apps_view_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getTrackKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "request"

    return-object p0
.end method

.method protected getViewExpireTime()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mViewExpireTime:J

    return-wide v0
.end method

.method public abstract handleClick(Ljava/util/List;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;IJ)V"
        }
    .end annotation
.end method

.method public hasUserChangedRecommendSwitchState()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public haveData()Z
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isCachedDataExpired()Z
    .locals 4

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getCacheEndTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGuessYouLikeAdsOn()Z
    .locals 3

    .line 503
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 506
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->isGuessYouLikeAdsOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isAfterRecommendDisableInterval()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLoadingAnimationShortcutInfo(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)Z
    .locals 0

    .line 329
    sget-object p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->sLoadingContents:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRecommendDataTooFew()Z
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->count()I

    move-result p0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecommendSwitchOn()Z
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->hasUserChangedRecommendSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOnAsDefault()Z

    move-result p0

    return p0
.end method

.method public isRecommendSwitchOnAsDefault()Z
    .locals 2

    .line 498
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isAfterRecommendDisableInterval()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isRequesting()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mIsRequesting:Z

    return p0
.end method

.method public abstract loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation
.end method

.method protected needToRequest()Z
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result v0

    const-string v1, "RecommendController"

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRequesting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendDataTooFew()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request, because "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "cached data expired"

    goto :goto_0

    :cond_1
    const-string p0, "recommend data too few"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "don\'t request, because folder is requesting now"

    .line 113
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "don\'t request, because recommend screen can\'t show"

    .line 116
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public onAppAdded(Ljava/lang/String;)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->removedRecommendAppsByPackageName(Ljava/lang/String;)Z

    return-void
.end method

.method public onBinded(Z)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->onBind(Z)V

    return-void
.end method

.method public onDoRefreshWhenLowContent()V
    .locals 2

    const-string v0, "RecommendController"

    const-string v1, "onDoRefreshWhenLowContent, try to request recommend app data"

    .line 196
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendWithCheck()V

    return-void
.end method

.method public onFolderHideRecommends()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearIconResInContents()V

    return-void
.end method

.method public abstract onFolderShowRecommends()V
.end method

.method public onGuessCallback()V
    .locals 0

    return-void
.end method

.method public abstract onRecommendAppRemoved()V
.end method

.method public onSwitchChangedByUser(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 512
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V

    :cond_0
    return-void
.end method

.method public abstract onXOutClick()V
.end method

.method public preloadAndRefresh()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadRecommendAppsIcon()V

    .line 217
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->refresh()V

    .line 218
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/FolderRecommendRefreshMessage;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/messages/FolderRecommendRefreshMessage;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public preloadRecommendAppsIcon()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecommendController"

    const-string v1, "preload recommend apps icons"

    .line 223
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 225
    new-instance v2, Lcom/miui/home/launcher/commercial/recommend/RecommendController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->refreshList()V

    return-void
.end method

.method public remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendAppsAdapter:Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 339
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->filterCollection(Ljava/util/Collection;Ljava/util/function/Predicate;)V

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onRecommendAppRemoved()V

    return-void
.end method

.method public removeRecommendScreenCallBack()V
    .locals 1

    const/4 v0, 0x0

    .line 554
    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

    return-void
.end method

.method public removeRecommendSwitchSharedPreference()V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->removeKey(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public removedRecommendAppsByPackageName(Ljava/lang/String;)Z
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mCommercialRecommendAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    .line 362
    invoke-virtual {v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public abstract requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;I)V"
        }
    .end annotation
.end method

.method public requestRecommendImmediately(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadRecommendAppsIcon()V

    .line 310
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getAdapter()Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendShortcutsAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setIsRequesting(Z)V

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mGuessCallback:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;I)V

    .line 314
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getTrackKey(I)Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    return-void
.end method

.method public abstract requestRecommendWhenOpenFolder(Lcom/miui/home/launcher/Launcher;)V
.end method

.method public requestRecommendWithCheck()V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->needToRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 188
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected setIsRequesting(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mIsRequesting:Z

    return-void
.end method

.method public setNeedHideBecauseReturnEmptyData(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mNeedHideBecauseReturnEmptyData:Z

    return-void
.end method

.method public setRecommendInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;)V"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    .line 351
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "view"

    .line 355
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRecommend(Ljava/lang/String;)V

    .line 356
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    .line 357
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderRecommendAnimStateMessageHandler:Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->runAfterRecommendScreenShowAnim(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRecommendScreenCallBack(Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

    return-void
.end method

.method public setRecommendSwitchOn(Z)V
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 535
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onSwitchChangedByUser(Z)V

    .line 536
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderInfo;->onRecommendAppsSwitchStateChanged(Z)V

    goto :goto_0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getRecommendSwitchSharedPreferencsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public showOldRecommendData(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canShowOldRecommendData()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadAndRefresh()V

    .line 279
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

    invoke-interface {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;->setRecommendScreenVisibility(Z)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setNeedHideBecauseReturnEmptyData(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
.end method
