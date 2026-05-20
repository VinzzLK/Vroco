.class public Lmiuix/autodensity/AutoDensityConfig;
.super Lmiuix/autodensity/DensityProcessor;
.source "AutoDensityConfig.java"


# static fields
.field private static final TAG_CONFIG_CHANGE_FRAGMENT:Ljava/lang/String; = "ConfigurationChangeFragment"

.field private static sInstance:Lmiuix/autodensity/AutoDensityConfig; = null

.field private static sUpdateSystemResources:Z = true


# instance fields
.field private sCanAccessHiddenAPI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Lmiuix/autodensity/DensityProcessor;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z

    .line 139
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->prepareInApplication(Landroid/app/Application;)V

    .line 140
    instance-of v0, p1, Lmiuix/app/Application;

    if-eqz v0, :cond_0

    .line 141
    move-object v0, p1

    check-cast v0, Lmiuix/app/Application;

    new-instance v1, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;

    invoke-direct {v1, p0}, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;-><init>(Lmiuix/autodensity/DensityProcessor;)V

    invoke-virtual {v0, v1}, Lmiuix/app/Application;->registerActivityLifecycleSubCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 142
    new-instance v1, Lmiuix/autodensity/AutoDensityConfig$1;

    invoke-direct {v1, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$1;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lmiuix/app/Application;->registerComponentSubCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;

    invoke-direct {v0, p0}, Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;-><init>(Lmiuix/autodensity/DensityProcessor;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 155
    new-instance v0, Lmiuix/autodensity/AutoDensityConfig$2;

    invoke-direct {v0, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$2;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;)Z
    .locals 0

    .line 26
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result p0

    return p0
.end method

.method private addForOnConfigurationChange(Landroid/app/Activity;)V
    .locals 1

    .line 389
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-direct {v0}, Lmiuix/autodensity/ConfigurationChangeFragment;-><init>()V

    .line 392
    invoke-virtual {v0, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    .line 393
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "ConfigurationChangeFragment"

    .line 394
    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 395
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 397
    :cond_0
    check-cast v0, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-virtual {v0, p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->setDensityProcessor(Lmiuix/autodensity/AutoDensityConfig;)V

    const-string p0, "AutoDensity"

    const-string p1, "ConfigurationChangeFragment has already added"

    .line 398
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private changeCurrentConfig(Landroid/app/Activity;)V
    .locals 3

    .line 412
    const-class v0, Landroid/app/Activity;

    :try_start_0
    const-string v1, "mCurrentConfig"

    invoke-static {v0, p1, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 413
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v2

    .line 414
    iget v2, v2, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    const-string v1, "mActivityInfo"

    .line 415
    invoke-static {v0, p1, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 416
    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_0

    or-int/lit16 v1, v1, 0x1000

    .line 417
    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 418
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 420
    check-cast p0, Lmiuix/autodensity/ConfigurationChangeFragment;

    invoke-virtual {p0}, Lmiuix/autodensity/ConfigurationChangeFragment;->removeDensityChangeFlag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 424
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static createAutoDensityContextWrapper(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0, v0}, Lmiuix/autodensity/AutoDensityConfig;->createAutoDensityContextWrapper(Landroid/content/Context;II)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static createAutoDensityContextWrapper(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, p1, v0}, Lmiuix/autodensity/AutoDensityConfig;->createAutoDensityContextWrapper(Landroid/content/Context;II)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static createAutoDensityContextWrapper(Landroid/content/Context;II)Landroid/content/Context;
    .locals 3

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 113
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v2

    if-nez v2, :cond_0

    .line 114
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmiuix/autodensity/DensityConfigManager;->init(Landroid/content/Context;)V

    .line 117
    :cond_0
    new-instance v2, Lmiuix/autodensity/AutoDensityContextWrapper;

    invoke-direct {v2, p0, p1}, Lmiuix/autodensity/AutoDensityContextWrapper;-><init>(Landroid/content/Context;I)V

    .line 118
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 119
    invoke-virtual {v2, v1}, Lmiuix/autodensity/AutoDensityContextWrapper;->setOriginConfiguration(Landroid/content/res/Configuration;)V

    .line 120
    invoke-static {v2, p2}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;I)V

    return-object v2
.end method

.method public static createAutoDensityContextWrapperWithBaseDp(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, v0, p1}, Lmiuix/autodensity/AutoDensityConfig;->createAutoDensityContextWrapper(Landroid/content/Context;II)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static forceUpdateDensity(Landroid/content/Context;)V
    .locals 1

    .line 515
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-eqz v0, :cond_0

    .line 516
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private getConfigurationChangeFragment(Landroid/app/Activity;)Landroid/app/Fragment;
    .locals 0

    .line 429
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "ConfigurationChangeFragment"

    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;
    .locals 1

    .line 63
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 64
    invoke-static {p0, v0}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;

    move-result-object p0

    sput-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 66
    :cond_0
    sget-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    return-object p0
.end method

.method public static init(Landroid/app/Application;Z)Lmiuix/autodensity/AutoDensityConfig;
    .locals 1

    .line 70
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_0

    .line 71
    sput-boolean p1, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    .line 72
    new-instance p1, Lmiuix/autodensity/AutoDensityConfig;

    invoke-direct {p1, p0}, Lmiuix/autodensity/AutoDensityConfig;-><init>(Landroid/app/Application;)V

    sput-object p1, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    .line 74
    :cond_0
    sget-object p0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    return-object p0
.end method

.method private static isShouldAdaptAutoDensity(Landroid/app/Application;)Z
    .locals 1

    .line 455
    instance-of v0, p0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_0

    .line 456
    check-cast p0, Lmiuix/autodensity/IDensity;

    invoke-interface {p0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private removeCurrentConfig(Landroid/app/Activity;)V
    .locals 2

    .line 404
    :try_start_0
    const-class p0, Landroid/app/Activity;

    const-string v0, "mCurrentConfig"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lmiuix/reflect/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 406
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setForceDeviceScale(F)V
    .locals 1

    .line 39
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/autodensity/DensityConfigManager;->setUserDeviceScale(F)V

    return-void
.end method

.method public static setForcePPI(I)V
    .locals 1

    .line 48
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/autodensity/DensityConfigManager;->setUserPPI(I)V

    return-void
.end method

.method public static setUpdateSystemRes(Z)V
    .locals 0

    .line 82
    sput-boolean p0, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    if-eqz p0, :cond_1

    .line 84
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getOriginConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 94
    :cond_2
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    :goto_0
    return-void
.end method

.method public static setUseDeprecatedDensityLogic(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/autodensity/DensityConfigManager;->setUseDeprecatedDensityLogic(Z)V

    return-void
.end method

.method public static setUseStableDensityLogic(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiuix/autodensity/DensityConfigManager;->setUseStableDensityLogic(Z)V

    return-void
.end method

.method public static shouldUpdateSystemResource()Z
    .locals 1

    .line 78
    sget-boolean v0, Lmiuix/autodensity/AutoDensityConfig;->sUpdateSystemResources:Z

    return v0
.end method

.method private tryToAddActivityConfigCallback(Landroid/app/Activity;)V
    .locals 2

    .line 313
    iget-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance v1, Lmiuix/autodensity/AutoDensityConfig$3;

    invoke-direct {v1, p0, p1}, Lmiuix/autodensity/AutoDensityConfig$3;-><init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Activity;)V

    .line 383
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 384
    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    invoke-virtual {p0, v1}, Lmiuix/autodensity/DensityProcessor$DensityCallback;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public static updateDensity(Landroid/content/Context;)V
    .locals 4

    .line 472
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 480
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 481
    :cond_1
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 482
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    goto :goto_0

    .line 483
    :cond_2
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_5

    .line 484
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 485
    :cond_3
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_5

    .line 486
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 487
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 488
    move-object p0, v0

    check-cast p0, Landroid/app/Activity;

    move-object v0, v1

    move-object v1, p0

    goto :goto_0

    .line 491
    :cond_4
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_3

    .line 492
    check-cast v0, Landroid/app/Application;

    goto :goto_0

    :cond_5
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 498
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 499
    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v2

    .line 501
    instance-of v0, v1, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_7

    .line 502
    check-cast v1, Lmiuix/autodensity/IDensity;

    invoke-interface {v1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v0

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 505
    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    :goto_1
    move v3, v2

    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    if-eqz v2, :cond_8

    .line 508
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->forceUpdateDensity(Landroid/content/Context;)V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 510
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    :cond_9
    :goto_3
    return-void
.end method

.method public static updateDensityByConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 2

    .line 462
    sget-object v0, Lmiuix/autodensity/AutoDensityConfig;->sInstance:Lmiuix/autodensity/AutoDensityConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    .line 468
    :cond_1
    invoke-virtual {v0, p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensityOnConfigChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static updateDensityOverrideConfiguration(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2

    .line 125
    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->getNoDensityOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 131
    :goto_0
    invoke-static {v0}, Lmiuix/autodensity/DensityUtil;->shouldUpdateDensityForConfig(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 133
    invoke-static {p0, p1}, Lmiuix/autodensity/DensityUtil;->updateDensityForConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    :cond_1
    return-object p1
.end method


# virtual methods
.method public isEnableProcessInActivity(Landroid/app/Activity;)Z
    .locals 1

    const/4 p0, 0x0

    .line 173
    :try_start_0
    instance-of v0, p1, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lmiuix/autodensity/IDensity;

    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lmiuix/autodensity/IDensity;

    invoke-interface {p1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method

.method protected onDensityChangedOnActivityCreated(Landroid/app/Activity;)V
    .locals 0

    .line 302
    invoke-super {p0, p1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    .line 303
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->addForOnConfigurationChange(Landroid/app/Activity;)V

    return-void
.end method

.method protected onRegisterDensityCallback(Ljava/lang/Object;)V
    .locals 1

    .line 522
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerCallback obj: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return-void
.end method

.method public prepareInApplication(Landroid/app/Application;)V
    .locals 5

    .line 186
    :try_start_0
    const-class v0, Landroid/content/pm/ApplicationInfo;

    .line 188
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "isAllowedToUseHiddenApis"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    .line 186
    invoke-static {v0, v1, v2, v4, v3}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/autodensity/AutoDensityConfig;->sCanAccessHiddenAPI:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :catch_0
    invoke-static {}, Lmiuix/autodensity/DebugUtil;->initAutoDensityDebugEnable()V

    .line 195
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->init(Landroid/content/Context;)V

    .line 196
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 197
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "->processBeforeActivityConfigChanged"

    .line 235
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    .line 238
    instance-of v1, p1, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_0

    .line 239
    move-object v1, p1

    check-cast v1, Lmiuix/autodensity/IDensity;

    invoke-interface {v1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 242
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 247
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 248
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    .line 249
    iget p2, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 250
    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result p2

    .line 255
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->changeCurrentConfig(Landroid/app/Activity;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 259
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    move-result v0

    .line 260
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v1

    .line 261
    invoke-virtual {p0, p1, p2, v1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    if-eqz v0, :cond_4

    .line 263
    iget p2, v1, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, v1, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 264
    invoke-static {p2}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result p2

    .line 269
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->changeCurrentConfig(Landroid/app/Activity;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public processOnActivityCreated(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "->processOnActivityCreated"

    .line 217
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    .line 220
    instance-of v1, p1, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_0

    .line 221
    move-object v1, p1

    check-cast v1, Lmiuix/autodensity/IDensity;

    invoke-interface {v1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 223
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiuix/autodensity/AutoDensityConfig;->updateApplicationDensity(Landroid/app/Application;)V

    if-eqz v1, :cond_1

    .line 225
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 226
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 228
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    .line 229
    invoke-virtual {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->onDensityChangedOnActivityCreated(Landroid/app/Activity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public processOnActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->unregisterCallback(Landroid/app/Activity;)V

    return-void
.end method

.method public processOnActivityDisplayChanged(ILandroid/app/Activity;)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "->onDisplayChanged displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    .line 288
    instance-of v1, p2, Lmiuix/autodensity/IDensity;

    if-eqz v1, :cond_0

    .line 289
    move-object v1, p2

    check-cast v1, Lmiuix/autodensity/IDensity;

    invoke-interface {v1}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 292
    invoke-static {p2}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 293
    invoke-virtual {p0, p1, p2}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityDisplayChanged(ILandroid/app/Activity;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 295
    invoke-static {p2}, Lmiuix/autodensity/DensityUtil;->restoreDefaultDensity(Landroid/content/Context;)Z

    .line 296
    invoke-virtual {p0, p1, p2}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnActivityDisplayChanged(ILandroid/app/Activity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "->processOnAppConfigChanged"

    .line 203
    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/autodensity/DensityConfigManager;->tryUpdateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    .line 205
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->onDensityChangedOnAppConfigChanged(Landroid/app/Application;)V

    .line 209
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object p0

    .line 210
    iget p0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    :cond_0
    return-void
.end method

.method protected registerCallback(Landroid/app/Activity;)V
    .locals 0

    .line 308
    invoke-super {p0, p1}, Lmiuix/autodensity/DensityProcessor;->registerCallback(Landroid/app/Activity;)V

    .line 309
    invoke-direct {p0, p1}, Lmiuix/autodensity/AutoDensityConfig;->tryToAddActivityConfigCallback(Landroid/app/Activity;)V

    return-void
.end method

.method updateApplicationDensity(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public updateDensityOnConfigChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 2

    .line 442
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiuix/autodensity/DensityConfigManager;->tryUpdateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p2

    .line 443
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 444
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 445
    invoke-static {v0}, Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p0, v0}, Lmiuix/autodensity/AutoDensityConfig;->updateApplicationDensity(Landroid/app/Application;)V

    .line 449
    :cond_0
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensity(Landroid/content/Context;)V

    return p2
.end method
