.class Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;
.super Landroid/window/IRemoteTransition$Stub;
.source "RemoteAnimationAdapterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->wrapRemoteTransition(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/window/IRemoteTransition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

.field final synthetic val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;


# direct methods
.method public static synthetic $r8$lambda$R0o7fXmDddOLRdrVzr0J5UCH-rQ(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->lambda$startAnimation$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gXH3A-YP_BMWcrg0lkGew6fh9Kw()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->lambda$mergeAnimation$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V
    .locals 1

    .line 185
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 188
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    .line 189
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "no home or other case, finish main anim, merge anim to main anim"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 617
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    .line 619
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->stopRunningAnim()V

    return-void
.end method

.method private static synthetic lambda$mergeAnimation$1()V
    .locals 2

    const-string v0, "ActivityOptionsCompat"

    const-string v1, "merge open anim call end runnable"

    .line 590
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$startAnimation$0(Landroid/os/IBinder;)V
    .locals 3

    .line 333
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->USE_CONNECT_ANIM:Z

    const-string v1, "ActivityOptionsCompat"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    .line 334
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isConnectAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "before onAnimationFinished, but connect anim is running, wait for connect anim finish to call, return"

    .line 335
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "before onAnimationFinished, but has merge finish callback, return"

    .line 340
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before execute token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getMainToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 346
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    :cond_2
    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    const-string v3, "RemoteAnimationAdapterCompat"

    const-string v4, "HomeShellTransition IRemoteTransition mergeAnimation"

    .line 359
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->printLeash(Landroid/window/TransitionInfo;)V

    .line 363
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 364
    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->onFrameWorkAnimCall()V

    .line 365
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isWaitFinishMainAnim()Z

    move-result v3

    const/4 v14, 0x3

    const/4 v8, 0x1

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 369
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_3

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 371
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    const-string v7, "RemoteAnimationAdapterCompat"

    .line 372
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mergeAnimation isWaitFinishMainAnim, mode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " ,taskInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 372
    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v8, :cond_1

    if-eq v6, v14, :cond_1

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v6, 0x100000

    .line 382
    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v8

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-nez v5, :cond_2

    move v3, v8

    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    const-string v5, "RemoteAnimationAdapterCompat"

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mergeAnimation needHandler = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    if-nez v4, :cond_5

    .line 392
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 393
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v2, v0, v10}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    if-eqz v9, :cond_4

    .line 395
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0, v9}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mergeStartT(Landroid/view/SurfaceControl$Transaction;)V

    .line 397
    :cond_4
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallback()V

    .line 398
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->checkHandlerRunnable()V

    goto :goto_2

    .line 400
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 402
    :goto_2
    monitor-exit v11

    return-void

    .line 404
    :cond_6
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMainFinishCallback()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "mergeAnimation but main anim is finish, abort"

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 408
    monitor-exit v11

    return-void

    .line 411
    :cond_7
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    .line 412
    invoke-virtual {v3, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getIRecentsAnimationController(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;

    move-result-object v12

    const-string v3, "RemoteAnimationAdapterCompat"

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIRecentsAnimationController = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    if-nez v12, :cond_d

    .line 416
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->lastAnimIsOpenAppAnim()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getOpenLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v3, "lastAnimIsOpenAppAnim"

    .line 417
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 419
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    const-string v5, "RemoteAnimationAdapterCompat"

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_9

    .line 422
    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 423
    :cond_9
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-eq v5, v8, :cond_a

    if-eq v5, v14, :cond_a

    goto :goto_3

    .line 426
    :cond_a
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v4, :cond_b

    .line 428
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v5, "RemoteAnimationAdapterCompat"

    const-string v6, "is open"

    .line 429
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v5, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->containsTaskId(I)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "RemoteAnimationAdapterCompat"

    const-string v6, "!containsTaskId"

    .line 431
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v5, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getOpenLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 433
    iget-object v5, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addTaskId(I)V

    :cond_b
    const/high16 v4, 0x3f800000    # 1.0f

    .line 436
    invoke-virtual {v9, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 437
    invoke-virtual {v9, v3, v8}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    .line 443
    :cond_c
    invoke-virtual {v9, v8}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :try_start_1
    invoke-interface {v10, v13, v13}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    const-string v0, "RemoteAnimationAdapterCompat_FW_FINISH"

    const-string/jumbo v3, "special case, onTransitionFinished  end"

    .line 446
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "RemoteAnimationAdapterCompat_FW_FINISH"

    const-string/jumbo v4, "special case, onTransitionFinished fail"

    .line 448
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    :goto_4
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 451
    monitor-exit v11

    return-void

    .line 453
    :cond_d
    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v7

    .line 460
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    .line 462
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_18

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/window/TransitionInfo$Change;

    .line 464
    sget v8, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v14, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v4, "RemoteAnimationAdapterCompat"

    const-string v8, "has flag FLAG_TRANSIT_IN_SOSC"

    .line 465
    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v5

    move-object/from16 v27, v12

    move/from16 v23, v13

    move/from16 v21, v15

    const/4 v12, 0x1

    goto/16 :goto_d

    .line 469
    :cond_e
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    move/from16 v21, v15

    .line 470
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    if-nez v15, :cond_f

    const-string v15, "RemoteAnimationAdapterCompat"

    move/from16 v23, v13

    .line 472
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v5

    const-string v5, "i = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", changes leash = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", change = "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", taskInfo == null"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v12

    move/from16 v15, v21

    move/from16 v13, v23

    move/from16 v5, v24

    goto/16 :goto_c

    :cond_f
    move/from16 v24, v5

    move/from16 v23, v13

    .line 477
    invoke-static {v15}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v5

    const/4 v13, 0x4

    .line 478
    invoke-virtual {v14, v13}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v25

    if-nez v6, :cond_11

    if-eqz v25, :cond_10

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v6, 0x1

    :goto_7
    const-string v13, "RemoteAnimationAdapterCompat"

    move/from16 v26, v6

    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v27, v12

    const-string v12, ", check isClosingType type = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mode = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", taskId = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", changes leash = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", change = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 480
    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    const/4 v12, 0x1

    if-eq v5, v12, :cond_13

    if-eq v5, v6, :cond_12

    .line 516
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v15, v21

    :goto_8
    move/from16 v13, v23

    move/from16 v5, v24

    move/from16 v6, v26

    goto :goto_c

    :cond_12
    const-string v5, "RemoteAnimationAdapterCompat"

    const-string v6, "has home"

    .line 510
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v8

    move-object/from16 v22, v14

    move/from16 v15, v21

    move/from16 v6, v26

    const/4 v5, 0x1

    goto :goto_c

    :cond_13
    if-eq v8, v6, :cond_17

    const/4 v5, 0x3

    if-eq v8, v5, :cond_15

    const/4 v5, 0x4

    if-eq v8, v5, :cond_14

    goto :goto_9

    :cond_14
    move/from16 v15, v21

    goto :goto_a

    .line 497
    :cond_15
    iget v5, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getTaskId()I

    move-result v6

    if-ne v5, v6, :cond_16

    .line 498
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3, v7}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 499
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3, v0, v10}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 500
    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static {v0, v2, v14, v9, v1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->noNeedAnimFinishIt(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    .line 501
    monitor-exit v11

    return-void

    :cond_16
    :goto_9
    move/from16 v15, v21

    goto :goto_b

    :cond_17
    const/4 v15, 0x1

    :goto_a
    const/16 v18, 0x1

    .line 507
    :goto_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, v27

    const/4 v8, 0x1

    const/4 v14, 0x3

    goto/16 :goto_5

    :cond_18
    move/from16 v24, v5

    move-object/from16 v27, v12

    move/from16 v23, v13

    move/from16 v21, v15

    const/4 v12, 0x0

    .line 520
    :goto_d
    sget-boolean v4, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-nez v4, :cond_19

    if-eqz v12, :cond_19

    .line 521
    invoke-direct {v1, v9}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V

    .line 522
    monitor-exit v11

    return-void

    :cond_19
    if-nez v27, :cond_1c

    .line 528
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isMainAnimSplit()Z

    move-result v4

    if-nez v4, :cond_1b

    if-eqz v24, :cond_1b

    move/from16 v13, v23

    invoke-static {v13, v3, v6}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->access$000(ILjava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v8, 0x1

    goto :goto_f

    :cond_1b
    :goto_e
    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v2, "cancelAnimAndFinishMain for split or no home or otherCase"

    .line 529
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {v1, v9}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V

    .line 531
    monitor-exit v11

    return-void

    :cond_1c
    move/from16 v13, v23

    if-nez v24, :cond_1e

    .line 535
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->findHomeSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const-string v4, "RemoteAnimationAdapterCompat"

    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SP_case, has controller, find home surfaceControl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1d

    .line 538
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v8, 0x1

    .line 539
    invoke-virtual {v4, v3, v8}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 540
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_f

    .line 542
    :cond_1d
    invoke-direct {v1, v9}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V

    .line 543
    monitor-exit v11

    return-void

    :cond_1e
    const/4 v8, 0x1

    .line 545
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isNoNeedHandleMerge()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 546
    invoke-direct {v1, v9}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "no need handle merge is true"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    monitor-exit v11

    return-void

    :cond_1f
    :goto_f
    const-string v3, "RemoteAnimationAdapterCompat"

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IRemoteTransition mergeAnimation isClosingType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v21

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hasHome = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3, v15}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setActivityIsCloseType(Z)V

    .line 554
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 555
    new-instance v14, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v14, v2}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    const-string v3, "RemoteAnimationAdapterCompat"

    const-string v4, "before wrap app"

    .line 556
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v14}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v3

    new-instance v6, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v6}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    const/4 v15, 0x1

    const/16 v19, 0x0

    move-object/from16 v4, p3

    move-object v5, v12

    move-object/from16 v28, v7

    move v7, v15

    move v15, v8

    move-object/from16 v8, v19

    .line 557
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    const-string v4, "RemoteAnimationAdapterCompat"

    const-string v5, "before wrap wallpaper"

    .line 559
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v14}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2$$ExternalSyntheticLambda2;

    .line 560
    invoke-static {v4, v9, v12, v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v19

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 563
    invoke-static {v14, v5, v9, v12, v4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v33

    .line 564
    invoke-virtual {v9, v15}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 565
    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 567
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v4, v0, v10}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 568
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v4, v0, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    if-nez v27, :cond_24

    const/4 v0, 0x3

    if-eq v13, v0, :cond_20

    if-eq v13, v15, :cond_20

    const/4 v0, 0x6

    if-ne v13, v0, :cond_21

    move-object/from16 v0, v22

    const/high16 v2, 0x100000

    .line 572
    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez v18, :cond_20

    goto :goto_10

    :cond_20
    move v15, v5

    :cond_21
    :goto_10
    const-string v0, "RemoteAnimationAdapterCompat"

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpenApp = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", homeMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v31

    if-eqz v15, :cond_22

    .line 577
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 578
    invoke-direct {v1, v9}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "app open , do not handle from merge."

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    monitor-exit v11

    return-void

    .line 582
    :cond_22
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getCloseAnimationRunnerCompat()Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    move-result-object v0

    const-string v2, "RemoteAnimationAdapterCompat"

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get close runner = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_23

    .line 586
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    goto :goto_11

    :cond_23
    const/16 v30, 0x0

    .line 589
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v32

    sget-object v34, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2$$ExternalSyntheticLambda1;

    move-object/from16 v29, v0

    .line 588
    invoke-interface/range {v29 .. v34}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    goto :goto_11

    .line 595
    :cond_24
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getRecentsAnimationListenerImpl()Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 597
    invoke-interface {v0, v15}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->setIsMergedAnimation(Z)V

    .line 599
    :cond_25
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 600
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    .line 601
    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;

    move-result-object v16

    move-object/from16 v17, v27

    move-object/from16 v18, v3

    move-object/from16 v20, v21

    .line 602
    invoke-interface/range {v16 .. v21}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 604
    :goto_11
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "IRemoteTransition mergeAnimation end"

    .line 605
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    const-string v3, "RemoteAnimationAdapterCompat"

    const-string v4, "HomeShellTransition IRemoteTransition startAnimation"

    .line 194
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v3

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/miui/launcher/utils/BoostHelper;->setDynamicVIPTaskIfNeeded(I)V

    .line 196
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->printLeash(Landroid/window/TransitionInfo;)V

    .line 197
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 198
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->clearTempSaveOpenLeash()V

    .line 199
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->onFrameWorkAnimCall()V

    .line 200
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    .line 201
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->isClosingType(Landroid/window/TransitionInfo;)Z

    move-result v3

    const-string v5, "RemoteAnimationAdapterCompat"

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAnimation token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isClosingType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", runner = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v5, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->clearLeashMap()V

    .line 206
    iget-object v5, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v5, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setActivityIsCloseType(Z)V

    .line 207
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-object/from16 v5, p4

    invoke-virtual {v3, v1, v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMainFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 208
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    .line 209
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setRoot(Landroid/view/SurfaceControl;)V

    .line 210
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 211
    new-instance v3, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v3, v2}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 213
    invoke-static {v3, v8, v10, v11, v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v14

    .line 215
    invoke-static {v3, v11, v8, v10, v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v15

    .line 217
    invoke-static {v3, v4, v8, v10, v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v16

    .line 227
    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v12

    .line 228
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v2, v12}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 229
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    .line 230
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    const/4 v6, 0x0

    move v7, v4

    move v13, v7

    move/from16 v17, v13

    move/from16 v18, v6

    move/from16 v19, v18

    move-object v6, v5

    :goto_0
    if-ltz v3, :cond_6

    .line 231
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 233
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 p2, v2

    goto/16 :goto_3

    .line 234
    :cond_0
    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isHome(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 235
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeOpen(Landroid/window/TransitionInfo$Change;)Z

    move-result v13

    .line 237
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int v7, v6, v3

    move-object v6, v4

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_2

    move-object v5, v4

    .line 241
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v11

    if-nez v11, :cond_3

    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v11

    if-ltz v11, :cond_3

    .line 242
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v11

    move-object/from16 p2, v2

    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartRotation()I

    move-result v2

    if-eq v11, v2, :cond_4

    .line 243
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v2

    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartRotation()I

    move-result v11

    sub-int/2addr v2, v11

    .line 244
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 245
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v17

    move/from16 v18, v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move/from16 v19, v2

    move/from16 v17, v18

    move/from16 v18, v11

    goto :goto_2

    :cond_3
    move-object/from16 p2, v2

    .line 247
    :cond_4
    :goto_2
    sget v2, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v4, v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMainAnimSplit()V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v2, p2

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 253
    :cond_6
    new-instance v11, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v11}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 254
    new-instance v4, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v4}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    if-eqz v6, :cond_8

    if-eqz v17, :cond_8

    .line 255
    invoke-virtual {v6}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 256
    invoke-virtual {v6}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/hideapi/TransitionInfoExpose;->getChange(Landroid/window/WindowContainerToken;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 258
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v20

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 p2, v4

    move-object/from16 v4, v20

    move-object v1, v5

    move/from16 v5, v17

    move-object/from16 v20, v14

    move-object v14, v6

    move/from16 v6, v18

    move v0, v7

    move/from16 v7, v19

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_4

    :cond_7
    move-object/from16 p2, v4

    move-object v1, v5

    move v0, v7

    move-object/from16 v20, v14

    move-object v14, v6

    const-string v2, "RemoteAnimationAdapterCompat"

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but it\'s not in info."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_4
    invoke-virtual {v11}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 265
    invoke-virtual {v11}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v8, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5

    :cond_8
    move-object/from16 p2, v4

    move-object v1, v5

    move-object/from16 v20, v14

    move-object v14, v6

    :cond_9
    :goto_5
    if-eqz v13, :cond_e

    .line 270
    invoke-virtual {v11}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 271
    invoke-virtual {v11}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 274
    :cond_a
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_d

    .line 275
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 276
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    if-nez v2, :cond_b

    goto :goto_7

    .line 279
    :cond_b
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    invoke-virtual {v3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    .line 285
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 286
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v0

    invoke-virtual {v8, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 287
    invoke-virtual {v11, v8, v2}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_c
    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 291
    :cond_d
    array-length v0, v15

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_11

    .line 294
    aget-object v1, v15, v0

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 295
    aget-object v1, v15, v0

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_e
    if-eqz v14, :cond_f

    .line 299
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {v11, v8, v0}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_f
    if-eqz v1, :cond_11

    if-eqz v17, :cond_11

    .line 301
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 302
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChange(Landroid/window/WindowContainerToken;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 304
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_9

    :cond_10
    const-string v0, "RemoteAnimationAdapterCompat"

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but it\'s not in info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 311
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 312
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    move-object/from16 v1, p2

    invoke-virtual {v1, v8, v0}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_a

    :cond_11
    move-object/from16 v1, p2

    :goto_a
    const/4 v0, 0x1

    .line 316
    invoke-virtual {v8, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 317
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    .line 318
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v2, v11}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addCounterRotator(Lcom/android/wm/shell/util/CounterRotator;)V

    .line 319
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addCounterRotator(Lcom/android/wm/shell/util/CounterRotator;)V

    if-nez v14, :cond_12

    move-object/from16 v1, v20

    .line 321
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    .line 322
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    const-string v3, "Main Anim No Home But its Running in RemoteHandler"

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMainAnimNoNeedMerge(Ljava/lang/String;)V

    goto :goto_b

    :cond_12
    move-object/from16 v1, v20

    :cond_13
    :goto_b
    const-string v2, "RemoteAnimationAdapterCompat"

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationStart appsCompat size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v12, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    const/4 v13, 0x0

    new-instance v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2$$ExternalSyntheticLambda0;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;Landroid/os/IBinder;)V

    move-object v14, v1

    move-object/from16 v17, v2

    invoke-interface/range {v12 .. v17}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string/jumbo v1, "startAnimation   end"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
