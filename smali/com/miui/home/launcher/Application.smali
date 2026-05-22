.class public Lcom/miui/home/launcher/Application;
.super Lmiuix/app/Application;
.source "Application.java"

# interfaces
.implements Lmiuix/autodensity/IDensity;


# static fields
.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static sInstance:Lcom/miui/home/launcher/Application;


# instance fields
.field private mCEBaseContext:Landroid/content/Context;

.field private volatile mClickAppWaitForCallback:Z

.field private mCurConfiguration:Landroid/content/res/Configuration;

.field private mCurrentVersion:I

.field private mFoldDisplayChangeManager:Lcom/miui/launcher/common/FoldDisplayChangeManager;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private volatile mIsInFoldLargeScreenMode:Z

.field private final mIsInitApplicationConfigWhenAttachContext:Z

.field public final mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

.field private mMiuiHomeSettingActivity:Lcom/miui/home/settings/MiuiHomeSettingActivity;

.field private mModel:Lcom/miui/home/launcher/LauncherModel;

.field private mOldVersion:I

.field mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

.field private mResetOpenActionBlockRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$HAVJNCAEfsNM2VJI21o80dtZ9qE(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Application;->lambda$loadFeedModules$4(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KbPgiW0tZv1C-FcJ4s5xZ1ROZto()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/Application;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$VcDts53-7eOEOuN1SxU5QadcCis()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/Application;->lambda$initBoomObject$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$gMiXtG0orcJ4XtrBEkTCQZzcHX8(Lcom/miui/home/launcher/Application;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Application;->lambda$firstInitInFoldDevice$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sIAEgqWbwN2lSddmLWrPEIIawrY(Z)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/Application;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wSwOY6jBw2qZRlsz-8aRgC_YCVo()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/Application;->lambda$createApplication$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/home/launcher/Application;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lmiuix/app/Application;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    .line 83
    iput v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInitApplicationConfigWhenAttachContext:Z

    .line 260
    sget-object v0, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    .line 570
    sget-object v0, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda2;

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mResetOpenActionBlockRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/launcher/Application;

    const-string v1, "Application.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "4"

    const-string v2, "attachBaseContext"

    const-string v3, "com.miui.home.launcher.Application"

    const-string v4, "android.content.Context"

    const-string v5, "base"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x66

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/Application;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private checkThemeChange(Landroid/content/res/Configuration;)V
    .locals 3

    .line 388
    :try_start_0
    const-class p0, Landroid/content/res/Configuration;

    const-string v0, "extraConfig"

    const-class v1, Landroid/content/res/MiuiConfiguration;

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 390
    const-class v0, Landroid/content/res/MiuiConfiguration;

    const-string/jumbo v1, "themeChangedFlags"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 392
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 393
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 397
    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x8

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    .line 399
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " checkThemeChange = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.application"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private disablePerfectIcons()V
    .locals 3

    .line 601
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_miui_mod_icon_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private firstInitInFoldDevice()V
    .locals 2

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Application;->initCurrentScreenMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstInitInFoldDevice , mIsInFoldLargeScreenMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.application"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/miui/launcher/common/FoldDisplayChangeManager;

    invoke-direct {v0}, Lcom/miui/launcher/common/FoldDisplayChangeManager;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mFoldDisplayChangeManager:Lcom/miui/launcher/common/FoldDisplayChangeManager;

    .line 151
    new-instance v1, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Application;)V

    invoke-virtual {v0, v1}, Lcom/miui/launcher/common/FoldDisplayChangeManager;->addAndStartMonitor(Lcom/miui/launcher/common/FoldDisplayChangeListener;)V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 338
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 343
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    invoke-virtual {v0, v0}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherApplication()Lcom/miui/home/launcher/Application;
    .locals 1

    .line 528
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object v0
.end method

.method public static getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/Application;
    .locals 0

    .line 532
    sget-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    return-object p0
.end method

.method private initApplicationConfig()V
    .locals 0

    .line 140
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->init(Landroid/content/Context;)V

    .line 141
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->loadFeedModules()V

    return-void
.end method

.method private initBoomObject()V
    .locals 0

    .line 267
    sget-object p0, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda3;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initCurrentScreenMode(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 547
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p0, 0xf

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$createApplication$1()V
    .locals 1

    .line 236
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->enableHomeSchedBoost(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$firstInitInFoldDevice$0(IZ)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayFoldChanged , displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  , folded  = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.application"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p2, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    .line 154
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->resetSoscEvent()V

    .line 155
    sget-object p1, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->INSTANCE:Lcom/miui/home/launcher/common/FoldScreenModeObservable;

    iget-boolean p2, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->screenModeUpdate(Z)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->updateRotate(Landroid/content/Context;)V

    .line 157
    iget-boolean p0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    sput-boolean p0, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    return-void
.end method

.method private static synthetic lambda$initBoomObject$3()V
    .locals 0

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initBoomNum()V

    .line 269
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initSparkObject()V

    return-void
.end method

.method private static synthetic lambda$loadFeedModules$4(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 299
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object p0

    const-string v0, "com.miui.newhome"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->loadModules([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$new$2(Z)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardLockedStateChanged, isKeyguardLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.application"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sput-boolean p0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsKeyguardLocked:Z

    return-void
.end method

.method private static synthetic lambda$new$5()V
    .locals 2

    const-string v0, "Launcher.application"

    const-string v1, "error, wait for resetOpenActionBlockRunnable timeout"

    .line 571
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 572
    invoke-static {v0}, Lcom/miui/home/launcher/Application;->updateClickAppWaitForCallbackValue(Z)V

    return-void
.end method

.method private loadFeedModules()V
    .locals 1

    .line 289
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupport()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportOverlay()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedSupportDecouple()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 298
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda5;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private onUpgrade()V
    .locals 2

    .line 326
    iget v0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v1, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/LauncherVersionUtils;->onUpgrade(Landroid/content/Context;II)V

    return-void
.end method

.method private registerApkInstallReceiver()V
    .locals 4

    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    new-instance v1, Lcom/miui/home/launcher/install/InstallApkReceiver;

    invoke-direct {v1}, Lcom/miui/home/launcher/install/InstallApkReceiver;-><init>()V

    const-string v2, "package"

    .line 279
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 280
    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.amazon.dee.app.addicon"

    .line 283
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.amazon.dee.app.cancelicon"

    .line 284
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private resetSoscEvent()V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetSoscEvent()V

    .line 165
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p0

    if-nez p0, :cond_1

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->resetSoscEvent()V

    :cond_1
    return-void
.end method

.method private resolveVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 2

    const v0, 0x2026c4f8

    .line 305
    iput v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v0, "app_version"

    const/4 v1, -0x1

    .line 306
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    .line 307
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->setIsHomeNewUser()V

    .line 308
    iget p1, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    iget v0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    if-ge p1, v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->onUpgrade()V

    .line 310
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->upgradeAppVersion()V

    :cond_0
    return-void
.end method

.method private sendApplicationStartActivityInfo(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    .line 482
    new-instance v5, Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

    invoke-direct {v5, p1, p2}, Lcom/miui/home/recents/event/ApplicationStartActivityInfo;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 483
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance p1, Lcom/miui/home/recents/event/StartActivityEvent;

    new-instance p2, Lcom/miui/home/recents/event/StartActivityEventInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;Lcom/miui/home/recents/event/SuperStartActivityInfo;Lcom/miui/home/recents/event/WidgetIntentSenderInfo;Lcom/miui/home/recents/event/ApplicationStartActivityInfo;)V

    invoke-direct {p1, p2}, Lcom/miui/home/recents/event/StartActivityEvent;-><init>(Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method private setIsHomeNewUser()V
    .locals 1

    .line 318
    iget p0, p0, Lcom/miui/home/launcher/Application;->mOldVersion:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    .line 319
    invoke-static {p0}, Lcom/miui/home/launcher/GlobalSearchUtil;->setIsLauncherNewUser(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 321
    invoke-static {p0}, Lcom/miui/home/launcher/GlobalSearchUtil;->setIsLauncherNewUser(Z)V

    :goto_0
    return-void
.end method

.method private setMiuiSdkContext()V
    .locals 2

    :try_start_0
    const-string v0, "com.miui.internal.util.PackageConstants"

    .line 537
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sApplication"

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 540
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.application"

    const-string/jumbo v1, "setMiuiSdkContext"

    .line 542
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static updateClickAppWaitForCallbackValue(Z)V
    .locals 1

    .line 564
    sget-object v0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Application;->setClickAppWaitForCallback(Z)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/miui/home/launcher/Application;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/miui/home/safemode/SafeModeAspect;->aspectOf()Lcom/miui/home/safemode/SafeModeAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/safemode/SafeModeAspect;->applicationAttachBaseContextAdvice(Lorg/aspectj/lang/JoinPoint;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 103
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {v0}, Lcom/miui/home/safemode/SafeModeManager;->isSafeProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0, v1}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;

    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->setMiuiSdkContext()V

    const-string v0, "Launcher.application"

    const-string v2, "application attached"

    .line 108
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    .line 110
    sput-object p0, Lcom/miui/home/launcher/Application;->sInstance:Lcom/miui/home/launcher/Application;

    .line 111
    invoke-static {p0, v1}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;

    .line 112
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->firstInitInFoldDevice()V

    .line 113
    invoke-static {p1}, Lcom/miui/home/launcher/MiuiHomeLog;->init(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 115
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->resolveVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->disablePerfectIcons()V

    .line 117
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V

    .line 118
    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInitApplicationConfigWhenAttachContext:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initApplicationConfig()V

    .line 122
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->Init(Landroid/content/Context;Z)Z

    .line 123
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initBoomObject()V

    .line 124
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->registerApkInstallReceiver()V

    .line 127
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/Application$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Application$1;-><init>(Lcom/miui/home/launcher/Application;)V

    invoke-static {p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    .line 134
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x22

    if-lt p0, p1, :cond_3

    .line 135
    invoke-static {}, Ldalvik/system/ZipPathValidator;->clearCallback()V

    :cond_3
    return-void
.end method

.method public createApplication()V
    .locals 10

    .line 184
    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInitApplicationConfigWhenAttachContext:Z

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/miui/home/launcher/Application;->initApplicationConfig()V

    .line 187
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/InternationalGlobalSearchUtil;->init()V

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/GlobalSearchUtil;->init()V

    .line 193
    :goto_0
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceTypeGlobal()I

    move-result v4

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v5

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mi/appfinder/launcher/FinderController;->onApplicationCreate(Landroid/app/Application;ZIZZ)V

    .line 194
    invoke-static {}, Lcom/mi/appfinder/launcher/FinderController;->getInstance()Lcom/mi/appfinder/launcher/FinderController;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/appfinder/launcher/FinderController;->initRecommendConfig(Z)V

    .line 195
    new-instance v0, Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 196
    new-instance v0, Lcom/miui/home/launcher/LauncherModel;

    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherModel;-><init>(Lcom/miui/home/launcher/Application;Lcom/miui/home/launcher/IconCache;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->setDeviceSupportBarFollow()V

    .line 199
    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->setSupportElement(Landroid/content/Context;Z)V

    .line 200
    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->setSupportStatusBarFollow(Landroid/content/Context;Z)V

    .line 203
    :cond_2
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherModel;->getLauncherAppsCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 204
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAppsChangedCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.xiaomi.market.ACTION_HD_ICON_UPDATE"

    .line 210
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 213
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 214
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 215
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 216
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PROFILE_REMOVED"

    .line 217
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v0, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 221
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "miui.intent.action.APPLICATION_PROGRESS_UPDATE"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-static {p0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x2

    const-string v7, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.xiaomi.market.DesktopRecommendDownloadStart"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 228
    invoke-static {p0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->init(Landroid/content/Context;)V

    .line 229
    invoke-static {}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->loadIronSource()V

    .line 230
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->enableAndResetCache()V

    .line 232
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Launcher.application"

    const-string v2, "createApplication SupportRecentsAndFsGesture"

    .line 233
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    .line 235
    sget-object v0, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda4;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 241
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V

    .line 244
    :goto_1
    invoke-static {}, Lcom/miui/home/recents/ForegroundTaskHelper;->getInstance()Lcom/miui/home/recents/ForegroundTaskHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/ForegroundTaskHelper;->init(Landroid/content/Context;)V

    .line 245
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->init(Landroid/content/Context;)V

    .line 247
    invoke-static {p0}, Lcom/miui/msa/MSASdk;->init(Landroid/content/Context;)V

    .line 248
    invoke-static {p0}, Lcom/market/sdk/utils/AppGlobal;->setContext(Landroid/content/Context;)V

    .line 249
    sget-object v0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromService(Z)V

    .line 250
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 251
    invoke-static {}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->getInstance()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->register(Landroid/content/Context;)V

    :cond_4
    const/16 v0, -0x14

    .line 253
    invoke-static {v0}, Lmiuix/animation/Folme;->setThreadPriority(I)V

    .line 254
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->initSurfaceControlRegistryProcessInstance(Landroid/content/Context;)V

    .line 255
    sget-object v0, Lcom/miui/home/launcher/KeyguardStateListener;->sInstance:Lcom/miui/home/launcher/KeyguardStateListener;

    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mKeyguardLockedStateListener:Landroid/app/KeyguardManager$KeyguardLockedStateListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/KeyguardStateListener;->registerKeyguardStateListenerIfNeed(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    .line 256
    sget-object p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->sInstance:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;

    invoke-virtual {p0}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->initAndRegisterInBackground()V

    return-void
.end method

.method public getCEBaseContex()Landroid/content/Context;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCategoryProvider()Lcom/miui/home/launcher/CategoryProvider;
    .locals 1

    .line 507
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.vroco.launcher.launcher.category"

    .line 508
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CategoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 507
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public getIconCache()Lcom/miui/home/launcher/IconCache;
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object p0
.end method

.method public getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 450
    instance-of p1, p1, Lcom/miui/home/launcher/Application;

    if-eqz p1, :cond_0

    .line 451
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-object p0
.end method

.method public getMiuiHomeSettingActivity()Lcom/miui/home/settings/MiuiHomeSettingActivity;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mMiuiHomeSettingActivity:Lcom/miui/home/settings/MiuiHomeSettingActivity;

    return-object p0
.end method

.method public getModel()Lcom/miui/home/launcher/LauncherModel;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method public getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    return-object p0
.end method

.method public hasBroughtToForeground()Z
    .locals 3

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "activity"

    .line 349
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 350
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    .line 351
    const-class v2, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public isClickAppWaitForCallback()Z
    .locals 0

    .line 432
    iget-boolean p0, p0, Lcom/miui/home/launcher/Application;->mClickAppWaitForCallback:Z

    return p0
.end method

.method public isInFoldLargeScreen()Z
    .locals 1

    .line 553
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 555
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_1

    .line 556
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInFoldLargeScreenMode()Z
    .locals 0

    .line 560
    iget-boolean p0, p0, Lcom/miui/home/launcher/Application;->mIsInFoldLargeScreenMode:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 359
    invoke-super {p0, p1}, Lmiuix/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 360
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {v0}, Lcom/miui/home/safemode/SafeModeManager;->isSafeProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged , sw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  , isInFoldDeviceLargeScreen= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  , isInFoldLargeScreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.application"

    .line 363
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->updateRotate(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 367
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->needRefresh:Z

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 370
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    .line 377
    invoke-static {p1}, Lcom/miui/launcher/utils/LauncherUtils;->getWindowingModeFromConfiguration(Landroid/content/res/Configuration;)I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isInMultiWindowMode(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->setIsSystemInMultiWindowMode(Z)V

    .line 381
    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Application;->checkThemeChange(Landroid/content/res/Configuration;)V

    .line 383
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 172
    invoke-super {p0}, Lmiuix/app/Application;->onCreate()V

    .line 173
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {v0}, Lcom/miui/home/safemode/SafeModeManager;->isSafeProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/miui/home/safemode/SafeModeManager;->onApplicationCreate()V

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->createApplication()V

    return-void
.end method

.method onLauncherActivityDestroy()V
    .locals 2

    .line 514
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-virtual {v0}, Lcom/miui/home/safemode/SafeModeManager;->isSafeProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 518
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 519
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->unRegisterPredictionUpdates()V

    .line 520
    iput-object v1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 521
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 524
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherModel;->onDestroy()V

    return-void
.end method

.method public setClickAppWaitForCallback(Z)V
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setClickAppWaitForCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.application"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iput-boolean p1, p0, Lcom/miui/home/launcher/Application;->mClickAppWaitForCallback:Z

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherModel;
    .locals 1

    .line 415
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 416
    invoke-static {p1}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/progress/ProgressManager;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 417
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->getInstanse()Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendAppsDownloadReceiver;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 418
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->initialize(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V

    .line 419
    iget-object p1, p0, Lcom/miui/home/launcher/Application;->mRecentsImpl:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 422
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mModel:Lcom/miui/home/launcher/LauncherModel;

    return-object p0
.end method

.method setLauncherProvider(Lcom/miui/home/launcher/LauncherProvider;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mLauncherProvider:Lcom/miui/home/launcher/LauncherProvider;

    return-void
.end method

.method public setMiuiHomeSettingActivity(Lcom/miui/home/settings/MiuiHomeSettingActivity;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/miui/home/launcher/Application;->mMiuiHomeSettingActivity:Lcom/miui/home/settings/MiuiHomeSettingActivity;

    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 457
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Application;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 459
    new-instance p0, Lcom/miui/home/recents/event/LauncherStartActivityInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/miui/home/recents/event/LauncherStartActivityInfo;-><init>(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 460
    sget-object p2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p2

    new-instance p3, Lcom/miui/home/recents/event/StartActivityEvent;

    new-instance v0, Lcom/miui/home/recents/event/StartActivityEventInfo;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/recents/event/StartActivityEventInfo;-><init>(Lcom/miui/home/recents/event/CommonStartActivityInfo;Lcom/miui/home/recents/event/LauncherStartActivityInfo;)V

    invoke-direct {p3, v0}, Lcom/miui/home/recents/event/StartActivityEvent;-><init>(Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 473
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/Application;->sendApplicationStartActivityInfo(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Application;->sendApplicationStartActivityInfo(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startOpenBlock()V
    .locals 3

    const/4 v0, 0x1

    .line 576
    invoke-static {v0}, Lcom/miui/home/launcher/Application;->updateClickAppWaitForCallbackValue(Z)V

    .line 577
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/Application;->mResetOpenActionBlockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mResetOpenActionBlockRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopOpenBlock()V
    .locals 1

    .line 582
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/Application;->mResetOpenActionBlockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 583
    invoke-static {p0}, Lcom/miui/home/launcher/Application;->updateClickAppWaitForCallbackValue(Z)V

    return-void
.end method

.method public superApplicationStartActivity(Lcom/miui/home/recents/event/ApplicationStartActivityInfo;)V
    .locals 1

    .line 488
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/recents/event/ApplicationStartActivityInfo;->getOptions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/miui/home/recents/event/ApplicationStartActivityInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/ApplicationStartActivityInfo;->getOptions()Landroid/os/Bundle;

    move-result-object p1

    invoke-super {p0, v0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 492
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/event/ApplicationStartActivityInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.application"

    const-string/jumbo v0, "superApplicationStartActivity failed:"

    .line 494
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public upgradeAppVersion()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/miui/home/launcher/Application;->mCEBaseContext:Landroid/content/Context;

    iget p0, p0, Lcom/miui/home/launcher/Application;->mCurrentVersion:I

    const-string v1, "app_version"

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
