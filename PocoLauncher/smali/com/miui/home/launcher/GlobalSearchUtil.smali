.class public Lcom/miui/home/launcher/GlobalSearchUtil;
.super Ljava/lang/Object;
.source "GlobalSearchUtil.java"


# static fields
.field private static sIsNewUser:Z = false

.field private static sIsPullDownGestureGlobalSearch:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static init()V
    .locals 12

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->updateslideUpGestureGlobalSearch()V

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->isSupportPullDownSearch()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_has_set_default_pull_to_search"

    .line 32
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v1

    if-nez v1, :cond_3

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u51c6\u5907\u6267\u884c\u5f3a\u5236\u903b\u8f91sIsNewUser\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/miui/home/launcher/GlobalSearchUtil;->sIsNewUser:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GlobalSearchUtil"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-boolean v4, Lcom/miui/home/launcher/GlobalSearchUtil;->sIsNewUser:Z

    const-string v5, "pull_down_global_search"

    const-string v6, "global_search"

    const-string v7, "launcher_pulldown_gesture"

    const/4 v8, 0x1

    if-nez v4, :cond_1

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v4

    xor-int/2addr v4, v8

    const-string v9, ""

    .line 40
    invoke-static {v0, v7, v9}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 41
    invoke-static {}, Lcom/miui/home/settings/LauncherGestureController;->defaultPullDownIsNotification()Z

    move-result v10

    .line 42
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v8

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u5347\u7ea7\u7528\u6237\u662f\u5426\u53ef\u4ee5\u88ab\u5f3a\u5207 notElderlyMode:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " notSetPullDownValue:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " defaultNotification:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " notSlideUpSearch:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    if-eqz v1, :cond_2

    .line 46
    invoke-static {v0, v7, v5}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v8}, Lcom/miui/home/launcher/GlobalSearchUtil;->setShowPullToSearchTips(Z)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    invoke-static {v0, v7, v5}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\u65b0\u7528\u6237\u88ab\u5f3a\u5207"

    .line 54
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    :goto_0
    invoke-static {v0, v2, v8}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 61
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->updatePullDownGestureGlobalSearch()V

    return-void
.end method

.method public static isPullDownGestureGlobalSearch()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/miui/home/launcher/GlobalSearchUtil;->sIsPullDownGestureGlobalSearch:Z

    return v0
.end method

.method public static isShowPullToSearchTips()Z
    .locals 3

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_show_pull_to_search_tips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportPullDownSearch()Z
    .locals 1

    .line 75
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

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

.method public static setIsLauncherNewUser(Z)V
    .locals 1

    .line 104
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    sput-boolean p0, Lcom/miui/home/launcher/GlobalSearchUtil;->sIsNewUser:Z

    return-void
.end method

.method public static setShowPullToSearchTips(Z)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "key_show_pull_to_search_tips"

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static updatePullDownGestureGlobalSearch()V
    .locals 2

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pull_down_global_search"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/GlobalSearchUtil;->sIsPullDownGestureGlobalSearch:Z

    return-void
.end method

.method public static updateslideUpGestureGlobalSearch()V
    .locals 4

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launcher_slideup_gesture"

    .line 89
    invoke-static {v0, v2, v1}, Lcom/miui/home/settings/LauncherGestureController;->getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "global_search"

    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GlobalSearchUtil"

    const-string/jumbo v3, "updateslideUpGestureGlobalSearch: KEY_GLOBAL_SEARCH"

    .line 93
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "no_action"

    .line 94
    invoke-static {v0, v2, v1}, Lcom/miui/home/settings/LauncherGestureController;->putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
