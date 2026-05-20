.class public Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;
.super Ljava/lang/Object;
.source "WindowTransitionCallbackHelper.java"


# static fields
.field private static final ALLOW_SHELL_FINISH_CALLBACK:Z = true

.field private static final FINISH_CALLBACK_TIME_OUT:I = 0x64

.field private static final FRAMEWORK_ENABLE_CALLBACK:Z

.field private static final IS_HYPER_TRANSITION_SUPPORT:Z

.field private static final MAX_POST_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TransitionCallback"

.field private static final USE_CONNECT_ANIM:Z

.field public static final WAIT_MERGE_ANIM_CALLBACK_TIME:I = 0x32

.field private static final sMainThreadExecutor:Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;


# instance fields
.field private volatile activityIsCloseType:Z

.field private volatile mConnectAnimRunning:Z

.field private final mCounterRotatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/util/CounterRotator;",
            ">;"
        }
    .end annotation
.end field

.field private mElementLeash:Landroid/view/SurfaceControl;

.field private mFinalWct:Landroid/window/WindowContainerTransaction;

.field private final mFinishCallbackTimeOut:Ljava/lang/Runnable;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private mHyperFinishToHome:Z

.field private volatile mHyperRemoteTransitionFinishedCallback:Landroid/window/IHyperRemoteTransitionFinishedCallback;

.field private final mInfoExposeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/hideapi/TransitionInfoExpose;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAllTransactionCallbacksExecuted:Z

.field private volatile mIsFinishCalled:Z

.field private volatile mIsHyperFinishTransitionBeenCalled:Z

.field private mIsMainAnimSplit:Z

.field private volatile mIsMainCallbackFinished:Z

.field private mIsNoNeedHandleMerge:Z

.field private volatile mIsStartedRecentTransition:Z

.field private final mLeashCacheMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private volatile mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field private mMainAnimToken:Landroid/os/IBinder;

.field private mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

.field private volatile mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field private volatile mMergeAnimToken:Landroid/os/IBinder;

.field private mNeedShowLauncher:Z

.field private final mNoCacheLeashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenLeash:Landroid/view/SurfaceControl;

.field private final mOpenMergeTaskId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenTaskId:I

.field private mRecentsMergeAnimToken:Landroid/os/IBinder;

.field private mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

.field private volatile mRemoteTransitionSynId:I

.field private mRoot:Landroid/view/SurfaceControl;

.field private final mTransactionCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitFinishCallback:Z

.field private mWaitFinishMainAnim:Z

.field private mWaitForAnimCallback:Z

.field private mWaitMergeAnimTimes:I

.field private final mWindowContainerTransactionCallback:Landroid/window/IWindowContainerTransactionCallback;

.field private final mWorkHandler:Landroid/os/Handler;

.field private volatile recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

.field private volatile taskId:I

.field private volatile useGesture:Z

.field private windowTransitionCompatCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;


# direct methods
.method public static synthetic $r8$lambda$8wlYbBQdRS7omI_M4iuzXgrJ6F8(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->clearAllLeashes()V

    return-void
.end method

.method public static synthetic $r8$lambda$J4jwt7ON9NMgFKUrmnb4-bNY7XQ(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->notifyFinishTransitionEnd()V

    return-void
.end method

.method public static synthetic $r8$lambda$NTIIqjI5ggEj0I4aQhF6DehaiGI(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$fcv7CiT33Q-Gz4OuXBwvLMVOK48(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->runnableExecuteFinish()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->sMainThreadExecutor:Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;

    .line 42
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isHyperTransitionSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->IS_HYPER_TRANSITION_SUPPORT:Z

    .line 43
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isFrameworkEnableCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->FRAMEWORK_ENABLE_CALLBACK:Z

    .line 45
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->enableConnectAnim()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->USE_CONNECT_ANIM:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mConnectAnimRunning:Z

    .line 59
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mInfoExposeList:Ljava/util/List;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mCounterRotatorList:Ljava/util/List;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNoCacheLeashList:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenMergeTaskId:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mTransactionCallbackList:Ljava/util/List;

    .line 93
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsNoNeedHandleMerge:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsStartedRecentTransition:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsFinishCalled:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsMainCallbackFinished:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mHyperFinishToHome:Z

    const/4 v0, -0x1

    .line 494
    iput v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->taskId:I

    .line 719
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishCallbackTimeOut:Ljava/lang/Runnable;

    .line 735
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishRunnable:Ljava/lang/Runnable;

    .line 751
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$1;-><init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWindowContainerTransactionCallback:Landroid/window/IWindowContainerTransactionCallback;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->windowTransitionCompatCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    .line 106
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getWorkHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isFrameworkEnableCallback = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->FRAMEWORK_ENABLE_CALLBACK:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionCallback"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishCallbackTimeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->notifyFinishTransitionEnd()V

    return-void
.end method

.method private addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallbackListenerSync callBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkCallbackSync()V
    .locals 5

    .line 798
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TransitionCallback"

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCallbackSync, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 800
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishMainAnim:Z

    const/4 v1, 0x1

    .line 801
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsAllTransactionCallbacksExecuted:Z

    .line 802
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    .line 806
    invoke-interface {v2}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    goto :goto_0

    .line 808
    :cond_0
    sget-object v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->sMainThreadExecutor:Lcom/android/systemui/shared/recents/utilities/MainThreadExecutor;

    invoke-virtual {v1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 810
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clearAllLeashes()V
    .locals 0

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->clearLeashMap()V

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->clearNoCacheList()V

    return-void
.end method

.method private clearLeashMap()V
    .locals 13

    .line 532
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 533
    :try_start_0
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 535
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move v1, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 536
    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/view/SurfaceControl;

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    .line 537
    invoke-virtual {v11}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v3, "remove"

    const-class v4, Landroid/view/SurfaceControl$Transaction;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Landroid/view/SurfaceControl;

    aput-object v2, v5, v9

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v11, v6, v9

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v12

    :cond_0
    const-string v2, "TransitionCallback"

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear leash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 544
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 546
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 547
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clearNoCacheList()V
    .locals 11

    .line 558
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 561
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNoCacheLeashList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move v1, v9

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    const-string v3, "TransitionCallback"

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNoCacheLeashList recycle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    .line 563
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v3, "remove"

    const-class v4, Landroid/view/SurfaceControl$Transaction;

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Landroid/view/SurfaceControl;

    aput-object v6, v5, v9

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v9

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v10

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 569
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 571
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNoCacheLeashList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 572
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clearTransitionInfo()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mInfoExposeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hideapi/TransitionInfoExpose;

    .line 552
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->releaseAllSurfaces()V

    goto :goto_0

    .line 554
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mInfoExposeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static enableConnectAnim()Z
    .locals 2

    .line 877
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "persist.miui.home_reuse_leash"

    .line 880
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private executeHyperFinishCallbackIfNeeded(Z)Z
    .locals 5

    const-string v0, "TransitionCallback"

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasHyperFinishCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMainFinishCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isRecentTransitionRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasRecentFinishController()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "executeHyperFinishCallback"

    .line 198
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsHyperFinishTransitionBeenCalled:Z

    .line 200
    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mHyperRemoteTransitionFinishedCallback:Landroid/window/IHyperRemoteTransitionFinishedCallback;

    iget v4, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRemoteTransitionSynId:I

    invoke-interface {v3, v4, p1}, Landroid/window/IHyperRemoteTransitionFinishedCallback;->onTransitionFinished(IZ)V

    const-string v3, "TransitionCallback_FW_FINISH"

    const-string v4, "executeHyperFinishCallbackIfNeeded: onTransitionFinished"

    .line 201
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mHyperFinishToHome:Z

    if-eqz p1, :cond_1

    .line 204
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNeedShowLauncher:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v3, "executeHyperFinishCallback error"

    .line 207
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mHyperRemoteTransitionFinishedCallback:Landroid/window/IHyperRemoteTransitionFinishedCallback;

    return v1

    :goto_1
    iput-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mHyperRemoteTransitionFinishedCallback:Landroid/window/IHyperRemoteTransitionFinishedCallback;

    .line 210
    throw p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private finishMainCallbackSync(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 7

    .line 378
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-eqz v0, :cond_5

    .line 381
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mCounterRotatorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 382
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 383
    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mCounterRotatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/util/CounterRotator;

    .line 384
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/util/CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mCounterRotatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz p1, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 392
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    move-object p1, v1

    .line 395
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " call finishMainCallback, wct = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", sct = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCounterRotatorList.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mCounterRotatorList:Ljava/util/List;

    .line 397
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mInfoExposeList.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mInfoExposeList:Ljava/util/List;

    .line 398
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", token = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimToken:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TransitionCallback"

    .line 395
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 400
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishCallback:Z

    .line 401
    sget-boolean v3, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->FRAMEWORK_ENABLE_CALLBACK:Z

    if-eqz v3, :cond_4

    .line 402
    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishCallbackTimeOut:Ljava/lang/Runnable;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWindowContainerTransactionCallback:Landroid/window/IWindowContainerTransactionCallback;

    invoke-direct {p0, v0, p2, p1, v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishTransitionAnimationCallback(Landroid/window/IRemoteTransitionFinishedCallback;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V

    .line 405
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsMainCallbackFinished:Z

    .line 406
    iput-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 407
    iput-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimToken:Landroid/os/IBinder;

    .line 408
    iput-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRoot:Landroid/view/SurfaceControl;

    const/4 p1, 0x0

    .line 409
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsNoNeedHandleMerge:Z

    .line 410
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsMainAnimSplit:Z

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->clearTempSaveOpenLeash()V

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->clearTempSaveElementLeash()V

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->clearTransitionInfo()V

    :cond_5
    return-void
.end method

.method private finishMergeCallbackSync()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-eqz v0, :cond_0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call finishMergeCallback, callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMergeAnimToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionCallback"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 370
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishTransitionAnimationCallback(Landroid/window/IRemoteTransitionFinishedCallback;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V

    .line 371
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 372
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMergeAnimToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method private finishTransitionAnimationCallback(Landroid/window/IRemoteTransitionFinishedCallback;Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V
    .locals 6

    const-string v0, "onTransitionFinished finally call notifyFinishTransitionEnd"

    const-string v1, "TransitionCallback"

    if-nez p1, :cond_0

    const-string p0, "finishTransitionAnimationCallback callback is null"

    .line 422
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "finishTransitionAnimationCallback fail"

    const-string v3, "call onTransitionFinished end"

    const-string v4, "TransitionCallback_FW_FINISH"

    if-eqz p4, :cond_4

    .line 425
    sget-boolean v5, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->FRAMEWORK_ENABLE_CALLBACK:Z

    if-nez v5, :cond_1

    goto :goto_2

    .line 442
    :cond_1
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinishedWithCallback(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/IWindowContainerTransactionCallback;)V

    const-string p4, "call onTransitionFinishedWithCallback end"

    .line 443
    invoke-static {v4, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_7

    .line 458
    :goto_0
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_4

    :catchall_0
    move-exception p4

    .line 445
    :try_start_1
    invoke-static {v4, v2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    instance-of p4, p4, Ljava/lang/NoSuchMethodError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p4, :cond_2

    .line 448
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 449
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    const-string p2, "finishTransitionAnimationCallback again fail"

    .line 451
    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const-string p1, "onTransitionFinishedWithCallback err, call notifyFinishTransitionEnd"

    .line 454
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p3, :cond_7

    goto :goto_0

    :catchall_2
    move-exception p0

    if-eqz p3, :cond_3

    .line 458
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 460
    :cond_3
    throw p0

    .line 427
    :cond_4
    :goto_2
    :try_start_4
    invoke-interface {p1, p2, p3}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 428
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p4, :cond_5

    .line 433
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    if-eqz p3, :cond_7

    .line 437
    :goto_3
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_4

    :catchall_3
    move-exception p1

    .line 430
    :try_start_5
    invoke-static {v4, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p4, :cond_6

    .line 433
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    return-void

    :catchall_4
    move-exception p1

    if-eqz p4, :cond_8

    .line 433
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    if-eqz p3, :cond_9

    .line 437
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 439
    :cond_9
    throw p1
.end method

.method private static isFrameworkEnableCallback()Z
    .locals 2

    const-string v0, "ro.miui.shell_anim_enable_fcb"

    const/4 v1, 0x0

    .line 884
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isHyperTransitionSupport()Z
    .locals 3

    const-string v0, "persist.sys.hyper_transition_v"

    const/4 v1, 0x0

    .line 888
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const-string v0, "TransitionCallback"

    const-string/jumbo v1, "wait finish transition callback timeout"

    .line 720
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->notifyFinishTransitionEnd()V

    return-void
.end method

.method private notifyFinishTransitionEnd()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishCallback:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 727
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishCallback:Z

    .line 729
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->checkCallbackSync()V

    .line 731
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onlyFinishRecentsIfNeeded(ZZZI)Z
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMainFinishCallback()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "TransitionCallback_FW_FINISH"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMergeFinishCallback()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onlyFinishRecentsForSosc toHome = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {p2, p4, v2, p1, v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finishForSosc(IZZZ)V

    goto :goto_0

    :cond_0
    const-string p3, "onlyFinishRecents"

    .line 182
    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {p3, p1, p2, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finish(ZZLcom/android/internal/os/IResultReceiver;)V

    .line 185
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->checkCallbackSync()V

    return v0

    .line 188
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p3, :cond_2

    const-string p3, "FinishRecentsController"

    .line 189
    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finish(ZZLcom/android/internal/os/IResultReceiver;)V

    :cond_2
    return v2
.end method

.method private runnableExecuteFinish()V
    .locals 4

    .line 738
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TransitionCallback"

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFinishRunnable run is waitFinishMainAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishMainAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishMainAnim:Z

    if-eqz v1, :cond_0

    .line 741
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishMergeCallbackSync()V

    .line 742
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinalWct:Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishMainCallbackSync(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    const/4 v1, 0x0

    .line 743
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    .line 744
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinalWct:Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_0
    const-string p0, "TransitionCallback"

    const-string v1, "postDelay but mWaitFinishMainAnim is false"

    .line 746
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addCounterRotator(Lcom/android/wm/shell/util/CounterRotator;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mCounterRotatorList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mInfoExposeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addTaskId(I)V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenMergeTaskId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public buildToHomeFinishTransaction(Landroid/window/TransitionInfo;ZZ)Landroid/view/SurfaceControl$Transaction;
    .locals 8

    .line 910
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 911
    :goto_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 912
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    const/4 v3, 0x2

    .line 913
    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v4

    const-string v5, "TransitionCallback"

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 914
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const-string v2, "buildToHomeTransaction, create sct to show wallpaper"

    .line 915
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 918
    :cond_0
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 922
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v4

    if-ne v4, v3, :cond_2

    if-eqz p2, :cond_2

    const-string v3, "buildToHomeTransaction, create sct to show launcher"

    .line 924
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 926
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    if-eqz p3, :cond_3

    const-string v3, "buildToHomeTransaction, create sct to hide app"

    .line 928
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public canNoStartActivity()Z
    .locals 2

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useGesture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->useGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activityIsCloseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->activityIsCloseType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->useGesture:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->activityIsCloseType:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkAndFinishTransitionIfHyperFinish(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z
    .locals 2

    .line 892
    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsHyperFinishTransitionBeenCalled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 895
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mHyperFinishToHome:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p0, p4, p1, p1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->buildToHomeFinishTransaction(Landroid/window/TransitionInfo;ZZ)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 898
    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 899
    invoke-interface {p2, v1, p0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    const-string p0, "TransitionCallback_FW_FINISH"

    const-string p2, "checkAndFinishTransitionIfHyperFinish: "

    .line 900
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p2, "TransitionCallback"

    const-string p3, "finish transition error."

    .line 902
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkHandlerRunnable()V
    .locals 4

    .line 772
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    sget-boolean v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->IS_HYPER_TRANSITION_SUPPORT:Z

    if-eqz v1, :cond_0

    const-string p0, "TransitionCallback"

    const-string v1, "checkHandlerRunnable is hyper transition support, do nothing."

    .line 774
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    monitor-exit v0

    return-void

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TransitionCallback"

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHandlerRunnable has mFinishRunnable in handler, times = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitMergeAnimTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitMergeAnimTimes:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 780
    iput v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitMergeAnimTimes:I

    .line 781
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 782
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p0, "TransitionCallback"

    const-string v1, "checkHandlerRunnable no mFinishRunnable in handler"

    .line 785
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearTempSaveElementLeash()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 833
    :try_start_0
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mElementLeash:Landroid/view/SurfaceControl;

    .line 834
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearTempSaveOpenLeash()V
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 825
    :try_start_0
    iput-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenLeash:Landroid/view/SurfaceControl;

    const/4 v1, -0x1

    .line 826
    iput v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenTaskId:I

    .line 827
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenMergeTaskId:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 828
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsTaskId(I)Z
    .locals 3

    .line 690
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenTaskId:I

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    .line 692
    monitor-exit v0

    return v2

    .line 694
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenMergeTaskId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 695
    monitor-exit v0

    return v2

    :cond_1
    const/4 p0, 0x0

    .line 697
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 698
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public directExecuteWorkHandlerFinishRunnableIfNeed()V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishMainAnim:Z

    if-eqz v1, :cond_0

    const-string v1, "TransitionCallback"

    const-string v2, "directExecuteWorkHandlerFinishRunnable"

    .line 764
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->runnableExecuteFinish()V

    .line 768
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public executeFinishCallback(ZZILandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 173
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->executeFinishCallback(ZZILandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ZZ)V

    return-void
.end method

.method public executeFinishCallback(ZZILandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ZZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    .line 228
    iget-object v3, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v0, "TransitionCallback"

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call executeFinishCallback, toHome = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    iget-boolean v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsFinishCalled:Z

    if-eqz v0, :cond_2

    .line 231
    iget-boolean v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsAllTransactionCallbacksExecuted:Z

    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    .line 233
    invoke-interface/range {p5 .. p5}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    const-string v0, "TransitionCallback"

    const-string v1, "mTransactionCallbackList has been called, execute directly!"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mTransactionCallbackList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    :cond_1
    :goto_0
    const-string v0, "TransitionCallback"

    const-string v1, "mIsFinishCalled is true, return!"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v3

    return-void

    .line 244
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMainFinishCallback()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMergeFinishCallback()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasHyperFinishCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    :cond_3
    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsFinishCalled:Z

    .line 249
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isRecentTransitionRequested()Z

    move-result v0

    if-nez v0, :cond_5

    move v5, v4

    .line 252
    :cond_5
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->windowTransitionCompatCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    .line 253
    invoke-direct {v1, v5}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->executeHyperFinishCallbackIfNeeded(Z)Z

    move/from16 v0, p2

    move/from16 v6, p3

    move/from16 v7, p7

    .line 254
    invoke-direct {v1, v5, v7, v0, v6}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->onlyFinishRecentsIfNeeded(ZZZI)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "TransitionCallback"

    const-string v1, "onlyFinishRecentsIfNeeded return!"

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit v3

    return-void

    .line 258
    :cond_6
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-nez v0, :cond_9

    const-string v0, "TransitionCallback"

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call executeFinishCallback, mMainAnimFinishCallback is null, waitFinishCallback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishCallback:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishCallback:Z

    if-eqz v0, :cond_7

    .line 261
    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 264
    invoke-interface/range {p5 .. p5}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    .line 266
    :cond_8
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->windowTransitionCompatCallback:Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;->onFinish()V

    .line 268
    :goto_1
    monitor-exit v3

    return-void

    .line 270
    :cond_9
    iget-boolean v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishMainAnim:Z

    if-eqz v0, :cond_b

    .line 271
    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    if-eqz p6, :cond_a

    const-string v0, "TransitionCallback"

    const-string v1, "now is wait for finish main, can\' finish right now"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v0, "TransitionCallback"

    const-string v2, "mWaitFinishMainAnim but no wait, finish direct"

    .line 275
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->runnableExecuteFinish()V

    .line 279
    :goto_2
    monitor-exit v3

    return-void

    .line 281
    :cond_b
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    const/4 v6, 0x2

    const/4 v8, 0x0

    if-eqz v0, :cond_14

    if-nez v5, :cond_11

    if-nez p4, :cond_c

    .line 286
    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    goto :goto_3

    :cond_c
    move-object/from16 v5, p4

    .line 288
    :goto_3
    new-instance v9, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v9}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    move v10, v8

    .line 289
    :goto_4
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_10

    .line 290
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    .line 291
    invoke-virtual {v9, v11}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;->test(Landroid/window/TransitionInfo$Change;)Z

    move-result v12

    .line 292
    invoke-static {v11}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(Landroid/window/TransitionInfo$Change;)Z

    move-result v13

    const-string v14, "TransitionCallback"

    .line 293
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "foreach changes, i = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isLeafChange = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isClosingType = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_f

    if-eqz v13, :cond_f

    .line 296
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 297
    invoke-static {v7}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v7

    if-ne v7, v6, :cond_d

    goto :goto_6

    .line 303
    :cond_d
    invoke-static {v11, v5}, Lcom/android/wm/shell/util/TransitionUtil;->reorderWindow(Landroid/window/TransitionInfo$Change;Landroid/window/WindowContainerTransaction;)V

    .line 304
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 305
    iget-object v7, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRecentsMergeAnimToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 306
    :try_start_1
    new-instance v9, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v9}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 307
    :try_start_2
    invoke-virtual {v9, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    const-string v0, "TransitionCallback"

    .line 308
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "before call addToFinishTransaction, change = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", token = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", wct = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", sct = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v7, v9}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :try_start_3
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 306
    :try_start_4
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_5
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    :try_start_6
    const-string v7, "TransitionCallback"

    const-string v9, "call addToFinishTransaction fail"

    .line 312
    invoke-static {v7, v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_e
    :goto_6
    const-string v7, "TransitionCallback"

    const-string/jumbo v11, "taskInfo == null or no standard type, continue"

    .line 299
    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :cond_10
    :goto_7
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_a

    .line 318
    :cond_11
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result v5

    if-nez v5, :cond_12

    move v5, v4

    goto :goto_8

    :cond_12
    move v5, v8

    :goto_8
    const-string v7, "TransitionCallback"

    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mNeedShowLauncher = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNeedShowLauncher:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v7, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNeedShowLauncher:Z

    if-eqz v7, :cond_13

    .line 321
    iput-boolean v8, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNeedShowLauncher:Z

    .line 322
    iput-boolean v8, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitForAnimCallback:Z

    .line 323
    invoke-virtual {v1, v0, v4, v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->buildToHomeFinishTransaction(Landroid/window/TransitionInfo;ZZ)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    move v8, v5

    goto :goto_9

    :cond_13
    move v8, v5

    const/4 v0, 0x0

    :goto_9
    const/4 v7, 0x0

    move-object/from16 v5, p4

    .line 326
    :goto_a
    iput-object v7, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    .line 327
    iput-object v7, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRecentsMergeAnimToken:Landroid/os/IBinder;

    move-object v7, v0

    goto :goto_b

    :cond_14
    const/4 v7, 0x0

    move-object/from16 v5, p4

    .line 329
    :goto_b
    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addCallbackListenerSync(Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    if-eqz p6, :cond_16

    if-eqz v8, :cond_16

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMergeFinishCallback()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishMergeCallbackSync()V

    .line 332
    iput-boolean v4, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishMainAnim:Z

    .line 333
    iput-object v7, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    .line 334
    iput-object v5, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinalWct:Landroid/window/WindowContainerTransaction;

    .line 335
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->IS_HYPER_TRANSITION_SUPPORT:Z

    if-eqz v0, :cond_15

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->runnableExecuteFinish()V

    const-string v0, "TransitionCallback"

    const-string v1, "set is waitFinishMainAnim true, hyper transition support, execute directly!"

    .line 337
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 339
    :cond_15
    iget-object v0, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    iput v6, v1, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitMergeAnimTimes:I

    const-string v0, "TransitionCallback"

    const-string v1, "set is waitFinishMainAnim true, postDelayed"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 344
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishMergeCallbackSync()V

    .line 345
    invoke-direct {v1, v7, v5}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishMainCallbackSync(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    const-string v0, "TransitionCallback"

    const-string v1, "execute finishMainCallbackSync return, no need post delay"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_c
    monitor-exit v3

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public executeFinishCallback(ZZZI)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v7, p2

    .line 164
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->executeFinishCallback(ZZILandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ZZ)V

    return-void
.end method

.method public executeFinishCallbackDirect()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    .line 168
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->executeFinishCallback(ZZILandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ZZ)V

    return-void
.end method

.method public findHomeSurfaceControl()Landroid/view/SurfaceControl;
    .locals 5

    .line 838
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mInfoExposeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hideapi/TransitionInfoExpose;

    .line 840
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->unbox()Landroid/window/TransitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 841
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 843
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v4

    .line 844
    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 845
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    .line 849
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 850
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finishMergeCallback()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishMergeCallbackSync()V

    .line 362
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getElementLeash()Landroid/view/SurfaceControl;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mElementLeash:Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 710
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLeashFromCache(Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 1

    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 590
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMainToken()Landroid/os/IBinder;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimToken:Landroid/os/IBinder;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMergeToken()Landroid/os/IBinder;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMergeAnimToken:Landroid/os/IBinder;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 605
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getOpenLeash()Landroid/view/SurfaceControl;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenLeash:Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 704
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRoot()Landroid/view/SurfaceControl;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRoot:Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 617
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTaskId()I
    .locals 2

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTaskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->taskId:I

    return p0
.end method

.method public getWorkHandler()Landroid/os/Handler;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public hasFinishHyperCallback()Z
    .locals 0

    .line 940
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsHyperFinishTransitionBeenCalled:Z

    return p0
.end method

.method public hasHyperFinishCallback()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mHyperRemoteTransitionFinishedCallback:Landroid/window/IHyperRemoteTransitionFinishedCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 479
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasMainFinishCallback()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 473
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasMergeFinishCallback()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasRecentFinishController()Z
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFinishCalled()Z
    .locals 0

    .line 936
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsFinishCalled:Z

    return p0
.end method

.method public isMainAnimSplit()Z
    .locals 0

    .line 854
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsMainAnimSplit:Z

    return p0
.end method

.method public isMainCallbackFinished()Z
    .locals 0

    .line 514
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsMainCallbackFinished:Z

    return p0
.end method

.method public isNoNeedHandleMerge()Z
    .locals 0

    .line 869
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsNoNeedHandleMerge:Z

    return p0
.end method

.method public isRecentTransitionRequested()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsStartedRecentTransition:Z

    return p0
.end method

.method public isWaitFinishMainAnim()Z
    .locals 4

    .line 791
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TransitionCallback"

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get is waitFinishMainAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishMainAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishMainAnim:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 794
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public lastAnimIsOpenAppAnim()Z
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    if-eqz p0, :cond_0

    .line 670
    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 672
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public launcherOnNewIntent(Z)V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 648
    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNeedShowLauncher:Z

    .line 649
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitForAnimCallback:Z

    const-string p0, "TransitionCallback"

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedShowLauncher = true, waitFrameworkAnimCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public mainAnimNoFinishClear()Z
    .locals 5

    const-string v0, "TransitionCallback"

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainAnimNoFinishClear ALLOW_SHELL_FINISH_CALLBACK=true, mMainAnimFinishCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWaitFinishCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishCallback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    if-nez v1, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitFinishCallback:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    .line 491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public mergeStartT(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    if-nez v1, :cond_0

    .line 816
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainFinishSCT:Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 820
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFrameWorkAnimCall()V
    .locals 4

    .line 656
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitForAnimCallback:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "TransitionCallback"

    const-string v3, "onFrameWorkAnimCall mWaitForAnimCallback is true"

    .line 658
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iput-boolean v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mWaitForAnimCallback:Z

    .line 660
    monitor-exit v0

    return-void

    .line 662
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNeedShowLauncher:Z

    const-string p0, "TransitionCallback"

    const-string v1, "mNeedShowLauncher = false"

    .line 663
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStartRecentTransition()V
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsStartedRecentTransition:Z

    return-void
.end method

.method public removeLeashFromCache(Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 1

    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 581
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public saveLeash(Ljava/lang/String;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 598
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLeashCacheMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setActivityIsCloseType(Z)V
    .locals 2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActivityIsCloseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->activityIsCloseType:Z

    return-void
.end method

.method public setHyperRemoteTransitionFinishedCallback(Landroid/window/IHyperRemoteTransitionFinishedCallback;I)V
    .locals 0

    .line 119
    iput p2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRemoteTransitionSynId:I

    .line 120
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mHyperRemoteTransitionFinishedCallback:Landroid/window/IHyperRemoteTransitionFinishedCallback;

    return-void
.end method

.method public setMainAnimNoNeedMerge(Ljava/lang/String;)V
    .locals 2

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMainAnimNoNeedMerge hasMainFinishCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMainFinishCallback()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasMergeFinishCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMergeFinishCallback()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransitionCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMainFinishCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMergeFinishCallback()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 864
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsNoNeedHandleMerge:Z

    :cond_0
    return-void
.end method

.method public setMainAnimSplit()V
    .locals 1

    const/4 v0, 0x1

    .line 858
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mIsMainAnimSplit:Z

    return-void
.end method

.method public setMainFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TransitionCallback"

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " setMainFinishCallback, token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMainAnimToken:Landroid/os/IBinder;

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TransitionCallback"

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " setMergeFinishCallback, token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMergeAnimToken:Landroid/os/IBinder;

    .line 135
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mMergeAnimFinishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOpenTaskId(I)V
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOpenTaskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iput p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->taskId:I

    return-void
.end method

.method public setRecentFinishController(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eq p1, v1, :cond_0

    .line 142
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->recentFinishController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    .line 144
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setRoot(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRoot:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TransitionCallback"

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " setTransitionInfo token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRecentsMergeAnimToken:Landroid/os/IBinder;

    .line 155
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mRecentsMergeTransitionInfo:Landroid/window/TransitionInfo;

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUseGesture(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->useGesture:Z

    return-void
.end method

.method public tempSaveElementLeash(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mElementLeash:Landroid/view/SurfaceControl;

    .line 686
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public tempSaveLeash(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mNoCacheLeashList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public tempSaveOpenLeash(ILandroid/view/SurfaceControl;)V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenLeash:Landroid/view/SurfaceControl;

    .line 679
    iput p1, p0, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mOpenTaskId:I

    .line 680
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
