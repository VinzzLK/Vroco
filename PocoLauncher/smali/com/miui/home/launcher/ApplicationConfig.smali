.class public Lcom/miui/home/launcher/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static final PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

.field private static final WORLD_CIRCULATE_URI:Landroid/net/Uri;

.field public static isSupportHomeBlur:Z

.field private static sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private static sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private static sIsProtectedDataAppAvailable:Z

.field private static volatile sIsSettingsCircleToSearchSwitchDeleted:Z

.field private static sIsSupportGalleryGesture:Z

.field public static sIsSupportPushAppEnterWorldCirculate:Z

.field private static sIsSupportRecentsMenuEnterWorldCirculate:Z

.field private static sIsSupportRecentsMenuEnterWorldCirculateForMiLink:Z

.field public static sIsSupportRelayInRecents:Z

.field private static sIsSupportWakeupXiaoaiByGestureLine:Z

.field private static volatile sIsVoiceAssistSupport:Z

.field private static sNewGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private static sSearchApplicationInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public static synthetic $r8$lambda$4zJYIjz70_ues3HRCYluRB34F6Q()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->lambda$checkAndUpdateGalleryGesture$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$73HxH7y1nFDvWu8Jkcvw_uDJNds()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->lambda$checkVoiceAssistSupportHomeShortcut$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Cu_liNxbUvCs_lXslQ0natGZNR8()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->lambda$checkAndUpdateWorldCirculateView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Genc-5rjyDa-bxdLST05EfrlRZs()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->lambda$checkAndUpdateWakeupXiaoaiByGestureLineFlg$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2Kma4ffMSGaFO3DO-FOKGfA1TQ()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->lambda$checkAndUpdateSettingsSwitchDeleted$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$uWqTLVse4nr0ShoH196jbr91fyY()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->lambda$checkAndUpdateMirror$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.milink.service"

    const-string v2, "com.miui.circulate.world.AppCirculateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

    const-string v0, "content://com.milink.service.circulate"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->WORLD_CIRCULATE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsVoiceAssistSupport:Z

    const/4 v1, 0x1

    .line 52
    sput-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsProtectedDataAppAvailable:Z

    .line 54
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportPushAppEnterWorldCirculate:Z

    .line 55
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    .line 56
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRecentsMenuEnterWorldCirculate:Z

    .line 57
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRecentsMenuEnterWorldCirculateForMiLink:Z

    .line 58
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportWakeupXiaoaiByGestureLine:Z

    .line 60
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportGalleryGesture:Z

    .line 62
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->isSupportHomeBlur:Z

    return-void
.end method

.method private static canTaskMenuEnterWorldCirculate()Z
    .locals 5

    .line 243
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/ApplicationConfig;->WORLD_CIRCULATE_URI:Landroid/net/Uri;

    const-string v2, "check_permission"

    const-string v3, "recentlist_app_task"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    .line 244
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationConfig_"

    const-string v2, "canTaskMenuEnterWorldCirculate"

    .line 246
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static canTaskPushEnterWorldCirculate()Z
    .locals 5

    .line 229
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/ApplicationConfig;->WORLD_CIRCULATE_URI:Landroid/net/Uri;

    const-string v2, "check_permission"

    const-string v3, "recentlist_app"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    .line 230
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationConfig_"

    const-string v2, "canTaskPushEnterWorldCirculate"

    .line 232
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationConfig;->getWorldCirculateMeta(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appcirculate_support_recentlist"

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static checkAndUpdateGalleryGesture()V
    .locals 2

    .line 385
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static checkAndUpdateMirror(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.xiaomi.mirror"

    .line 270
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 271
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 272
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static checkAndUpdateSettingsSwitchDeleted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.android.settings"

    .line 323
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 324
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 325
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 326
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda4;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static checkAndUpdateWakeupXiaoaiByGestureLineFlg(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.voiceassist"

    .line 297
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 298
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 299
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 300
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static checkAndUpdateWorldCirculateView(Ljava/lang/String;)V
    .locals 2

    .line 252
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p0, "ApplicationConfig_checkAndUpdateWorldCirculateView"

    const-string v0, "no in main space"

    .line 253
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_13:Z

    if-eqz v0, :cond_1

    const-string v0, "com.milink.service"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 257
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 258
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 259
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static checkVersionCode()Z
    .locals 2

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "com.miui.personalassistant"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0xcb3f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkVoiceAssistSupportHomeShortcut(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.voiceassist"

    .line 355
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 356
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 357
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/util/UiThreadHelper;->getHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/ApplicationConfig$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 104
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getSupportHomeBlur()Z
    .locals 2

    .line 149
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "supportHomeBlur"

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getWorldCirculateMeta(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 4

    .line 212
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v2, 0xc0080

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ComponentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ApplicationConfig_getWorldCirculateMeta"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_0

    .line 221
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 65
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    const-string v0, "com.mi.globalminusscreen"

    .line 66
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sNewGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const-string v0, "com.miui.newhome"

    .line 68
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v0, "com.miui.personalassistant"

    .line 69
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 70
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->initSearchApplicationInfo(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->setSupportHomeBlur()V

    .line 75
    :goto_0
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5:Z

    xor-int/lit8 p0, p0, 0x1

    sput-boolean p0, Lcom/miui/home/launcher/ApplicationConfig;->sIsProtectedDataAppAvailable:Z

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/NotesGestureCompat;->updateNotesVersionCode(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateGalleryGesture()V

    const-string p0, "com.xiaomi.mirror"

    .line 79
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateMirror(Ljava/lang/String;)V

    const-string p0, "com.milink.service"

    .line 80
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateWorldCirculateView(Ljava/lang/String;)V

    const-string p0, "com.miui.voiceassist"

    .line 81
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateWakeupXiaoaiByGestureLineFlg(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 82
    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateSettingsSwitchDeleted(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->checkVoiceAssistSupportHomeShortcut(Ljava/lang/String;)V

    return-void
.end method

.method public static initFeed(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.miui.newhome"

    const/16 v1, 0x80

    .line 100
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method private static initSearchApplicationInfo(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.android.quicksearchbox"

    const/16 v1, 0x80

    .line 173
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sSearchApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public static isAssistantInstalled()Z
    .locals 1

    .line 136
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAssistantSupportOverlay()Z
    .locals 2

    .line 140
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "supportOverlay"

    .line 142
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedInstalled()Z
    .locals 1

    .line 108
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedModuleLoaded()Z
    .locals 2

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    const-string v1, "com.miui.newhome"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->isModuleLoadSuccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFeedSupport()Z
    .locals 1

    .line 112
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedSupportDecouple()Z
    .locals 2

    .line 116
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "supportSimpleDecouple"

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lmiui/os/Build;->TOTAL_RAM:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedSupportNewEffect()Z
    .locals 2

    .line 130
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "supportNewEffectForOS2"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedSupportOverlay()Z
    .locals 2

    .line 123
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "supportOverlay"

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNewGlobalAssistantInstalled()Z
    .locals 3

    .line 198
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sNewGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sNewGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "supportPOCOHome"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isProtectedDataAppAvailable()Z
    .locals 1

    .line 208
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsProtectedDataAppAvailable:Z

    return v0
.end method

.method public static isSearchInstalled()Z
    .locals 1

    .line 177
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sSearchApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSearchSupportOverlay(Landroid/content/Context;)Z
    .locals 2

    .line 186
    invoke-static {p0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIsSupportOpenFromHomeDownOverlay(Landroid/content/Context;)Z

    move-result p0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportOpenFromHomeDownOverlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Search"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sSearchApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "supportOverlay"

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSettingsCircleToSearchSwitchDeleted()Z
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSettingsSwitchDeleted :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSettingsCircleToSearchSwitchDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationConfig_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSettingsCircleToSearchSwitchDeleted:Z

    return v0
.end method

.method public static isSupportGalleryGesture()Z
    .locals 1

    .line 96
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportGalleryGesture:Z

    return v0
.end method

.method public static isSupportRecentsMenuEnterWorldCirculate()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRecentsMenuEnterWorldCirculate:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRecentsMenuEnterWorldCirculateForMiLink:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportWakeupXiaoaiByGestureLine()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportWakeupXiaoaiByGestureLine:Z

    return v0
.end method

.method public static isVoiceAssistSupportHomeShortcutEntry()Z
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoiceAssistSupportHomeShortcutEntry :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsVoiceAssistSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationConfig_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsVoiceAssistSupport:Z

    return v0
.end method

.method public static isWallpaperSupportBackup()Z
    .locals 3

    .line 407
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.miwallpaper"

    const/16 v2, 0x80

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 410
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "support_backup_default_lock_wallpaper"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$checkAndUpdateGalleryGesture$5()V
    .locals 3

    .line 389
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.gallery"

    const/16 v2, 0x80

    .line 390
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 395
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "miuiHomeGestureSlideSupport"

    .line 397
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportGalleryGesture:Z

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMiuiHomeGestureSlideSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportGalleryGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationConfig_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static synthetic lambda$checkAndUpdateMirror$1()V
    .locals 4

    .line 275
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.mirror"

    const/16 v2, 0x80

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 281
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "com.xiaomi.mirror.recent_relay_app"

    const/4 v2, 0x0

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    sput-boolean v3, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRelayInRecents:Z

    const-string v3, "com.xiaomi.mirror.recent_drag_app"

    .line 285
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRecentsMenuEnterWorldCirculate:Z

    .line 286
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isSupportRecentsMenuEnterWorldCirculate()Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportMirrorParams recent_relay_app = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " recent_drag_app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRecentsMenuEnterWorldCirculate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationConfig_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$checkAndUpdateSettingsSwitchDeleted$3()V
    .locals 3

    .line 329
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    const/16 v2, 0x80

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 335
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "home.supportCircleToSearchSwitch"

    const/4 v2, 0x0

    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/miui/home/launcher/ApplicationConfig;->sIsSettingsCircleToSearchSwitchDeleted:Z

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndUpdateSettingsSwitchGone isSettingsSwitchGone :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSettingsCircleToSearchSwitchDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationConfig_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$checkAndUpdateWakeupXiaoaiByGestureLineFlg$2()V
    .locals 3

    .line 303
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.voiceassist"

    const/16 v2, 0x80

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 309
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v2, "xiaoai.supportGestureLineWakeUp"

    .line 311
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportWakeupXiaoaiByGestureLine:Z

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndUpdateWakeupXiaoaiByGestureLineFlg, checkAndUpdateWakeupXiaoaiByGestureLineFlg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportWakeupXiaoaiByGestureLine:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationConfig_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static synthetic lambda$checkAndUpdateWorldCirculateView$0()V
    .locals 3

    .line 260
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->canTaskPushEnterWorldCirculate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportPushAppEnterWorldCirculate:Z

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->canTaskMenuEnterWorldCirculate()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRecentsMenuEnterWorldCirculateForMiLink:Z

    .line 262
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isSupportRecentsMenuEnterWorldCirculate()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/miui/home/recents/messages/WorldCirculateChangedEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sIsSupportPushAppEnterWorldCirculate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportPushAppEnterWorldCirculate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sIsSupportRecentsMenuEnterWorldCirculateForMiLink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportRecentsMenuEnterWorldCirculateForMiLink:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationConfig_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$checkVoiceAssistSupportHomeShortcut$4()V
    .locals 3

    .line 361
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.voiceassist"

    const/16 v2, 0x80

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 367
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "ShortcutKeyWakeUpVersion"

    const/4 v2, 0x0

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    sput-boolean v2, Lcom/miui/home/launcher/ApplicationConfig;->sIsVoiceAssistSupport:Z

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVoiceAssistSupportVersion isVoiceAssistSupport :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/miui/home/launcher/ApplicationConfig;->sIsVoiceAssistSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationConfig_"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static setSupportHomeBlur()V
    .locals 1

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->getSupportHomeBlur()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->checkVersionCode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->isSupportHomeBlur:Z

    return-void
.end method

.method public static updateSupportHomeBlur()V
    .locals 3

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "com.miui.personalassistant"

    const/16 v2, 0x80

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->setSupportHomeBlur()V

    return-void
.end method
