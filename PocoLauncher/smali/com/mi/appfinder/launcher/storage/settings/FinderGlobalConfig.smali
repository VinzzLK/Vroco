.class public Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;
.super Ljava/lang/Object;
.source "FinderGlobalConfig.java"


# static fields
.field public static final K_BRANCH_PRIVACY_RECORD:Ljava/lang/String; = "branch_privacy_record"

.field public static final K_SETTING_FINDER_QUERY:Ljava/lang/String; = "setting_finder_query"

.field public static final K_SETTING_QUICK_SEARCH:Ljava/lang/String; = "setting_quick_search"

.field public static final K_SETTING_RECOMMEND_APP:Ljava/lang/String; = "com.miui.home.setting_recommend_app"

.field private static final PREF_FORMAT:Ljava/lang/String; = "com.mi.finder.ui.home.%s"

.field private static final TAG:Ljava/lang/String; = "HomeFinderSettings"

.field private static final sResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->sResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "com.mi.finder.ui.home.%s"

    .line 24
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingRecommendAppEnable()I
    .locals 3

    .line 31
    sget-object v0, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->sResolver:Landroid/content/ContentResolver;

    const-string v1, "com.miui.home.setting_recommend_app"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isSettingFinderQueryMode()Z
    .locals 5

    .line 41
    sget-object v0, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "setting_finder_query"

    invoke-static {v1}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    .line 44
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v2, "branch_switch_on"

    invoke-interface {v0, v2}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "HomeFinderSettings"

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46
    invoke-static {v0}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->setSettingFinderQueryMode(Z)V

    .line 47
    invoke-static {v0}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->setSettingBranchPrivacyRecord(Z)V

    .line 49
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->remove(Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HomeBranch:migrate:BSO:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderSupport()Z

    move-result v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BSO: non-migrate, DEFAULT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isSettingQuickSearchEnable()Z
    .locals 5

    .line 69
    sget-object v0, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "setting_quick_search"

    invoke-static {v1}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v2, :cond_1

    .line 72
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    const-string v2, "focus_search_on_enter_drawer"

    invoke-interface {v0, v2}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "HomeFinderSettings"

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    invoke-static {v0}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->setSettingQuickSearchEnable(Z)V

    .line 76
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/DeprecatedPreference;->getInstance()Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/mi/appfinder/launcher/storage/preference/LocalConfig;->remove(Ljava/lang/String;)V

    const-string v2, "HomeBranch:migrate:FSED:"

    .line 78
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderSupport()Z

    move-result v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FSED: non-migrate, DEFAULT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static setSettingBranchPrivacyRecord(Z)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFinderSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->sResolver:Landroid/content/ContentResolver;

    const-string v1, "branch_privacy_record"

    invoke-static {v1}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSettingFinderQueryMode(Z)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFinderSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "setting_finder_query"

    invoke-static {v1}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSettingQuickSearchEnable(Z)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set quick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFinderSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "setting_quick_search"

    invoke-static {v1}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSettingRecommendAppEnable(Z)V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set recommend: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFinderSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v0, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->sResolver:Landroid/content/ContentResolver;

    const-string v1, "com.miui.home.setting_recommend_app"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
