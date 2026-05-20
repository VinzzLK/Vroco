.class public Lcom/miui/home/recents/cts/CircleToSearchHelper;
.super Ljava/lang/Object;
.source "CircleToSearchHelper.java"


# direct methods
.method public static hasCircleToSearchFeature(Landroid/content/Context;)Z
    .locals 3

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.software.contextualsearch"

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.google.android.feature.CONTEXTUAL_SEARCH"

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has android.software.contextualsearch :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",has com.google.android.feature.CONTEXTUAL_SEARCH :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CircleToSearchHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static invokeCircleToSearch(Landroid/content/Context;II)Z
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->isSupportInvokeCircleToSearch(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/cts/OmniHelper;->notifyToStartCtS(I)Z

    move-result p0

    return p0
.end method

.method public static isNeedReadSettingsCircleToSearchSwitch()Z
    .locals 1

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isSettingsCircleToSearchSwitchDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isInputSupportNavShortcutSettings()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSceneForbid(Landroid/content/Context;I)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x50000004

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 71
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLockScreen()Z

    move-result v2

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isControlPanelExpanded()Z

    move-result v3

    .line 73
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result v4

    .line 74
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result v5

    .line 75
    invoke-static {p0}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->isThirdHome(Landroid/content/Context;)Z

    move-result p0

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeOmni isNotificationExpanded:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",lockScreen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",ctrlPanelEpd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",splitMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",halfSplitMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isThirdHome:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CircleToSearchHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method private static isSettingsCircleToSearchSwitchEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "long_press_home_key_no_ui"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CircleToSearchHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "launch_google_search"

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportInvokeCircleToSearch(Landroid/content/Context;I)Z
    .locals 3

    .line 46
    invoke-static {p0}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->hasCircleToSearchFeature(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "CircleToSearchHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "circle to search is not available"

    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 51
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->isNeedReadSettingsCircleToSearchSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->isSettingsCircleToSearchSwitchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "CircleToSearch switch is not enabled"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 56
    :cond_1
    invoke-static {p0, p1}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->isSceneForbid(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isThirdHome(Landroid/content/Context;)Z
    .locals 1

    .line 107
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
