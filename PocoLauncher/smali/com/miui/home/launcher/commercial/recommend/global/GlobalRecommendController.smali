.class public Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;
.super Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.source "GlobalRecommendController.java"


# direct methods
.method public static synthetic $r8$lambda$KRrMaqOfTJxB3Jvs_9R8C-xT2hA(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$trackViewEvent$0(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YP8N1gJ9sxndeszr5eXHvgogWtA(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$handleClick$1(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_qLKxF-BZDOcaJL61fEIY7ODOhU(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$requestRecommend$3(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iacGsiprSwbhZbE8SOS-jkxOYuU(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$requestRecommend$4(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x7Z2F0X18vY2ACnCYUTVcDBg5ug(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Ljava/util/List;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->lambda$handleClick$2(Ljava/util/List;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method private buildFolderInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;
    .locals 1

    .line 80
    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    invoke-direct {v0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;-><init>()V

    .line 81
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderInfo;->getFolderNameUsedToRequestFolderAdList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->setFolderTitle(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->setPackages(Ljava/util/List;)V

    .line 83
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getGlobalFolderTagIdToRequestRecommendAd()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getGlobalFolderTagIdToRequestRecommendAd()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;->setTagIds([Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private isPrivacyPolicyAllow()Z
    .locals 2

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getPrivacyPolicyAllow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p0

    .line 101
    instance-of v1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    if-eqz v1, :cond_1

    .line 102
    check-cast p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->clearPreinstallAds()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$handleClick$1(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    return-object p0
.end method

.method private synthetic lambda$handleClick$2(Ljava/util/List;IJ)V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda3;

    .line 54
    invoke-static {p1, v0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->getFromRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->handleClick(Ljava/util/List;IJ)V

    return-void
.end method

.method private static synthetic lambda$requestRecommend$3(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    .line 70
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;-><init>(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)V

    return-object v0
.end method

.method private synthetic lambda$requestRecommend$4(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->buildFolderInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;

    move-result-object p1

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->loadGlobalFolderRecommendAdInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderInfo;)Ljava/util/List;

    move-result-object p0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Global Recommend InfoList size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string p2, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecommendController"

    invoke-static {p2, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object p1, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda4;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->buildRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterRequestedAdList(Ljava/util/List;)V

    return-object p0
.end method

.method private synthetic lambda$trackViewEvent$0(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;

    move-result-object p0

    .line 46
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/miui/msa/preinstall/v1/GlobalGuessYouLikeAdHelper;->handleView(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;I)V

    return-void
.end method


# virtual methods
.method public canRecommendSwitchShow()Z
    .locals 1

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAppStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRecommendServerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->isPrivacyPolicyAllow()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getIsConnectedToTheInternet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canShowOldRecommendData()Z
    .locals 4

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getViewExpireTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getViewExpireTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->haveData()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleClick(Ljava/util/List;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;IJ)V"
        }
    .end annotation

    .line 52
    new-instance v6, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Ljava/util/List;IJ)V

    invoke-static {v6}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadIcon(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/RemoteShortcutInfo;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromGlobal(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFolderShowRecommends()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->needToRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RecommendController"

    const-string v1, "folder open, request recommend app list"

    .line 137
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadAndRefresh()V

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->canShowOldRecommendData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 142
    invoke-interface {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;->setRecommendScreenVisibility(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecommendAppRemoved()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    const-string v1, "RecommendController"

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendWithCheck()V

    const-string p0, "onRecommendAppRemoved, try to request recommend app data"

    .line 123
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "onRecommendAppRemoved, folder is closed and don\'t request data when folder is closed"

    .line 125
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onXOutClick()V
    .locals 1

    .line 39
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "golbal hasn\'t folder recommend xout"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;I)V
    .locals 0
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

    .line 63
    new-instance p3, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p0, 0x0

    invoke-static {p3, p2, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    const-string p0, "RecommendController"

    const-string p1, "request global folder recommend data"

    .line 76
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestRecommendWhenOpenFolder(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    const-string v1, "RecommendController"

    if-nez v0, :cond_0

    const-string p0, "Don\'t request, folder recommend switch off"

    .line 150
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/util/NetWorkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "folder open and try to request recommend list"

    .line 154
    invoke-static {v1, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;->onFolderShowRecommends()V

    goto :goto_0

    :cond_1
    const-string v0, "network not connected, try to show old recommendData"

    .line 157
    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->showOldRecommendData(Lcom/miui/home/launcher/Launcher;)V

    :goto_0
    return-void
.end method

.method public trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 44
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/commercial/recommend/global/GlobalRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
