.class public Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;
.super Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
.source "CNCloudSettingsInfo.java"


# instance fields
.field private mIsPremiumPhone:Z

.field private mIsShowXOut:Z

.field private mOnlyRequestWhenFolderOpen:Z

.field private mXOutProtectionInMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsShowXOut:Z

    .line 13
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsPremiumPhone:Z

    .line 14
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mOnlyRequestWhenFolderOpen:Z

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mXOutProtectionInMillis:J

    return-void
.end method

.method private setIsShowXOut(Z)V
    .locals 1

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsShowXOut:Z

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsShowXOut="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsShowXOut:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudSettingsInfo"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOnlyRequestWhenFolderOpen(Z)V
    .locals 1

    .line 52
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mOnlyRequestWhenFolderOpen:Z

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mOnlyRequestWhenFolderOpen="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mOnlyRequestWhenFolderOpen:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudSettingsInfo"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setXOutProtectionInMillis(J)V
    .locals 2

    .line 37
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mXOutProtectionInMillis:J

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mXOutProtectionInMillis="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mXOutProtectionInMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudSettingsInfo"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getXOutProtectionInMillis()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mXOutProtectionInMillis:J

    return-wide v0
.end method

.method public isOnlyRequestWhenFolderOpen()Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mOnlyRequestWhenFolderOpen:Z

    return p0
.end method

.method public isPremiumPhone()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsPremiumPhone:Z

    return p0
.end method

.method public isRecommendFolderSwitchOnAsDefault()Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->mIsRecommendGuessYouLikeAdsOn:Z

    return p0
.end method

.method public isRequestWhenClickRefresh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShowXOut()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsShowXOut:Z

    return p0
.end method

.method public setIsPremiumPhone(Z)V
    .locals 1

    .line 77
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsPremiumPhone:Z

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsPremiumPhone="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsPremiumPhone:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudSettingsInfo"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateInfo(Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isCloseAd()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->setRecommendFolderGuessYouLikeAdsOn(Z)V

    .line 27
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->getQueryType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetAdWithOpenFolder"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 26
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->setOnlyRequestWhenFolderOpen(Z)V

    .line 28
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isOpenXout()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->setIsShowXOut(Z)V

    .line 29
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isPremiumPhone()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->setIsPremiumPhone(Z)V

    .line 30
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->getxOutProtectionInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->setXOutProtectionInMillis(J)V

    goto :goto_0

    :cond_0
    const-string p0, "CloudSettingsInfo"

    const-string p1, "cnColudControlInfo is null"

    .line 32
    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
