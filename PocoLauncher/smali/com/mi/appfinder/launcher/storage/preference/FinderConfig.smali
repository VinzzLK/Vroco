.class public Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;
.super Ljava/lang/Object;
.source "FinderConfig.java"


# static fields
.field private static final SP_FINDER_RECOMMEND_MIGRATE:Ljava/lang/String; = "finder_recommend_migrate"

.field private static final SP_FINDER_UI_ALIVE_SERVICE:Ljava/lang/String; = "finder_ui_alive_service"

.field private static final SP_FINDER_UI_ENABLE:Ljava/lang/String; = "finder_ui_version_enable"

.field private static final SP_PRIVACY_TIMESTAMP_REPORTED:Ljava/lang/String; = "privacy_timestamp_reported"

.field private static final TAG:Ljava/lang/String; = "HomeFinderPreferences"

.field private static volatile mFinderUiAliveServiceEnable:I = -0x1

.field private static volatile mFinderUiVersionEnable:I = -0x1

.field private static volatile mGlobalSearchEnable:I = -0x1

.field private static volatile mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;
    .locals 4

    .line 23
    sget-object v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;

    const-string v2, "FinderConfig"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mi/appfinder/launcher/storage/preference/PreferencesLocalConfig;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mInstance:Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    return-object v0
.end method

.method public static isFinderUIConfigAliveServiceEnable()Z
    .locals 3

    .line 51
    sget v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mFinderUiAliveServiceEnable:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 52
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v2, "finder_ui_alive_service"

    invoke-interface {v0, v2, v1}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mFinderUiAliveServiceEnable:I

    .line 54
    :cond_0
    sget v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mFinderUiAliveServiceEnable:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isFinderUIConfigSupport()Z
    .locals 3

    .line 35
    sget v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mFinderUiVersionEnable:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 36
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v2, "finder_ui_version_enable"

    invoke-interface {v0, v2, v1}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mFinderUiVersionEnable:I

    .line 38
    :cond_0
    sget v0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mFinderUiVersionEnable:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isPrivacyTimestampReported()Z
    .locals 3

    .line 70
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v1, "privacy_timestamp_reported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRecommendAppMigrate()Z
    .locals 3

    .line 62
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v1, "finder_recommend_migrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setFinderUIConfigAliveServiceEnable(Z)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v1, "finder_ui_alive_service"

    invoke-interface {v0, v1, p0}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setFinderUIConfigSupport(ZZ)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fuis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFinderPreferences"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v1, "finder_ui_version_enable"

    invoke-interface {v0, v1, p0}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    .line 45
    sput p0, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->mFinderUiVersionEnable:I

    :cond_0
    return-void
.end method

.method public static setPrivacyTimestampReported(Z)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v1, "privacy_timestamp_reported"

    invoke-interface {v0, v1, p0}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setRecommendAppMigrate(Z)V
    .locals 2

    .line 66
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v1, "finder_recommend_migrate"

    invoke-interface {v0, v1, p0}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
