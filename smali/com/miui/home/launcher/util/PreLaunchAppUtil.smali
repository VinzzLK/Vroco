.class public Lcom/miui/home/launcher/util/PreLaunchAppUtil;
.super Ljava/lang/Object;
.source "PreLaunchAppUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static activityManagerService:Ljava/lang/Object;

.field public static final isEnableTouchDown:Z

.field private static preStartProcess:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.prestart.proc"

    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->isEnableTouchDown:Z

    const-string v0, "PreStartUtils"

    .line 20
    sput-object v0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static preLaunchProcess(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 10

    .line 28
    sget-boolean v0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->isEnableTouchDown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29
    sget-object p0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    const-string v0, "preLaunchProcess fail isEnableTouchDown is false"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p0, :cond_1

    .line 33
    sget-object p0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    const-string v0, "preLaunchProcess fail info is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 37
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    sget-object p0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    const-string v0, "preLaunchProcess fail isInNormalEditing"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    sget-object p0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    const-string v0, "preLaunchProcess fail isUninstallDialogShowing"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 48
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->isTalkBackEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    sget-object p0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    const-string v0, "preLaunchProcess fail isTalkBackEnable"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v2, :cond_5

    .line 56
    sget-object v2, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preLaunchProcess fail infoPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " info.itemType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 61
    :cond_5
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p0

    .line 64
    :try_start_0
    sget-object v3, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preLaunchProcess intent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Launcher preStartProcess"

    .line 65
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    const/4 v3, -0x1

    if-ne p0, v3, :cond_6

    goto :goto_0

    .line 70
    :cond_6
    sget-object v3, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->preStartProcess:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    sget-object v3, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->activityManagerService:Ljava/lang/Object;

    if-nez v3, :cond_9

    :cond_7
    const-string v3, "android.app.ActivityManager"

    .line 71
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v7, "getService"

    new-array v8, v1, [Ljava/lang/Class;

    .line 72
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 73
    sget-object v8, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->activityManagerService:Ljava/lang/Object;

    if-nez v8, :cond_8

    new-array v8, v1, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->activityManagerService:Ljava/lang/Object;

    .line 77
    :cond_8
    sget-object v3, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->activityManagerService:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v7, "preStartProcess"

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v1

    const-class v9, Landroid/content/Intent;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    .line 78
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->preStartProcess:Ljava/lang/reflect/Method;

    .line 81
    :cond_9
    sget-object v3, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->preStartProcess:Ljava/lang/reflect/Method;

    sget-object v7, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->activityManagerService:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aput-object v2, v5, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-virtual {v3, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object p0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preLaunchProcess success infoPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v6

    :cond_a
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 85
    :try_start_1
    sget-object v0, Lcom/miui/home/launcher/util/PreLaunchAppUtil;->TAG:Ljava/lang/String;

    const-string v2, "preLaunchProcess error"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 88
    throw p0
.end method
