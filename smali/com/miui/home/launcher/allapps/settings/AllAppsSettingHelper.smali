.class public Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "AllAppsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "allapps"

    .line 28
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->registerOnSharedPreferenceChangeListener()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;
    .locals 1

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper$Holder;->access$100()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBackgroundAlpha()I
    .locals 2

    const-string v0, "background_alpha"

    const/16 v1, 0xff

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result p0

    return p0
.end method

.method public getSavedColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 3

    const-string v0, "color_mode"

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 49
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 51
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    .line 54
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportDarkMode()Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public isAppCategoryEnable()Z
    .locals 2

    const-string v0, "app_category_enable"

    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAutoAddNewAppShortcut()Z
    .locals 2

    .line 95
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "auto_add_app_shortcut"

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isColorAnimEnabled()Z
    .locals 2

    const-string v0, "key_color_group_anim_open"

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isColorSearchEnabled()Z
    .locals 2

    const-string v0, "all_apps_color_filter_switch"

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isLetterFastScrollerEnable()Z
    .locals 2

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "letter_fast_scroller_enable"

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRecommendAppsEnable()Z
    .locals 2

    const-string v0, "recommend_app_enable"

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setAppCategoryEnable(Z)V
    .locals 1

    const-string v0, "app_category_enable"

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAutoAddNewAppShortcut(Z)V
    .locals 1

    const-string v0, "auto_add_app_shortcut"

    .line 99
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBackgroundAlpha(I)V
    .locals 1

    const-string v0, "background_alpha"

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setColorAnimEnabled(Z)V
    .locals 1

    const-string v0, "key_color_group_anim_open"

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setColorMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "color_mode"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorSearchEnabled(Z)V
    .locals 1

    const-string v0, "all_apps_color_filter_switch"

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLetterFastScrollerEnable(Z)V
    .locals 1

    const-string v0, "letter_fast_scroller_enable"

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRecommendAppsEnable(Z)V
    .locals 1

    const-string v0, "recommend_app_enable"

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-static {p1}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->setSettingRecommendAppEnable(Z)V

    return-void
.end method
