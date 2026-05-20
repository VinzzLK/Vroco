.class public Lcom/miui/home/launcher/allapps/LauncherModeController;
.super Ljava/lang/Object;
.source "LauncherModeController.java"


# static fields
.field public static final DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

.field public static final DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

.field public static final ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

.field private static sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

.field private static sJeejenBroadcastIntent:Landroid/content/Intent;

.field private static sJeejenBroadcastSend:Z

.field private static sJeejenReceiverInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/miui/home/launcher/allapps/DesktopLauncherMode;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/DesktopLauncherMode;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 33
    new-instance v0, Lcom/miui/home/launcher/allapps/DrawerLauncherMode;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/DrawerLauncherMode;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 34
    new-instance v0, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-void
.end method

.method private static buildJeejenModeIntent()Landroid/content/Intent;
    .locals 4

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.action.DESKTOP_LAUNCH_ELDERLY_MODE"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.misettings"

    const-string v3, "com.xiaomi.easymode.EasyModeReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static closeEditModelWhenModel2ElderlyMan(Z)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    .line 95
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method public static enableAndResetCache()Z
    .locals 2

    .line 46
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->loadCurrentLauncherMode(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 5

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    new-array v0, v4, [Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 53
    sget-object v4, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    aput-object v4, v0, v3

    sget-object v3, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    aput-object v3, v0, v2

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    new-array v0, v4, [Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 55
    sget-object v4, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    aput-object v4, v0, v3

    sget-object v3, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    aput-object v3, v0, v2

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 1

    .line 125
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object v0
.end method

.method public static getJeejenBroadcastIntent()Landroid/content/Intent;
    .locals 1

    .line 183
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenBroadcastIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->buildJeejenModeIntent()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenBroadcastIntent:Landroid/content/Intent;

    .line 186
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenBroadcastIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getJeejenReceiverInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenReceiverInfo:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "LauncherModeController"

    const-string v1, "jeejen broadcast receiver is null"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->queryJeejenReceiverInfo()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isDesktopMode()Z
    .locals 1

    .line 155
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public static isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z
    .locals 1

    .line 72
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDrawerMode()Z
    .locals 1

    .line 151
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public static isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z
    .locals 1

    .line 68
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDrawerMode(Ljava/lang/String;)Z
    .locals 1

    .line 64
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isMode(Ljava/lang/String;Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p0

    return p0
.end method

.method public static isElderlyManMode()Z
    .locals 1

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public static isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z
    .locals 1

    .line 76
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isElderlyManMode(Ljava/lang/String;)Z
    .locals 1

    .line 60
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isMode(Ljava/lang/String;Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p0

    return p0
.end method

.method public static isJeejenBroadcastSend()Z
    .locals 1

    .line 163
    sget-boolean v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenBroadcastSend:Z

    return v0
.end method

.method private static isMode(Ljava/lang/String;Lcom/miui/home/launcher/allapps/LauncherMode;)Z
    .locals 0

    .line 80
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static loadCurrentLauncherMode(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 133
    invoke-static {p0}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 134
    sget-object p0, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0

    .line 135
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->isDrawerModeEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 136
    sget-object p0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0

    .line 138
    :cond_1
    sget-object p0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0
.end method

.method private static onLauncherModeChanged()V
    .locals 3

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->enableAndResetCache()Z

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherMode changed, new mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherModeController"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onLauncherModeChanged()V

    .line 106
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static queryJeejenReceiverInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getJeejenBroadcastIntent()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenBroadcastIntent:Landroid/content/Intent;

    const-string v0, "LauncherModeController"

    const-string/jumbo v1, "start querying receiver..."

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenBroadcastIntent:Landroid/content/Intent;

    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenReceiverInfo:Ljava/util/List;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jeejen broadcast receiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenReceiverInfo:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenReceiverInfo:Ljava/util/List;

    return-object v0
.end method

.method public static setDrawerModeEnable(Landroid/content/Context;Z)V
    .locals 0

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p0

    if-eq p0, p1, :cond_0

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setDrawerModeEnable(Z)V

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->onLauncherModeChanged()V

    :cond_0
    if-eqz p1, :cond_1

    .line 118
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->registerPredictionUpdates()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->unRegisterPredictionUpdates()V

    :goto_0
    return-void
.end method

.method public static setElderlyManModeEnable(Z)V
    .locals 1

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->closeEditModelWhenModel2ElderlyMan(Z)V

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->onLauncherModeChanged()V

    :cond_0
    return-void
.end method

.method public static setJeejenBroadcastSend(Z)V
    .locals 0

    .line 159
    sput-boolean p0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sJeejenBroadcastSend:Z

    return-void
.end method
