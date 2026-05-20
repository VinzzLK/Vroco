.class public Lcom/mi/appfinder/launcher/FinderController;
.super Ljava/lang/Object;
.source "FinderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/appfinder/launcher/FinderController$Callback;,
        Lcom/mi/appfinder/launcher/FinderController$DeviceType;
    }
.end annotation


# static fields
.field private static final ACTION_START_ACTIVITY_APPFINDER:Ljava/lang/String; = "com.mi.appfinder.intent.action.START_MASK_ACTIVITY"

.field private static final KEY_ALPHA:Ljava/lang/String; = "key_alpha"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "key_background"

.field private static final KEY_DARK:Ljava/lang/String; = "key_dark"

.field private static final KEY_FOCUS:Ljava/lang/String; = "key_focus"

.field private static final KEY_METADATA_APPFINDER_CODE:Ljava/lang/String; = "app.finder.ui.code"

.field private static final KEY_SPAN:Ljava/lang/String; = "key_span"

.field private static final TAG:Ljava/lang/String; = "HomeFinderController"

.field private static final VALUE_METADATA_APPFINDER_CODE_BASE:I = 0x1

.field private static volatile instance:Lcom/mi/appfinder/launcher/FinderController; = null

.field private static volatile isDeviceProvisioned:Z = false

.field private static volatile isFetching:Z = false

.field private static mDeviceProvisionedObserver:Landroid/database/ContentObserver; = null

.field private static volatile mDeviceValid:I = -0x1

.field private static volatile mFinderAppValid:I = -0x1

.field private static volatile mFinderFeatureCode:I = -0x1

.field private static mLastGuideCheck:J = -0x1L

.field private static volatile mMinusScreenPackage:Ljava/lang/String; = null

.field private static volatile needSyncConfig:Z = false


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mDebug:Z

.field private mDeviceType:I

.field private mIsHighEndDevice:Z

.field private mIsInternationalBuild:Z

.field private mIsTablet:Z


# direct methods
.method public static synthetic $r8$lambda$6-acgfODB8hHW5SCtEcgXnVwuAM(Lcom/mi/appfinder/launcher/FinderController$Callback;)V
    .locals 0

    invoke-static {p0}, Lcom/mi/appfinder/launcher/FinderController;->lambda$checkGuide$4(Lcom/mi/appfinder/launcher/FinderController$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kj_QoxFOLu7RC5yCrOt03FnSxhU(Lcom/mi/appfinder/launcher/FinderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/appfinder/launcher/FinderController;->lambda$onPackageChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PFqewnoWzQM_YkzdYpYLWvmkLz4(Lcom/mi/appfinder/launcher/FinderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/appfinder/launcher/FinderController;->lambda$initHomeFinder$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ciYT3Dp5tRjH6yvA8OarriniDUo(Lcom/mi/appfinder/launcher/FinderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/appfinder/launcher/FinderController;->lambda$startActivityBySafe$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fIqe6lzERjUOXW83le1bs5GJqtc(Lcom/mi/appfinder/launcher/FinderController;Landroid/app/Activity;IIIILcom/mi/appfinder/launcher/FinderController$Callback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/mi/appfinder/launcher/FinderController;->lambda$checkGuide$5(Landroid/app/Activity;IIIILcom/mi/appfinder/launcher/FinderController$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nUcWM-CNkS5dVEJ_XARyYRIkbl4(Lcom/mi/appfinder/launcher/FinderController;Landroid/app/Activity;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/mi/appfinder/launcher/FinderController;->lambda$checkGuide$3(Landroid/app/Activity;IIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mi/appfinder/launcher/FinderController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/mi/appfinder/launcher/FinderController;->initHomeFinder()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 31
    sput-boolean p0, Lcom/mi/appfinder/launcher/FinderController;->isDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$200()Landroid/database/ContentObserver;
    .locals 1

    .line 31
    sget-object v0, Lcom/mi/appfinder/launcher/FinderController;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private bindVaultService()V
    .locals 2

    .line 361
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->isFinderUIConfigAliveServiceEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderSupport()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getValidPackageName()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/mi/appfinder/launcher/FinderClientConnection;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/mi/appfinder/launcher/FinderClientConnection;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderClientConnection;->connect()V

    return-void
.end method

.method private checkGuide(Landroid/app/Activity;IIIILcom/mi/appfinder/launcher/FinderController$Callback;)V
    .locals 10

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mi/appfinder/launcher/FinderController;->mLastGuideCheck:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    if-eqz p6, :cond_0

    .line 398
    invoke-interface/range {p6 .. p6}, Lcom/mi/appfinder/launcher/FinderController$Callback;->requestFocus()V

    :cond_0
    return-void

    .line 402
    :cond_1
    sget-object v0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->THREAD_POOL_IO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda5;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda5;-><init>(Lcom/mi/appfinder/launcher/FinderController;Landroid/app/Activity;IIIILcom/mi/appfinder/launcher/FinderController$Callback;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mi/appfinder/launcher/FinderController;->mLastGuideCheck:J

    return-void
.end method

.method public static getInstance()Lcom/mi/appfinder/launcher/FinderController;
    .locals 2

    .line 73
    sget-object v0, Lcom/mi/appfinder/launcher/FinderController;->instance:Lcom/mi/appfinder/launcher/FinderController;

    if-nez v0, :cond_1

    .line 74
    const-class v0, Lcom/mi/appfinder/launcher/FinderController;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/mi/appfinder/launcher/FinderController;->instance:Lcom/mi/appfinder/launcher/FinderController;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/mi/appfinder/launcher/FinderController;

    invoke-direct {v1}, Lcom/mi/appfinder/launcher/FinderController;-><init>()V

    sput-object v1, Lcom/mi/appfinder/launcher/FinderController;->instance:Lcom/mi/appfinder/launcher/FinderController;

    .line 78
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/appfinder/launcher/FinderController;->instance:Lcom/mi/appfinder/launcher/FinderController;

    return-object v0
.end method

.method private initHomeFinder()V
    .locals 2

    const-string v0, "HomeFinderController"

    const-string v1, "home finder init"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->THREAD_POOL_IO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda2;-><init>(Lcom/mi/appfinder/launcher/FinderController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 159
    invoke-static {}, Lcom/mi/appfinder/launcher/firebase/FirebaseManager;->initFirebase()V

    return-void
.end method

.method private isAppFeatureValid(Z)Z
    .locals 3

    const-string v0, "HomeFinderController"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 320
    sget p1, Lcom/mi/appfinder/launcher/FinderController;->mFinderFeatureCode:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 322
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getValidPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 323
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "app.finder.ui.code"

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/mi/appfinder/launcher/FinderController;->mFinderFeatureCode:I

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "get meta data = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/mi/appfinder/launcher/FinderController;->mFinderFeatureCode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 326
    sput v1, Lcom/mi/appfinder/launcher/FinderController;->mFinderFeatureCode:I

    const-string p1, "get meta data exception: "

    .line 327
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    :cond_1
    :goto_0
    sget p0, Lcom/mi/appfinder/launcher/FinderController;->mFinderFeatureCode:I

    const/4 p1, 0x1

    if-lt p0, p1, :cond_2

    move v1, p1

    :cond_2
    return v1
.end method

.method private isUserUnlock()Z
    .locals 2

    .line 456
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 458
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User Unlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFinderController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private synthetic lambda$checkGuide$3(Landroid/app/Activity;IIII)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 416
    invoke-direct/range {v0 .. v6}, Lcom/mi/appfinder/launcher/FinderController;->startFinderPage(Landroid/app/Activity;ZIIII)V

    const-string p0, "HomeFinderController"

    const-string p1, "checkGuide: start Finder page"

    .line 417
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$checkGuide$4(Lcom/mi/appfinder/launcher/FinderController$Callback;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 422
    invoke-interface {p0}, Lcom/mi/appfinder/launcher/FinderController$Callback;->requestFocus()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkGuide$5(Landroid/app/Activity;IIIILcom/mi/appfinder/launcher/FinderController$Callback;)V
    .locals 11

    const-string v1, "HomeFinderController"

    .line 405
    :try_start_0
    invoke-static {p1}, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->getFinderGuideShowInfo(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "show_guide"

    .line 413
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    sget-object v2, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->MAIN_EXECUTOR:Lcom/mi/appfinder/launcher/thread/LooperExecutor;

    new-instance v10, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda4;

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda4;-><init>(Lcom/mi/appfinder/launcher/FinderController;Landroid/app/Activity;IIII)V

    invoke-virtual {v2, v10}, Lcom/mi/appfinder/launcher/thread/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 420
    :cond_1
    sget-object v2, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->MAIN_EXECUTOR:Lcom/mi/appfinder/launcher/thread/LooperExecutor;

    new-instance v3, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda0;

    move-object/from16 v4, p6

    invoke-direct {v3, v4}, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda0;-><init>(Lcom/mi/appfinder/launcher/FinderController$Callback;)V

    invoke-virtual {v2, v3}, Lcom/mi/appfinder/launcher/thread/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 426
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider result: guide show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "get guide info via provider exception: "

    .line 407
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic lambda$initHomeFinder$0()V
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/mi/appfinder/launcher/FinderController;->isUserUnlock()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 152
    sput-boolean v1, Lcom/mi/appfinder/launcher/FinderController;->needSyncConfig:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lcom/mi/appfinder/launcher/FinderController;->syncFinderRemoteConfig(Z)Z

    move-result p0

    xor-int/2addr p0, v1

    sput-boolean p0, Lcom/mi/appfinder/launcher/FinderController;->needSyncConfig:Z

    return-void
.end method

.method private synthetic lambda$onPackageChanged$1()V
    .locals 1

    const/4 v0, 0x0

    .line 225
    sput-object v0, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->mContentUriFinderUi:Ljava/lang/String;

    const/4 v0, 0x1

    .line 226
    invoke-direct {p0, v0}, Lcom/mi/appfinder/launcher/FinderController;->syncFinderRemoteConfig(Z)Z

    const/4 p0, 0x0

    .line 227
    sput-boolean p0, Lcom/mi/appfinder/launcher/FinderController;->isFetching:Z

    return-void
.end method

.method private synthetic lambda$startActivityBySafe$2()V
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-direct {p0, v0}, Lcom/mi/appfinder/launcher/FinderController;->syncFinderRemoteConfig(Z)Z

    return-void
.end method

.method private startFinderPage(Landroid/app/Activity;ZIIII)V
    .locals 2

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mi.appfinder.intent.action.START_MASK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_focus"

    .line 336
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "key_dark"

    .line 337
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "key_background"

    .line 338
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "key_span"

    .line 339
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "key_alpha"

    .line 340
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getValidPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const p2, 0x8000

    .line 342
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000

    .line 343
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/mi/appfinder/launcher/FinderController;->startActivityBySafe(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method private syncFinderRemoteConfig(Z)Z
    .locals 4

    const-string v0, "HomeFinderController"

    const/4 v1, 0x0

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/mi/appfinder/launcher/FinderContentProviderHelper;->getFinderRemoteConfig(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const-string/jumbo v2, "version_enable"

    .line 444
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "service_enable"

    .line 445
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 446
    invoke-static {v2, p1}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->setFinderUIConfigSupport(ZZ)V

    .line 447
    invoke-static {p0}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->setFinderUIConfigAliveServiceEnable(Z)V

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider result: finder: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " service: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception p0

    const-string p1, "get result via provider exception: "

    .line 438
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/mi/appfinder/launcher/FinderController;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method public getMinusScreenPackage()Ljava/lang/String;
    .locals 5

    .line 298
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 300
    :cond_0
    sget-object v0, Lcom/mi/appfinder/launcher/FinderController;->mMinusScreenPackage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.mi.globalminusscreen"

    .line 303
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 304
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcom/mi/appfinder/launcher/FinderController;->mMinusScreenPackage:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "HomeFinderController"

    const-string v4, "Package not fount"

    .line 306
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    const-string v2, "com.mi.android.globalminusscreen"

    .line 308
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 309
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object p0, Lcom/mi/appfinder/launcher/FinderController;->mMinusScreenPackage:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "package not fount"

    .line 311
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    sput-object v1, Lcom/mi/appfinder/launcher/FinderController;->mMinusScreenPackage:Ljava/lang/String;

    .line 316
    :cond_1
    :goto_0
    sget-object p0, Lcom/mi/appfinder/launcher/FinderController;->mMinusScreenPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getValidPackageName()Ljava/lang/String;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderAppValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.mi.appfinder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getMinusScreenPackage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public initRecommendConfig(Z)V
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 349
    :cond_0
    sget-boolean p0, Lcom/mi/appfinder/launcher/FinderController;->isDeviceProvisioned:Z

    if-nez p0, :cond_1

    return-void

    .line 351
    :cond_1
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->getSettingRecommendAppEnable()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    .line 352
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->isRecommendAppMigrate()Z

    move-result p0

    if-nez p0, :cond_3

    .line 353
    :cond_2
    invoke-static {p1}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->setSettingRecommendAppEnable(Z)V

    const/4 p0, 0x1

    .line 354
    invoke-static {p0}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->setRecommendAppMigrate(Z)V

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initRecommendConfig: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HomeFinderController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public isDeviceValid()Z
    .locals 4

    .line 260
    sget v0, Lcom/mi/appfinder/launcher/FinderController;->mDeviceValid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isTablet()Z

    move-result v0

    const-string v3, "HomeFinderController"

    if-eqz v0, :cond_0

    const-string p0, "Tablet device."

    .line 262
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sput v1, Lcom/mi/appfinder/launcher/FinderController;->mDeviceValid:I

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isInternationalBuild()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Domestic build."

    .line 265
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sput v1, Lcom/mi/appfinder/launcher/FinderController;->mDeviceValid:I

    goto :goto_0

    .line 268
    :cond_1
    sput v2, Lcom/mi/appfinder/launcher/FinderController;->mDeviceValid:I

    .line 271
    :cond_2
    :goto_0
    sget p0, Lcom/mi/appfinder/launcher/FinderController;->mDeviceValid:I

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public isFinderAppValid()Z
    .locals 4

    .line 279
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 281
    :cond_0
    sget v0, Lcom/mi/appfinder/launcher/FinderController;->mFinderAppValid:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.mi.appfinder"

    .line 284
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 285
    sput v3, Lcom/mi/appfinder/launcher/FinderController;->mFinderAppValid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    const-string v0, "HomeFinderController"

    const-string v2, "Package not fount"

    .line 288
    invoke-static {v0, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    sput v1, Lcom/mi/appfinder/launcher/FinderController;->mFinderAppValid:I

    return v1

    .line 293
    :cond_1
    sget p0, Lcom/mi/appfinder/launcher/FinderController;->mFinderAppValid:I

    if-ne p0, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public isFinderSupport()Z
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HomeFinderController"

    if-nez v0, :cond_0

    const-string p0, "Finder not support for device invalid"

    .line 236
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderAppValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getMinusScreenPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Finder not support for package invalid"

    .line 243
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 248
    :cond_1
    invoke-direct {p0, v1}, Lcom/mi/appfinder/launcher/FinderController;->isAppFeatureValid(Z)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Finder not support for meta data invalid"

    .line 249
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 254
    :cond_2
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->isFinderUIConfigSupport()Z

    move-result p0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finder config support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isFold()Z
    .locals 1

    .line 92
    iget p0, p0, Lcom/mi/appfinder/launcher/FinderController;->mDeviceType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighEndDevice()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/mi/appfinder/launcher/FinderController;->mIsHighEndDevice:Z

    return p0
.end method

.method public isInternationalBuild()Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/mi/appfinder/launcher/FinderController;->mIsInternationalBuild:Z

    return p0
.end method

.method public isTablet()Z
    .locals 1

    .line 88
    iget p0, p0, Lcom/mi/appfinder/launcher/FinderController;->mDeviceType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplicationCreate(Landroid/app/Application;ZIZZ)V
    .locals 1

    .line 113
    iput-object p1, p0, Lcom/mi/appfinder/launcher/FinderController;->mApplication:Landroid/app/Application;

    .line 114
    iput-boolean p2, p0, Lcom/mi/appfinder/launcher/FinderController;->mDebug:Z

    .line 115
    iput p3, p0, Lcom/mi/appfinder/launcher/FinderController;->mDeviceType:I

    .line 116
    iput-boolean p4, p0, Lcom/mi/appfinder/launcher/FinderController;->mIsHighEndDevice:Z

    .line 117
    iput-boolean p5, p0, Lcom/mi/appfinder/launcher/FinderController;->mIsInternationalBuild:Z

    .line 119
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {p1}, Lcom/mi/appfinder/launcher/utils/AppInfoUtils;->isProvisioned(Landroid/content/Context;)Z

    move-result p2

    const-string p3, "HomeFinderController"

    const/4 p4, 0x1

    if-eqz p2, :cond_1

    const-string p1, "device provisioned"

    .line 125
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sput-boolean p4, Lcom/mi/appfinder/launcher/FinderController;->isDeviceProvisioned:Z

    .line 127
    invoke-direct {p0}, Lcom/mi/appfinder/launcher/FinderController;->initHomeFinder()V

    goto :goto_0

    .line 129
    :cond_1
    new-instance p2, Lcom/mi/appfinder/launcher/FinderController$1;

    new-instance p5, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p5, p1}, Lcom/mi/appfinder/launcher/FinderController$1;-><init>(Lcom/mi/appfinder/launcher/FinderController;Landroid/os/Handler;Landroid/app/Application;)V

    sput-object p2, Lcom/mi/appfinder/launcher/FinderController;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 141
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "device_provisioned"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lcom/mi/appfinder/launcher/FinderController;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p1, p4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "register provision observer"

    .line 142
    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onLauncherAsyncStart(Z)V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    sget-boolean v0, Lcom/mi/appfinder/launcher/FinderController;->isDeviceProvisioned:Z

    if-nez v0, :cond_1

    return-void

    .line 171
    :cond_1
    sget-boolean v0, Lcom/mi/appfinder/launcher/FinderController;->needSyncConfig:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/mi/appfinder/launcher/FinderController;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lcom/mi/appfinder/launcher/FinderController;->syncFinderRemoteConfig(Z)Z

    .line 173
    sput-boolean v0, Lcom/mi/appfinder/launcher/FinderController;->needSyncConfig:Z

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isFinderAppValid()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_4

    .line 178
    :cond_3
    invoke-direct {p0}, Lcom/mi/appfinder/launcher/FinderController;->bindVaultService()V

    :cond_4
    return-void
.end method

.method public onObtainLauncherEtFocusInFinderMode(Landroid/app/Activity;IIII)V
    .locals 9

    .line 200
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HomeFinderController"

    const-string v1, "click search box.."

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 202
    invoke-direct/range {v2 .. v8}, Lcom/mi/appfinder/launcher/FinderController;->startFinderPage(Landroid/app/Activity;ZIIII)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    sget-boolean v0, Lcom/mi/appfinder/launcher/FinderController;->isDeviceProvisioned:Z

    if-nez v0, :cond_1

    return-void

    .line 208
    :cond_1
    sget-boolean v0, Lcom/mi/appfinder/launcher/FinderController;->isFetching:Z

    if-eqz v0, :cond_2

    return-void

    .line 211
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "com.mi.appfinder"

    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->getValidPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageChanged fetching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", action: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HomeFinderController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 216
    sput-boolean p1, Lcom/mi/appfinder/launcher/FinderController;->isFetching:Z

    const/4 p2, -0x1

    .line 217
    sput p2, Lcom/mi/appfinder/launcher/FinderController;->mFinderAppValid:I

    const/4 v0, 0x0

    .line 218
    sput-object v0, Lcom/mi/appfinder/launcher/FinderController;->mMinusScreenPackage:Ljava/lang/String;

    .line 219
    sput p2, Lcom/mi/appfinder/launcher/FinderController;->mFinderFeatureCode:I

    .line 220
    invoke-direct {p0, p1}, Lcom/mi/appfinder/launcher/FinderController;->isAppFeatureValid(Z)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x0

    .line 221
    invoke-static {p2, p1}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->setFinderUIConfigSupport(ZZ)V

    .line 224
    :cond_5
    sget-object p1, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->THREAD_POOL_IO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda1;-><init>(Lcom/mi/appfinder/launcher/FinderController;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public onSwipeToAllApps(Landroid/app/Activity;IIIILcom/mi/appfinder/launcher/FinderController$Callback;)V
    .locals 8

    .line 184
    invoke-virtual {p0}, Lcom/mi/appfinder/launcher/FinderController;->isDeviceValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "HomeFinderController"

    const-string/jumbo v1, "swipe to drawer.."

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->isSettingQuickSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/settings/FinderGlobalConfig;->isSettingFinderQueryMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 190
    invoke-direct/range {v1 .. v7}, Lcom/mi/appfinder/launcher/FinderController;->startFinderPage(Landroid/app/Activity;ZIIII)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/mi/appfinder/launcher/FinderController;->checkGuide(Landroid/app/Activity;IIIILcom/mi/appfinder/launcher/FinderController$Callback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public startActivityBySafe(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "HomeFinderController"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 383
    :cond_1
    invoke-static {}, Lcom/mi/appfinder/launcher/storage/preference/FinderConfig;->isFinderUIConfigSupport()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "support while cannot found Finder page"

    .line 384
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget-object p1, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->THREAD_POOL_IO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/mi/appfinder/launcher/FinderController$$ExternalSyntheticLambda3;-><init>(Lcom/mi/appfinder/launcher/FinderController;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Finder page not fount"

    .line 389
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v1
.end method
