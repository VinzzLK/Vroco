.class public Lcom/miui/home/launcher/InternationalGlobalSearchUtil;
.super Ljava/lang/Object;
.source "InternationalGlobalSearchUtil.java"


# static fields
.field private static META_SUPPORT_CONTENT_CENTER_ENABLE:Ljava/lang/String; = "support_content_center"

.field private static canPullDownToGlobalSearch:Z = false

.field private static isBrowserSupportContentCenter:Z = false

.field private static isInstalledMiBrowser:Z = false

.field private static isMinusScreenSupportGlobalSearch:Z = false

.field private static isOldUserPullUpToSearch:Z = false

.field private static isPullDownGestureGlobalSearch:Z = false

.field public static sGlobalBrowserPkg:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$OlWFCYZAVl2kLv_4baJkFIts-S0(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->lambda$openContentCenterBySlideUp$0(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static canPullDownToGlobalSearch()Z
    .locals 1

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 227
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkSupportGlobalSearch(Landroid/content/Context;)V

    .line 228
    sget-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->canPullDownToGlobalSearch:Z

    return v0
.end method

.method private static checkMiBrowserInstalledAndVersion()V
    .locals 7

    const-string v0, "com.android.browser"

    const-string v1, "com.mi.globalbrowser"

    const-string v2, ""

    .line 293
    sput-object v2, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->sGlobalBrowserPkg:Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    const/4 v3, 0x0

    .line 295
    sput-boolean v3, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isInstalledMiBrowser:Z

    .line 296
    sput-boolean v3, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isBrowserSupportContentCenter:Z

    const/4 v4, 0x1

    const/16 v5, 0x80

    .line 299
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 300
    invoke-virtual {v6, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 302
    sput-object v1, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->sGlobalBrowserPkg:Ljava/lang/String;

    .line 303
    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 304
    sput-boolean v4, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isInstalledMiBrowser:Z

    .line 305
    sget-object v6, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->META_SUPPORT_CONTENT_CENTER_ENABLE:Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isBrowserSupportContentCenter:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :catch_0
    :cond_0
    sget-boolean v1, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isBrowserSupportContentCenter:Z

    if-nez v1, :cond_2

    .line 312
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 313
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 316
    sput-boolean v4, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isInstalledMiBrowser:Z

    .line 317
    sget-object v2, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->META_SUPPORT_CONTENT_CENTER_ENABLE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isBrowserSupportContentCenter:Z

    .line 319
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->sGlobalBrowserPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    sput-object v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->sGlobalBrowserPkg:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method private static checkMinusScreenSupportGlobalSearch(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 277
    sput-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isMinusScreenSupportGlobalSearch:Z

    return-void

    .line 280
    :cond_0
    sput-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isMinusScreenSupportGlobalSearch:Z

    .line 282
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.mi.globalminusscreen"

    const/16 v2, 0x80

    .line 283
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 284
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string/jumbo v1, "support_global_search"

    .line 285
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isMinusScreenSupportGlobalSearch:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    sput-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isMinusScreenSupportGlobalSearch:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkSupportGlobalSearch(Landroid/content/Context;)V
    .locals 0

    .line 215
    invoke-static {p0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkMinusScreenSupportGlobalSearch(Landroid/content/Context;)V

    .line 216
    sget-boolean p0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isMinusScreenSupportGlobalSearch:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showPullDownInSettings()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->canPullDownToGlobalSearch:Z

    return-void
.end method

.method private static getLastLauncherVersionCode()I
    .locals 3

    .line 472
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_last_launcher_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSlideUpSettingState()I
    .locals 3

    .line 249
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_swipe_up_setting_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init()V
    .locals 3

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->getLastLauncherVersionCode()I

    move-result v2

    if-eqz v1, :cond_2

    if-eq v2, v1, :cond_2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 64
    invoke-static {v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setOldUserPullUpToSearch(Z)V

    .line 66
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->initSlideUpDownGestureSetting()V

    .line 67
    invoke-static {v1}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->saveLastLauncherVersionCode(I)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkSupportGlobalSearch(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkMiBrowserInstalledAndVersion()V

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->updatePullDownGestureGlobalSearch()V

    :goto_0
    return-void
.end method

.method public static initSlideUpDownGestureSetting()V
    .locals 15

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkMiBrowserInstalledAndVersion()V

    .line 81
    invoke-static {v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkMinusScreenSupportGlobalSearch(Landroid/content/Context;)V

    .line 82
    sget-boolean v1, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isMinusScreenSupportGlobalSearch:Z

    const-string v2, "ro.miui.region"

    const-string v3, "gb"

    .line 83
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isIndiaRom()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 85
    sget-boolean v6, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isBrowserSupportContentCenter:Z

    if-eqz v6, :cond_3

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v4

    .line 86
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isFirstSetGlobalSetting()Z

    move-result v7

    const-string v8, "notification_bar"

    const-string v9, "launcher_pulldown_gesture"

    const-string v10, "launcher_slideup_gesture"

    const-string v11, "no_action"

    if-eqz v7, :cond_4

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v12

    invoke-static {v12, v10, v11}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v12

    invoke-static {v12, v9, v8}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    .line 97
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchEnable(Landroid/content/Context;)Z

    move-result v6

    const-string v12, "ro.com.miui.rsa.feature"

    const-string v13, ""

    .line 98
    invoke-static {v12, v13}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "tier3"

    .line 99
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_1

    :cond_5
    move v12, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v12, v5

    :goto_2
    const-string v13, "content_center"

    if-eqz v6, :cond_9

    .line 102
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getGlobalSwipeUpPackage(Landroid/content/Context;)I

    move-result v6

    .line 103
    sget-boolean v14, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isOldUserPullUpToSearch:Z

    if-eqz v14, :cond_7

    if-nez v6, :cond_8

    const-string v6, "global_search"

    move-object v11, v6

    goto :goto_3

    :cond_7
    if-eqz v12, :cond_8

    goto :goto_3

    :cond_8
    move-object v11, v13

    .line 115
    :cond_9
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v6

    invoke-static {v6, v10, v11}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "tr"

    .line 120
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "id"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 121
    :cond_a
    sget-boolean v2, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isOldUserPullUpToSearch:Z

    if-eqz v2, :cond_b

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setNeedShowSwipeUpDialog()V

    .line 126
    :cond_b
    invoke-static {v5}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setSlideUpSettingState(I)V

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setNeedShowSwipeDownDialog()V

    if-eqz v12, :cond_c

    goto :goto_4

    :cond_c
    const-string v8, "pull_down_global_search"

    .line 131
    :goto_4
    invoke-static {v0, v9, v8}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v5}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setShowPullDownInSettings(Z)V

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    const-string v6, "key_is_first_set_global_search"

    invoke-static {v2, v6, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_d
    if-nez v7, :cond_10

    if-eqz v3, :cond_e

    if-eqz v1, :cond_f

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isShowSlideUpInSettings()Z

    move-result v2

    if-nez v2, :cond_f

    .line 141
    invoke-static {v5}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setSlideUpSettingState(I)V

    goto :goto_5

    .line 144
    :cond_e
    sget-boolean v2, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isBrowserSupportContentCenter:Z

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isShowSlideUpInSettings()Z

    move-result v2

    if-nez v2, :cond_f

    .line 145
    invoke-static {v5}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setSlideUpSettingState(I)V

    :cond_f
    :goto_5
    if-eqz v1, :cond_10

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showPullDownInSettings()Z

    move-result v1

    if-nez v1, :cond_10

    .line 150
    invoke-static {v5}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setShowPullDownInSettings(Z)V

    .line 153
    :cond_10
    invoke-static {v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkSupportGlobalSearch(Landroid/content/Context;)V

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->updatePullDownGestureGlobalSearch()V

    return-void
.end method

.method private static isFirstSetGlobalSetting()Z
    .locals 3

    .line 237
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_is_first_set_global_search"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isIndiaRom()Z
    .locals 2

    const-string v0, "ro.miui.build.region"

    const-string v1, "global"

    .line 467
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "in"

    .line 468
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPullDownGestureGlobalSearch()Z
    .locals 1

    .line 211
    sget-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isPullDownGestureGlobalSearch:Z

    return v0
.end method

.method public static isShowSlideUpInSettings()Z
    .locals 2

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->getSlideUpSettingState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportPullDownSearch()Z
    .locals 1

    .line 199
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$openContentCenterBySlideUp$0(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    const-string v0, "context"

    .line 376
    invoke-static {p0, v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->openMiBrowser(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z

    return-void
.end method

.method public static needShowSwipeDownDialog()Z
    .locals 3

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_pull_down_guide_tips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static needShowSwipeUpDialog()Z
    .locals 3

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_swipe_up_guide_tips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private static openContentCenterByMinusScreen(Lcom/miui/home/launcher/Launcher;)Z
    .locals 4

    const-string/jumbo v0, "widget_assistant://com.mi.globalminusscreen/page/news"

    .line 403
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 404
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "from"

    const-string v3, "launcher"

    .line 405
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "target"

    const-string v3, "content"

    .line 406
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static openContentCenterBySlideUp(Lcom/miui/home/launcher/Launcher;)Z
    .locals 4

    .line 355
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkMiBrowserInstalledAndVersion()V

    .line 356
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkMinusScreenSupportGlobalSearch(Landroid/content/Context;)V

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showSlideUpCheckboxSetting()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 359
    sget-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isInstalledMiBrowser:Z

    if-eqz v0, :cond_4

    const-string v0, "search"

    .line 360
    invoke-static {p0, v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->openMiBrowser(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z

    return v2

    .line 363
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showSlideUpListSetting()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "launcher_slideup_gesture"

    const-string v3, "no_action"

    .line 364
    invoke-static {p0, v0, v3}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 368
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isIndiaRom()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    sget-boolean v2, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isMinusScreenSupportGlobalSearch:Z

    if-eqz v2, :cond_4

    const-string v2, "content_center"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    invoke-static {p0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->openContentCenterByMinusScreen(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0

    .line 373
    :cond_2
    sget-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isInstalledMiBrowser:Z

    if-eqz v0, :cond_4

    .line 374
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->needShowSwipeUpDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/InternationalGlobalSearchUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showSlideToContentTips(Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;)V

    .line 378
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setSwipeUpDialogShowed()V

    return v2

    :cond_3
    const-string v0, "context"

    .line 381
    invoke-static {p0, v0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->openMiBrowser(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z

    return v2

    :cond_4
    return v1
.end method

.method public static openGlobalSearch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 3

    .line 335
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.miui.search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.mi.globalminusscreen"

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "launcher"

    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 339
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "InternationalGlobalSearchUtil"

    const-string p1, "Global search activity not found"

    .line 345
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static openMiBrowser(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z
    .locals 3

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.browser_search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    sget-object v1, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->sGlobalBrowserPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "launcher"

    .line 392
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "target"

    .line 393
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 394
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    .line 397
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    return p0
.end method

.method private static saveLastLauncherVersionCode(I)V
    .locals 2

    .line 477
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_last_launcher_version"

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static setNeedShowSwipeDownDialog()V
    .locals 3

    .line 191
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_pull_down_guide_tips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static setNeedShowSwipeUpDialog()V
    .locals 3

    .line 183
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_swipe_up_guide_tips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setOldUserPullUpToSearch(Z)V
    .locals 0

    .line 485
    sput-boolean p0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isOldUserPullUpToSearch:Z

    return-void
.end method

.method private static setShowPullDownInSettings(Z)V
    .locals 2

    .line 271
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_pull_down_setting_state"

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setSlideUpSettingState(I)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_swipe_up_setting_state"

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSwipeDownDialogShowed()V
    .locals 3

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_pull_down_guide_tips"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSwipeUpDialogShowed()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_swipe_up_guide_tips"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showPullDownInSettings()Z
    .locals 3

    .line 266
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_pull_down_setting_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showSlideUpCheckboxSetting()Z
    .locals 1

    .line 258
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->getSlideUpSettingState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showSlideUpListSetting()Z
    .locals 2

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->getSlideUpSettingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static updatePullDownGestureGlobalSearch()V
    .locals 3

    .line 205
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "launcher_pulldown_gesture"

    const-string v2, "notification_bar"

    invoke-static {v0, v1, v2}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pull_down_global_search"

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isPullDownGestureGlobalSearch:Z

    return-void
.end method

.method public static updateSettings(Ljava/lang/String;)V
    .locals 9

    const-string v0, "com.mi.globalbrowser"

    .line 414
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.mi.globalminusscreen"

    const-string v3, "com.android.browser"

    if-nez v1, :cond_0

    .line 415
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 418
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkMiBrowserInstalledAndVersion()V

    .line 419
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 422
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 425
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 428
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isIndiaRom()Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, "no_action"

    const-string v7, ""

    const-string v8, "launcher_slideup_gesture"

    if-nez v4, :cond_7

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 432
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showSlideUpCheckboxSetting()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isShowSlideUpInSettings()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 435
    :cond_4
    invoke-static {v1, v8, v7}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 436
    sget-boolean v0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isBrowserSupportContentCenter:Z

    if-nez v0, :cond_a

    const-string v0, "content_center"

    .line 437
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 438
    invoke-static {v1, v8, v6}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_5
    invoke-static {v5}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setSlideUpSettingState(I)V

    goto :goto_1

    :cond_6
    :goto_0
    return-void

    .line 442
    :cond_7
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 443
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->showPullDownInSettings()Z

    move-result p0

    if-nez p0, :cond_8

    return-void

    .line 446
    :cond_8
    invoke-static {v1}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->checkSupportGlobalSearch(Landroid/content/Context;)V

    .line 448
    sget-boolean p0, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isMinusScreenSupportGlobalSearch:Z

    if-nez p0, :cond_a

    const-string p0, "launcher_pulldown_gesture"

    .line 450
    invoke-static {v1, p0, v7}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pull_down_global_search"

    .line 451
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "notification_bar"

    .line 452
    invoke-static {v1, p0, v0}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 p0, 0x0

    .line 454
    invoke-static {p0}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setShowPullDownInSettings(Z)V

    .line 457
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->isIndiaRom()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 458
    invoke-static {v1, v8, v6}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {v5}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->setSlideUpSettingState(I)V

    :cond_a
    :goto_1
    return-void
.end method
