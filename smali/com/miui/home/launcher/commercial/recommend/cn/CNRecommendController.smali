.class public Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;
.super Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.source "CNRecommendController.java"


# static fields
.field private static sLastRequestCloudTagId:Ljava/lang/String;

.field private static sLastRequestCloudTime:J


# instance fields
.field private mCNCloudDataCacheEndTime:J

.field private mCNCloudDataExpireEndTime:J

.field private mCloudCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCloudList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayCloudRequest:Ljava/lang/Runnable;

.field private mIsCloudRequest:Z

.field private mIsGuessRequest:Z

.field private mLastRequestTime:J


# direct methods
.method public static synthetic $r8$lambda$5NA30yRzo74uyYsaXP_HaVkbQxs(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestGuessRecommend$4(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AsoT4_O339yVSisOP47hXUmwwfs(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Ljava/util/List;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$handleClick$3(Ljava/util/List;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CVd6llUDDVUyu7ADjywTBNTAnHQ(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestGuessRecommend$5(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DR1TvzjOOCldVYqCqJJw9pM373Y(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestCloudRecommend$8(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FpMPsTJjVU_DFUtif9peJqj5yr0(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestCloudRecommend$9(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FpXWlTnj_zpfPCR05nwIueJF19c(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$trackViewEvent$1(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RxZ0SSOEzQ1bYjB3AlCoy7qZ7vk(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$new$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WP5Huo0sX3TxXmkuPvexxJt_7Qo(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$requestCloudRecommend$7(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hKRnTCmdOvw0scBA3z8uoRWDESk(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$setPreinstallAdList$10(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q5uAItFH8284n6IGU41P9bCrJDQ(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$uploadFirstFolderRecommendAdInfo$0(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v5BqJD9kSZCrOGLSxUreBP686ZM(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->lambda$handleClick$2(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mLastRequestTime:J

    .line 39
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataCacheEndTime:J

    .line 40
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataExpireEndTime:J

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsCloudRequest:Z

    .line 133
    new-instance p1, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;)V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method private checkTagId(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "1.32.5.1"

    .line 188
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "1.32.5.3"

    .line 189
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private getTagIdByFolderInfo(Lcom/miui/home/launcher/FolderInfo;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1.32.5.1"

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "1.32.5.3"

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne p2, p0, :cond_4

    .line 302
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "1.32.5.2"

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "1.32.5.4"

    goto :goto_0

    :cond_3
    const-string p0, "1.32.5.5"

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private isCloudCachedDataExpired()Z
    .locals 4

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getCNCloudDataCacheEndTime()J

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

.method private static synthetic lambda$handleClick$2(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    return-object p0
.end method

.method private synthetic lambda$handleClick$3(Ljava/util/List;IJ)V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda8;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda8;

    .line 91
    invoke-static {p1, v0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->getFromRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->handleClick(Ljava/util/List;IJ)V

    return-void
.end method

.method private synthetic lambda$new$6(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsCloudRequest:Z

    if-eqz p1, :cond_2

    .line 135
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterDuplicatesAd(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendInfoList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setRecommendInfo(Ljava/util/List;)V

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudList:Ljava/util/List;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getCacheTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setCNCloudDataCacheEndTime(J)V

    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getEndTimeInMills()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setCNCloudDataExpireEndTime(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestCloudRecommend$7(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
    .locals 0

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestCloudRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$requestCloudRecommend$8(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    .line 173
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;-><init>(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    return-object v0
.end method

.method private synthetic lambda$requestCloudRecommend$9(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 2

    const/4 p2, 0x2

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    move-result-object p2

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;

    move-result-object p2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cloud InfoList size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,folder is open: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecommendController"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda10;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda10;

    invoke-static {p2, v0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->buildRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p2

    .line 174
    invoke-static {p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterRequestedAdList(Ljava/util/List;)V

    if-eqz p2, :cond_2

    .line 175
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getTagId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->checkTagId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setPreinstallAdList(Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;)V

    return-object p2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$requestGuessRecommend$4(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
    .locals 1

    if-eqz p0, :cond_0

    .line 113
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;-><init>(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$requestGuessRecommend$5(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/util/List;
    .locals 1

    const/4 p2, 0x1

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->loadFolderRecommendAdInfo(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Ljava/util/List;

    move-result-object p1

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Guess AdInfoList "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RecommendController"

    invoke-static {v0, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object p2, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda9;->INSTANCE:Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda9;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->buildRecommendInfoList(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterRequestedAdList(Ljava/util/List;)V

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudList:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->filterDuplicatesAd(Ljava/util/List;Ljava/util/List;)Z

    if-eqz p1, :cond_2

    .line 119
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setPreinstallAdList$10(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->clear()V

    return-void
.end method

.method private synthetic lambda$trackViewEvent$1(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object p0

    .line 83
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->handleView(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    return-void
.end method

.method private static synthetic lambda$uploadFirstFolderRecommendAdInfo$0(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V
    .locals 2

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, p0, v1}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->handleDislike(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    return-void
.end method

.method public static setLastRequestCloudTagId(Ljava/lang/String;)V
    .locals 0

    .line 411
    sput-object p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTagId:Ljava/lang/String;

    return-void
.end method

.method public static setLastRequestCloudTime(J)V
    .locals 0

    .line 407
    sput-wide p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTime:J

    return-void
.end method

.method private setPreinstallAdList(Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;",
            "Lcom/miui/home/launcher/FolderInfo;",
            ")V"
        }
    .end annotation

    .line 314
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const-string p0, "RecommendController"

    if-eqz p1, :cond_1

    .line 315
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recommend folder, get preinstall ads count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getPreinstallManager()Lcom/miui/home/launcher/commercial/preinstall/FolderPreinstallManager;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->setPreinstallData(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string p1, "recommend folder, clear preinstall ads"

    .line 319
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private uploadFirstFolderRecommendAdInfo()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getFirstFolderRecommendAdInfo()Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    move-result-object p0

    const-string v0, "RecommendController"

    if-eqz p0, :cond_0

    .line 71
    new-instance v1, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda4;-><init>(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadFirstFolderRecommendAdInfo, appName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "uploadFirstFolderRecommendAdInfo, the first one is null"

    .line 75
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public buildFolerInfoUsedToRequestAdList(Lcom/miui/home/launcher/FolderInfo;I)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;
    .locals 2

    .line 285
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;-><init>()V

    .line 286
    iget-object v1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderInfo;->getFolderNameUsedToRequestFolderAdList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setFolderTitle(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getPackageNameList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setPackages(Ljava/util/List;)V

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getTagIdByFolderInfo(Lcom/miui/home/launcher/FolderInfo;I)Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-virtual {v0, p0}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setTagId(Ljava/lang/String;)V

    return-object v0
.end method

.method public canRecommendSwitchShow()Z
    .locals 1

    .line 334
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAppStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRecommendServerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    .line 336
    invoke-static {p0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->canRecommendSwitchShow(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 337
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p0

    if-nez p0, :cond_0

    .line 338
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isPremiumPhone()Z

    move-result p0

    if-nez p0, :cond_0

    .line 339
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
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->haveData()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCNCloudDataCacheEndTime()J
    .locals 2

    .line 281
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataCacheEndTime:J

    return-wide v0
.end method

.method protected getFirstFolderRecommendAdInfo()Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getFirstRecommendInfo()Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getTrackKey(I)Ljava/lang/String;
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "request"

    if-eqz v0, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    return-object v4

    :cond_0
    const-string p0, "recommend_all_request"

    return-object p0

    :cond_1
    const-string p0, "recommend_cloud_request"

    return-object p0

    :cond_2
    const-string p0, "recommend_guess_request"

    return-object p0

    .line 233
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    return-object v4

    :cond_4
    const-string p0, "hot_all_request"

    return-object p0

    :cond_5
    const-string p0, "hot_cloud_request"

    return-object p0

    :cond_6
    const-string p0, "hot_guess_request"

    return-object p0

    :cond_7
    return-object v4
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

    .line 89
    new-instance v6, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Ljava/util/List;IJ)V

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

    .line 329
    invoke-static {p1, p2}, Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromCN(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public needToRequestCloud()Z
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->canRecommendSwitchShow()Z

    move-result v0

    const-string v1, "RecommendController"

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCloudCachedDataExpired()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "request, because cloud cached data expired"

    .line 252
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "don\'t request, because recommend screen can\'t show"

    .line 256
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public needToRequestGuess()Z
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->canRecommendSwitchShow()Z

    move-result v0

    const-string v1, "RecommendController"

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendDataTooFew()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request, because cached data expired "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isCachedDataExpired()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " recommend data too few "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendDataTooFew()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cloud data expired "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCloudCachedDataExpired()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "don\'t request, because recommend screen can\'t show"

    .line 269
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public obtainRequestMode()I
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->needToRequestGuess()Z

    move-result v0

    .line 276
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->needToRequestCloud()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public onFolderShowRecommends()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mDelayCloudRequest:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 366
    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mDelayCloudRequest:Ljava/lang/Runnable;

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->needToRequestCloud()Z

    move-result v0

    const-string v1, "RecommendController"

    if-eqz v0, :cond_1

    const-string v0, "folder open, request cloud app list"

    .line 370
    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 371
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->needToRequestGuess()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "folder open, request guess app list"

    .line 374
    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->preloadAndRefresh()V

    .line 378
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->canShowOldRecommendData()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendScreenShow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mRecommendScreenCb:Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;

    if-eqz p0, :cond_3

    .line 379
    invoke-interface {p0, v2}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;->setRecommendScreenVisibility(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onGuessCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    return-void
.end method

.method public onRecommendAppRemoved()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    const-string v1, "RecommendController"

    if-nez v0, :cond_1

    .line 345
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isOnlyRequestWhenFolderOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "onRecommendAppRemoved, folder is closed and don\'t request data when folder is closed"

    .line 349
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestRecommendWithCheck()V

    const-string p0, "onRecommendAppRemoved, try to request recommend app data"

    .line 347
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onSwitchChangedByUser(Z)V
    .locals 2

    .line 416
    invoke-super {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onSwitchChangedByUser(Z)V

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 418
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataCacheEndTime:J

    .line 419
    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setLastRequestCloudTime(J)V

    :cond_0
    return-void
.end method

.method public onXOutClick()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->uploadFirstFolderRecommendAdInfo()V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/XOutUtils;->updateRecommendAppsBeginDisplayTime(Landroid/content/Context;)V

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    :cond_0
    return-void
.end method

.method public requestCloudRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->isCloudCachedDataExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsCloudRequest:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->getTagIdByFolderInfo(Lcom/miui/home/launcher/FolderInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 156
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mDelayCloudRequest:Ljava/lang/Runnable;

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sget-wide v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->sLastRequestCloudTime:J

    sub-long/2addr p1, v0

    sub-long/2addr v3, p1

    .line 158
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mDelayCloudRequest:Ljava/lang/Runnable;

    invoke-static {p0, v3, v4}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 161
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setLastRequestCloudTime(J)V

    .line 162
    invoke-static {v0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->setLastRequestCloudTagId(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsCloudRequest:Z

    .line 164
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p0, 0x0

    .line 183
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getFolderRecommendSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p1

    .line 164
    invoke-static {v0, p2, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p0, "RecommendController"

    const-string p1, "request CN cloud data"

    .line 184
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestGuessRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/FolderInfo;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mIsGuessRequest:Z

    .line 102
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p0, 0x0

    .line 124
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getFolderRecommendSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p1

    .line 102
    invoke-static {v0, p2, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p0, "RecommendController"

    const-string p1, "request CN guess data"

    .line 125
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;I)V
    .locals 2
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

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecommendController"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestGuessRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    .line 205
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudCallback:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestCloudRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCloudCallback:Ljava/util/function/Consumer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestCloudRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->requestGuessRecommend(Lcom/miui/home/launcher/FolderInfo;Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public requestRecommendWhenOpenFolder(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 424
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    const-string v1, "RecommendController"

    if-nez v0, :cond_0

    const-string p0, "Don\'t request, folder recommend switch off"

    .line 425
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/util/NetWorkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isPremiumPhone()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "folder open and try to request recommend list"

    .line 430
    invoke-static {v1, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->onFolderShowRecommends()V

    goto :goto_0

    :cond_1
    const-string p0, "Don\'t request, is premium phone"

    .line 433
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->isPremiumPhone()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "network not connected, try to show old recommendData"

    .line 437
    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->showOldRecommendData(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    :cond_3
    const-string p0, "Don\'t request, network not connected and is premium phone"

    .line 440
    invoke-static {v1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requestRecommendWithCheck()V
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->obtainRequestMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendImmediately(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 359
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCNCloudDataCacheEndTime(J)V
    .locals 0

    .line 390
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataCacheEndTime:J

    return-void
.end method

.method public setCNCloudDataExpireEndTime(J)V
    .locals 0

    .line 402
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;->mCNCloudDataExpireEndTime:J

    return-void
.end method

.method public trackViewEvent(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V
    .locals 1

    .line 81
    new-instance v0, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/commercial/recommend/cn/CNRecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;I)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
