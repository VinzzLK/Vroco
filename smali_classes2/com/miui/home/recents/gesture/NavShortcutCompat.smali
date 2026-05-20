.class public final Lcom/miui/home/recents/gesture/NavShortcutCompat;
.super Ljava/lang/Object;
.source "NavShortcutCompat.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/gesture/NavShortcutCompat;

    invoke-direct {v0}, Lcom/miui/home/recents/gesture/NavShortcutCompat;-><init>()V

    sput-object v0, Lcom/miui/home/recents/gesture/NavShortcutCompat;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutCompat;

    const-string v0, "NavShortcutCompat"

    .line 15
    sput-object v0, Lcom/miui/home/recents/gesture/NavShortcutCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCircleToSearchSwitchEnabledInOldVersion()Z
    .locals 3

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "long_press_home_key_no_ui"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    sget-object v0, Lcom/miui/home/recents/gesture/NavShortcutCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCircleToSearchSwitchEnabledByOldVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "none"

    .line 46
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isShowNavShortcutFeature()Z
    .locals 3

    .line 25
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->hasCircleToSearchFeature(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isSettingsCircleToSearchSwitchDeleted()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isInputSupportNavShortcutSettings()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isSettingsCircleToSearchSwitchDeleted()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 31
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isInputSupportNavShortcutSettings()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavShortcutCompat;->isSupportNavShortcutUniqueOnNationalBuild()Z

    move-result v1

    .line 36
    :goto_0
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutCompat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS_INTERNATIONAL_BUILD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "isShowNavShortcutFeature :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isSupportNavShortcutUniqueOnNationalBuild()Z
    .locals 0

    .line 53
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isVoiceAssistSupportHomeShortcutEntry()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 55
    sget-object p0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager;

    invoke-virtual {p0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->isInputSupportNavShortcutSettings()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
