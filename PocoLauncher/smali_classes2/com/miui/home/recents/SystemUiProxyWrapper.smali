.class public Lcom/miui/home/recents/SystemUiProxyWrapper;
.super Ljava/lang/Object;
.source "SystemUiProxyWrapper.java"


# static fields
.field public static final KEY_EXTRA_SHELL_RECENT_TASKS:Ljava/lang/String;


# instance fields
.field private volatile mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

.field private volatile mPip:Lcom/android/wm/shell/pip/IPip;

.field private volatile mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

.field private volatile mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

.field private volatile mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

.field private volatile mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

.field private volatile mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private final mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public static synthetic $r8$lambda$BlwWXuDtD1xwm1Um4UKwv_qnoF4(Lcom/miui/home/recents/SystemUiProxyWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$DvM-jwFvwJK2DOfDPiuKjoPD2UA(Lcom/miui/home/recents/SystemUiProxyWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->lambda$new$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    const-string v0, "extra_shell_recent_tasks"

    goto :goto_0

    :cond_0
    const-string v0, "recent_tasks"

    :goto_0
    sput-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->KEY_EXTRA_SHELL_RECENT_TASKS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/miui/home/recents/SystemUiProxyWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/SystemUiProxyWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    iput-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private getISplitScreen(Landroid/os/Bundle;)Landroid/os/IInterface;
    .locals 1

    .line 123
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    const-string v0, "extra_shell_split_screen"

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/ISplitScreenU$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    move-result-object p0

    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/ISplitScreenT$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    move-result-object p0

    return-object p0
.end method

.method private initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V
    .locals 7

    .line 159
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v3

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v4

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v5

    move-object v1, p1

    move-object v6, p2

    .line 159
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;Landroid/content/Context;ZZZLcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V

    .line 166
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->addSoscSplitScreenListener()V

    .line 167
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsSoscController;->addSoscSplitScreenListener()V

    .line 168
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->addSoscSplitScreenListener()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 11

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "mSystemUiProxyDeathRecipient, binderDied"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    .line 71
    invoke-direct/range {v2 .. v10}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Landroid/os/IInterface;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 69
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/SystemUiProxyWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/SystemUiProxyWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerRecentTasksListener()V
    .locals 2

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    new-instance v1, Lcom/miui/home/recents/SystemUiProxyWrapper$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/SystemUiProxyWrapper$1;-><init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/recents/IRecentTasks;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Landroid/os/IInterface;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 77
    iput-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 78
    iput-object p2, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mPip:Lcom/android/wm/shell/pip/IPip;

    .line 79
    iput-object p3, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    .line 80
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    instance-of p1, p4, Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    if-eqz p1, :cond_1

    .line 82
    check-cast p4, Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    iput-object p4, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    goto :goto_0

    .line 85
    :cond_0
    instance-of p1, p4, Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    if-eqz p1, :cond_1

    .line 86
    check-cast p4, Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    iput-object p4, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    .line 89
    :cond_1
    :goto_0
    iput-object p5, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    .line 90
    invoke-direct {p0, p6, p8}, Lcom/miui/home/recents/SystemUiProxyWrapper;->initSoscSplitScreen(Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V

    .line 91
    iput-object p7, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    .line 92
    invoke-direct {p0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRecentTasksListener()V

    .line 93
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->setRecentTasks(Lcom/android/wm/shell/recents/IRecentTasks;)V

    return-void
.end method


# virtual methods
.method public isShellTransitionInitialized()Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSystemUIProxyInitialized()Z
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected linkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 141
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SystemUiProxyWrapper"

    const-string p1, "Failed to link sysui proxy death recipient"

    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const-string v1, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "notifyAccessibilityButtonClicked mSystemUiProxy is null"

    .line 399
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 403
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonClicked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to notify SysUI of notifyAccessibilityButtonClicked"

    .line 405
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const-string v1, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "notifyAccessibilityButtonLongClicked mSystemUiProxy is null"

    .line 411
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 415
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonLongClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to notify SysUI of notifyAccessibilityButtonLongClicked"

    .line 417
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifySwipeToHomeFinished()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const-string v1, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "notifySwipeToHomeFinished mSystemUiProxy is null"

    .line 423
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 427
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToHomeFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to call notifySwipeToHomeFinished"

    .line 429
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const-string v1, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "onAssistantProgress mSystemUiProxy is null"

    .line 277
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to notify SysUI of onAssistantProgress"

    .line 283
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onGoingToRecentsLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->onGoingToRecentsLegacy(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public onSplitScreenInvoked()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SystemUiProxyWrapper"

    const-string v0, "onSplitScreenInvoked mSystemUiProxy is null"

    .line 227
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 231
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onSplitScreenInvoked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public onStartingSplitLegacy([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenT:Lcom/android/wm/shell/splitscreen/ISplitScreenT;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->onStartingSplitLegacy(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Lcom/android/wm/shell/splitscreen/ISplitScreenT;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x0

    const-string v2, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "onStatusBarMotionEvent mSystemUiProxy is null"

    .line 334
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 338
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to notify SysUI of onStatusBarMotionEvent"

    .line 341
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V
    .locals 1

    .line 486
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerRemoteTransition(Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    return-void
.end method

.method public setAssistantOverridesRequested([I)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const-string v1, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "setAssistantOverridesRequested mSystemUiProxy is null"

    .line 436
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 440
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setAssistantOverridesRequested([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to notify SysUI of setAssistantOverridesRequested"

    .line 442
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPipAnimationTypeToAlpha()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mPip:Lcom/android/wm/shell/pip/IPip;

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mPip:Lcom/android/wm/shell/pip/IPip;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/IPip;->setPipAnimationTypeToAlpha()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SystemUiProxyWrapper"

    const-string v1, "Failed call setPipAnimationTypeToAlpha"

    .line 192
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setProxyByBundle(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "SystemUiProxyWrapper"

    if-nez p1, :cond_0

    const-string p0, "setProxyByBundle, bundle is null, return"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "extra_sysui_proxy"

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v3

    const-string v1, "extra_shell_pip"

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/pip/IPip$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPip;

    move-result-object v4

    const-string v1, "extra_shell_one_handed"

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/onehanded/IOneHanded$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/onehanded/IOneHanded;

    move-result-object v5

    .line 104
    invoke-direct {p0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->getISplitScreen(Landroid/os/Bundle;)Landroid/os/IInterface;

    move-result-object v6

    .line 105
    sget-object v1, Lcom/miui/home/recents/SystemUiProxyWrapper;->KEY_EXTRA_SHELL_RECENT_TASKS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/recents/IRecentTasks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/recents/IRecentTasks;

    move-result-object v7

    const-string v1, "extra_shell_sosc_split_screen"

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/ISoScSplitScreen;

    move-result-object v8

    const-string v1, "extra_shell_shell_transitions"

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/IShellTransitions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IShellTransitions;

    move-result-object v9

    const-string v1, "extra_shell_miui_multitasking_state"

    .line 109
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;

    move-result-object v10

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProxyByBundle, systemUiProxy="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pip="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onehanded="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curVerISplitScreen="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recentTasks="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", soscSplitScreen="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shellTransitions="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiTaskingStateManager="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    .line 118
    invoke-direct/range {v2 .. v10}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/onehanded/IOneHanded;Landroid/os/IInterface;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/wm/shell/sosc/ISoScSplitScreen;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/multitasking/common/IMultiTaskingStateManager;)V

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const-string v1, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "startAssistant mSystemUiProxy is null"

    .line 265
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to notify SysUI of startAssistant"

    .line 271
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 9

    move-object v0, p0

    .line 460
    iget-object v0, v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    move-object v1, p1

    move v2, p2

    move-object v3, p5

    move v4, p4

    move-object v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startIntentAndTask(Lcom/android/wm/shell/splitscreen/ISplitScreenU;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    return-void
.end method

.method public startOneHandedMode()V
    .locals 2

    const-string v0, "SystemUiProxyWrapper"

    .line 375
    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz v1, :cond_0

    .line 377
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/IOneHanded;->startOneHanded()V

    .line 378
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackStartOneHandedMode()V

    const-string p0, "startOneHandedMode"

    .line 379
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed call startOneHandedMode"

    .line 381
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startRecentsActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;)Z
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    if-nez v0, :cond_0

    const-string p0, "SystemUiProxyWrapper"

    const-string p1, "startRecentsActivity: did not start recents because mRecentTasks is null"

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p5, :cond_1

    .line 208
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    .line 212
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 208
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityAtLeastU(Lcom/android/wm/shell/recents/IRecentTasks;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/ContextWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Z

    move-result p0

    return p0

    .line 215
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mRecentTasks:Lcom/android/wm/shell/recents/IRecentTasks;

    .line 219
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 215
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivityHyper(Lcom/android/wm/shell/recents/IRecentTasks;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/content/ContextWrapper;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;Lcom/android/systemui/shared/recents/system/BarFollowAnimationListener;)Z

    move-result p0

    return p0
.end method

.method public startScreenPinning(I)Z
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x0

    const-string v2, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "startScreenPinning mSystemUiProxy is null"

    .line 362
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 366
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startScreenPinning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed call startScreenPinning"

    .line 369
    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 8

    .line 453
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSplitScreenU:Lcom/android/wm/shell/splitscreen/ISplitScreenU;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startTasks(Lcom/android/wm/shell/splitscreen/ISplitScreenU;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    return-void
.end method

.method public stopOneHandedMode()V
    .locals 2

    const-string v0, "SystemUiProxyWrapper"

    .line 387
    iget-object v1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    if-eqz v1, :cond_0

    .line 389
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mOneHanded:Lcom/android/wm/shell/onehanded/IOneHanded;

    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/IOneHanded;->stopOneHanded()V

    const-string p0, "stopOneHandedMode"

    .line 390
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed call stopOneHandedMode"

    .line 392
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopScreenPinning()Z
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    const/4 v1, 0x0

    const-string v2, "SystemUiProxyWrapper"

    if-nez v0, :cond_0

    const-string p0, "stopScreenPinning mSystemUiProxy is null"

    .line 348
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 352
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mSystemUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopScreenPinning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Failed call stopScreenPinning"

    .line 355
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method protected unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 151
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V
    .locals 1

    .line 490
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/SystemUiProxyWrapper;->mShellTransitions:Lcom/android/wm/shell/transition/IShellTransitions;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->unregisterRemoteTransition(Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    return-void
.end method
