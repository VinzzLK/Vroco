.class public Lcom/miui/home/recents/TouchInteractionService;
.super Landroid/app/Service;
.source "TouchInteractionService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

.field public static final GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

.field public static final MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

.field public static REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static mGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

.field private static sConnected:Z

.field private static sGesturePriorityHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mIsRegister:Z

.field private mIsUserUnlocked:Z

.field private final mMyBinder:Landroid/os/IBinder;

.field private mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

.field private mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

.field private mSystemUiStateFlags:I

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$oygAaLSU_v48GwJ8XCudlya2DG8(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->lambda$preloadOverview$0(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->ajc$preClinit()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    const-string v1, "d13a661162ccf33e59f2d5aed8ad9c44"

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    const-string v1, "098ef03a15eaf14dfe66a596cf0eb510"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    const-string v1, "d2cd6fefd08f4b7220218cc694982d1b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    const-string v1, "94149db1c5119712284864d32439cba4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->REMOVE_GESTURE_PRIORITY_THREAD_DEVICE_LIST:Ljava/util/List;

    const-string v1, "a184a9cb7bc303842df1af906c224c34"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    .line 89
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getGestureSecondaryLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    .line 90
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 91
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getGestureExecutor()Lcom/miui/home/library/utils/LooperExecutor;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->GESTURE_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    const/4 v0, 0x0

    .line 262
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 144
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$1;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    .line 273
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$2;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$3;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$3;-><init>(Lcom/miui/home/recents/TouchInteractionService;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/TouchInteractionService;)Lcom/miui/home/recents/OverviewCommandHelper;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/TouchInteractionService;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/TouchInteractionService;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->readyToStartCtS()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->onSystemUiFlagsChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/TouchInteractionService;Landroid/content/res/Configuration;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/miui/home/recents/TouchInteractionService;->preloadOverview(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->updateAssistantOverridesRequested()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initWhenUserUnlocked()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/recents/TouchInteractionService;

    const-string v1, "TouchInteractionService.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "onConfigurationChanged"

    const-string v3, "com.miui.home.recents.TouchInteractionService"

    const-string v4, "android.content.res.Configuration"

    const-string v5, "newConfig"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x189

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static getGestureExecutor()Lcom/miui/home/library/utils/LooperExecutor;
    .locals 1

    .line 119
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    .line 120
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    return-object v0
.end method

.method public static getGestureSecondaryLooper()Landroid/os/Looper;
    .locals 3

    .line 101
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->mGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x8

    const-string v2, "FsGestureSecondaryThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/TouchInteractionService;->mGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    .line 104
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->mGestureSecondaryHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorityThreadId()I
    .locals 1

    .line 138
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->sGesturePriorityHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private initCts()V
    .locals 3

    .line 303
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->hasCircleToSearchFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_pendding_intent_click_circle_search"

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/miui/home/recents/TouchInteractionService;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 311
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->registerSearchScreenSystemAction()V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsRegister:Z

    :cond_0
    return-void
.end method

.method private initWhenUserUnlocked()V
    .locals 2

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    .line 334
    invoke-static {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    .line 335
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->updateOverviewTargets()V

    .line 337
    new-instance v0, Lcom/miui/home/recents/OverviewCommandHelper;

    iget-object v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/OverviewCommandHelper;-><init>(Landroid/content/Context;Lcom/miui/home/recents/OverviewComponentObserver;)V

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewCommandHelper:Lcom/miui/home/recents/OverviewCommandHelper;

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static isUseGesturePriorityThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$preloadOverview$0(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "TouchInteractionService"

    const-string v1, "preloadOverview: startRecentsActivity"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    .line 437
    invoke-virtual {v0, p0, v1, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)V

    return-void
.end method

.method static final synthetic onConfigurationChanged_aroundBody0(Lcom/miui/home/recents/TouchInteractionService;Landroid/content/res/Configuration;Lorg/aspectj/lang/JoinPoint;)V
    .locals 1

    .line 393
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p2, "TouchInteractionService"

    const-string v0, "onConfigurationChanged"

    .line 394
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0, p1}, Lcom/miui/home/recents/TouchInteractionService;->preloadOverview(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private onSystemUiFlagsChanged()V
    .locals 3

    .line 347
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiFlagsChanged, mSystemUiStateFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchInteractionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl;->onSystemUiFlagsChanged(I)V

    :cond_0
    return-void
.end method

.method private preloadOverview(Landroid/content/res/Configuration;)V
    .locals 4

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadOverview: mIsUserUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 404
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/recents/UserSetupCompleteHelper;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "stop preloadOverview: isUserSetupComplete."

    .line 405
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getHomePackageName()Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloadOverview: homePackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android"

    .line 413
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.provision"

    .line 414
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 418
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    .line 419
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 420
    invoke-virtual {v2}, Lcom/miui/home/launcher/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "stop preloadOverview: Launcher isStart."

    .line 421
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 425
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 426
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    .line 425
    invoke-virtual {v0, v3, p1}, Lcom/miui/home/recents/OverviewComponentObserver;->canHandleConfigChanges(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "stop preloadOverview: canHandleConfigChanges."

    .line 427
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 432
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    .line 433
    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->getMyHomeComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    .line 434
    sget-object p1, Lcom/miui/home/recents/util/Executors;->UI_HELPER_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/TouchInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/TouchInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private readyToStartCtS()V
    .locals 2

    .line 450
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mSystemUiStateFlags:I

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->invokeCircleToSearch(Landroid/content/Context;II)Z

    return-void
.end method

.method private registerSearchScreenSystemAction()V
    .locals 6

    .line 455
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action_pendding_intent_click_circle_search"

    .line 457
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x65

    const/high16 v2, 0x4000000

    .line 458
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSystemAction pendingIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchInteractionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v1, Landroid/app/RemoteAction;

    .line 465
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802bf

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 466
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1004dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 470
    invoke-static {}, Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;->registerSearchScreenSystemAction(Landroid/view/accessibility/AccessibilityManager;Landroid/app/RemoteAction;)V

    return-void
.end method

.method private updateAssistantOverridesRequested()V
    .locals 3

    .line 442
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/cts/CircleToSearchHelper;->hasCircleToSearchFeature(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TouchInteractionService"

    const-string v0, "updateAssistantOverridesRequested"

    .line 444
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->setAssistantOverridesRequested([I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TouchInteractionService"

    const-string v0, "Touch service connected"

    .line 387
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p0, p0, Lcom/miui/home/recents/TouchInteractionService;->mMyBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 393
    invoke-static {}, Lcom/miui/home/safemode/SafeModeAspect;->aspectOf()Lcom/miui/home/safemode/SafeModeAspect;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object v0, v2, p0

    new-instance p0, Lcom/miui/home/recents/TouchInteractionService$AjcClosure1;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/TouchInteractionService$AjcClosure1;-><init>([Ljava/lang/Object;)V

    const p1, 0x11010

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;->linkClosureAndJoinPoint(I)Lorg/aspectj/lang/ProceedingJoinPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/safemode/SafeModeAspect;->replaceSafeMethod(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 288
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 290
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDeviceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initWhenUserUnlocked()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    .line 294
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    .line 297
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    const-string v0, "TouchInteractionService"

    const-string v1, "onCreate"

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/miui/home/recents/TouchInteractionService;->initCts()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "TouchInteractionService"

    const-string v1, "TouchInteractionService::onDestroy"

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 365
    sput-boolean v0, Lcom/miui/home/recents/TouchInteractionService;->sConnected:Z

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :catch_0
    iget-boolean v1, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsRegister:Z

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/miui/home/recents/TouchInteractionService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    invoke-static {}, Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/TouchInteractionService;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/system/AccessibilityManagerWrapper;->unregisterSearchScreenSystemAction(Landroid/view/accessibility/AccessibilityManager;)V

    .line 374
    iput-boolean v0, p0, Lcom/miui/home/recents/TouchInteractionService;->mIsRegister:Z

    .line 377
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 379
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->unregisterRemoteTransitions()V

    .line 382
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
