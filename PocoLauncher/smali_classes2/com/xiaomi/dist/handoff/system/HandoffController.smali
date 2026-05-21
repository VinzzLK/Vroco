.class Lcom/xiaomi/dist/handoff/system/HandoffController;
.super Ljava/lang/Object;
.source "HandoffController.java"


# instance fields
.field private mBindRetryCount:I

.field protected mContext:Landroid/content/Context;

.field protected mDeviceCallback:Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

.field private final mDeviceCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/dist/handoff/system/callback/RemoteHandoffDeviceCallback;",
            "Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/dist/utils/ServiceExecutor<",
            "Lcom/xiaomi/dist/handoff/IHandoffControlService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskListener:Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

.field private mTaskListenerId:I

.field protected mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

.field private final mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;


# direct methods
.method public static synthetic $r8$lambda$4XfraZKNT5FM8JdmPtWQJsnIyz0(Lcom/xiaomi/dist/handoff/system/HandoffController;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->bindHandoffServiceAsync()V

    return-void
.end method

.method public static synthetic $r8$lambda$85YwIyvCTNflbGdFnAPSx7nSvlA(Lcom/xiaomi/dist/handoff/system/HandoffController;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$startTransferSessionToLocal$7(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DvJrPd8HERXIeWu27t7mSXjcyEM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$queryActiveLocalHandoffTask$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FcyFORqzSYjTl2pudcK3bPp-zgc(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$restoreState$23(Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fikdvy1n-iHB39ZPfxyJrpHA3b8(Lcom/xiaomi/dist/handoff/system/HandoffController;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GBd16pSqeu8rvf1PvqwE6z5B2_k(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$unregisterLocalHandoffSessionListener$5(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hl5kE50xjrayc24IiXiljTHiePU(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$restoreState$21(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MgGEL9cDLRv8Ovz7QRaIvIt8UDQ(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$restoreState$22(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MrzMCGsMWzC_ATX7W0A7gv7EQyI(Lcom/xiaomi/dist/handoff/system/HandoffController;Ljava/util/concurrent/CompletableFuture;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$queryActiveLocalHandoffTask$1(Ljava/util/concurrent/CompletableFuture;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QPPMqAuTwmgau2Oa0KcDgygSLLM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$startTransferSessionToLocal$8(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RWscyBoTo_Ho0QJX78GnSWPPis8(Lcom/xiaomi/dist/handoff/system/HandoffController;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$bindHandoffServiceAsync$19(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fhxMwjP3WZxwLLCtPjr0CPUMn1s(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$registerLocalHandoffSessionListener$3(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nc3Zhc9Dj69naW195_vXMSnVcsQ(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$unregisterLocalHandoffSessionListener$6(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rhEYqgeg27nuNJdSCYDBlp52gwg(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$bindHandoffServiceAsync$18(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uGTj2fC6bfOXaxCGAP5uIl2K7O0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$restoreState$24(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uWlPId9-08ERMR9wUoIk88Z_Sps(Lcom/xiaomi/dist/handoff/system/HandoffController;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$getServiceExecutor$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$zFXta9n2KKgzxoUhmyzr7J2vCvo(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->lambda$registerLocalHandoffSessionListener$4(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    .line 44
    iput v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mDeviceCallbackMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    .line 55
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mDeviceCallback:Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    .line 545
    new-instance v1, Lcom/xiaomi/dist/handoff/system/HandoffController$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$2;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListener:Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

    .line 58
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    const-string v1, "handoff_system_handler_thread"

    .line 59
    invoke-static {v1}, Lcom/xiaomi/dist/utils/Schedulers;->newMasterThread(Ljava/lang/String;)Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 60
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    .line 61
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    .line 62
    invoke-static {p1, v0}, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;->registerServiceStartCallback(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/dist/handoff/system/HandoffController;)Lcom/xiaomi/dist/utils/Schedulers$MasterThread;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/dist/handoff/system/HandoffController;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->setAppMeta([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method private bindHandoffServiceAsync()V
    .locals 4

    const-string v0, "HandoffController"

    const-string v1, "bindHandoffServiceAsync"

    .line 288
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->getServiceExecutor()Lcom/xiaomi/dist/utils/ServiceExecutor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "bindHandoffServiceAsync bind failed"

    .line 291
    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 292
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda12;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    new-instance v2, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda2;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    iget-object v3, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 303
    invoke-interface {v3}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 294
    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    .line 305
    :goto_0
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    return-void
.end method

.method private getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const-string p0, "HandoffController"

    const-string v0, "getIntent"

    .line 335
    invoke-static {p0, v0}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.xiaomi.dist.intent.action.HANDOFF_CONTROL"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 3

    const-string v0, "HandoffController"

    const-string v1, "getPackageName"

    .line 343
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/dist/handoff/system/HandoffUtil;->getValidServicePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 345
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "getPackageName empty"

    .line 346
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "getPackageName, name=%s"

    .line 349
    invoke-static {v0, v2, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private getServiceExecutor()Lcom/xiaomi/dist/utils/ServiceExecutor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/dist/utils/ServiceExecutor<",
            "Lcom/xiaomi/dist/handoff/IHandoffControlService;",
            ">;"
        }
    .end annotation

    const-string v0, "HandoffController"

    const-string v1, "getServiceExecutor"

    .line 309
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/dist/handoff/system/HandoffUtil;->isSupported(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "getServiceExecutor fail, not support"

    .line 311
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "getServiceExecutor fail, packageName empty"

    .line 316
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 319
    :cond_1
    new-instance v0, Lcom/xiaomi/dist/utils/ServiceExecutor;

    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda16;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda16;

    new-instance v8, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    const-string v6, "handoff_system_service"

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/xiaomi/dist/utils/ServiceExecutor;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/xiaomi/dist/utils/ServiceExecutor$AsInterface;Landroid/os/IBinder$DeathRecipient;)V

    return-object v0
.end method

.method private handleQueryActiveLocalHandoffTask(Lcom/xiaomi/dist/handoff/IHandoffControlService;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "handleQueryActiveLocalHandoffTask"

    .line 355
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :try_start_0
    invoke-interface {p1}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->queryActiveLocalHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p1

    .line 358
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->setAppMeta([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "queryActiveLocalHandoffTask exception"

    .line 361
    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-object p0
.end method

.method private handleRegisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "handleRegisterLocalHandoffSessionListener"

    .line 369
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    if-lez v1, :cond_0

    const-string p0, "registerActiveLocalHandoffTaskListener failed, already registered"

    .line 371
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 375
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListener:Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;

    .line 376
    invoke-interface {p1, v1}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->registerActiveLocalHandoffTaskListener(Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "handleRegisterLocalHandoffSessionListener exception"

    .line 378
    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private handleStartDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/IHandoffControlService;Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;)V
    .locals 1

    const-string p0, "HandoffController"

    const-string v0, "handleStartDiscoveryRemoteHandoffDevice"

    .line 444
    invoke-static {p0, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->getSessionInfo()Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->startDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;)I

    move-result p1

    .line 449
    invoke-virtual {p2, p1}, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;->setDeviceCallbackId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "handleStartDiscoveryRemoteHandoffDevice exception"

    .line 451
    invoke-static {p0, p2, p1}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private handleStartTransferSessionToLocal(Lcom/xiaomi/dist/handoff/IHandoffControlService;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 399
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HandoffController"

    const-string v2, "handleStartTransferSessionToLocal, handoffTaskId=%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :try_start_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController$1;

    invoke-direct {v0, p0, p3}, Lcom/xiaomi/dist/handoff/system/HandoffController$1;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    .line 416
    invoke-interface {p1, p2, v0}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/IRelayCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "handleStartTransferSessionToLocal exception"

    .line 418
    invoke-static {v1, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    const/16 p0, 0x11

    const-string p1, "remote exception"

    .line 420
    invoke-interface {p3, p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private handleUnregisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 3

    const-string v0, "HandoffController"

    const-string v1, "unregisterLocalHandoffSessionListener"

    .line 385
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 387
    :try_start_0
    iget v2, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    invoke-interface {p1, v2}, Lcom/xiaomi/dist/handoff/IHandoffControlService;->unregisterActiveLocalHandoffTaskListener(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :goto_0
    iput v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "handleUnregisterLocalHandoffSessionListener exception"

    .line 389
    invoke-static {v0, v2, p1}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 391
    :goto_2
    iput v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    .line 392
    throw p1
.end method

.method private synthetic lambda$bindHandoffServiceAsync$18(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 1

    const-string p1, "HandoffController"

    const-string v0, "bindHandoffServiceAsync bind success"

    .line 295
    invoke-static {p1, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 296
    iput p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    .line 297
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->restoreState()V

    return-void
.end method

.method private synthetic lambda$bindHandoffServiceAsync$19(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "bindHandoffServiceAsync bind failed"

    .line 300
    invoke-static {v0, v1, p1}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 301
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    return-void
.end method

.method private synthetic lambda$getServiceExecutor$20()V
    .locals 4

    const-string v0, "HandoffController"

    const-string v1, "ServiceBindCallback.onBinderDied"

    .line 323
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v3, v2, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 325
    invoke-interface {v0, v1, v3}, Lcom/xiaomi/dist/handoff/system/TaskListenerInner;->onLocalHandoffTaskUpdate(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    .line 329
    :cond_0
    iput v2, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerId:I

    .line 330
    invoke-direct {p0, v1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->postBindHandoffService(Z)V

    return-void
.end method

.method private synthetic lambda$queryActiveLocalHandoffTask$1(Ljava/util/concurrent/CompletableFuture;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 77
    invoke-direct {p0, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleQueryActiveLocalHandoffTask(Lcom/xiaomi/dist/handoff/IHandoffControlService;)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$queryActiveLocalHandoffTask$2(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "queryActiveLocalHandoffTask execute error"

    .line 80
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$registerLocalHandoffSessionListener$3(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleRegisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$registerLocalHandoffSessionListener$4(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "registerLocalHandoffSessionListener execute error"

    .line 100
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$restoreState$21(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 500
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleRegisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$restoreState$22(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "restore localHandoffSessionListener error"

    .line 504
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$restoreState$23(Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 522
    invoke-direct {p0, p2, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleStartDiscoveryRemoteHandoffDevice(Lcom/xiaomi/dist/handoff/IHandoffControlService;Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$restoreState$24(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "restore discoveryRemoteHandoffDevice error"

    .line 526
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$startTransferSessionToLocal$7(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 135
    invoke-direct {p0, p3, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleStartTransferSessionToLocal(Lcom/xiaomi/dist/handoff/IHandoffControlService;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startTransferSessionToLocal$8(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "startTransferSessionToLocal execute error"

    .line 140
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$unregisterLocalHandoffSessionListener$5(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->handleUnregisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$unregisterLocalHandoffSessionListener$6(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "unregisterLocalHandoffSessionListener execute error"

    .line 119
    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private postBindHandoffService(Z)V
    .locals 5

    const-string v0, "HandoffController"

    const-string v1, "postBindHandoffService"

    .line 273
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    invoke-interface {p1}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda17;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 277
    :cond_0
    iget p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 281
    iput p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    .line 282
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    invoke-interface {p1}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda17;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    iget p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mBindRetryCount:I

    int-to-long v1, p0

    const-wide/16 v3, 0x7d0

    mul-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private restoreState()V
    .locals 7

    const-string v0, "HandoffController"

    const-string v1, "restoreState"

    .line 489
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    const-string v2, "restoreState error, executor is null"

    if-eqz v1, :cond_1

    const-string v1, "restore localHandoffSessionListener"

    .line 491
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v1, :cond_0

    .line 494
    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 497
    :cond_0
    new-instance v3, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda10;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    sget-object v4, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda4;

    iget-object v5, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 505
    invoke-interface {v5}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 497
    invoke-virtual {v1, v3, v4, v5}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mDeviceCallback:Lcom/xiaomi/dist/handoff/IRemoteHandoffDeviceCallback;

    if-eqz v1, :cond_4

    const-string v1, "restore discoveryRemoteHandoffDevice"

    .line 508
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mDeviceCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;

    if-nez v3, :cond_2

    const-string p0, "restoreState callbackInner is null"

    .line 511
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 514
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v4, :cond_3

    .line 516
    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 519
    :cond_3
    new-instance v5, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0, v3}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda14;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/system/DeviceCallbackInner;)V

    sget-object v3, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda7;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda7;

    iget-object v6, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 527
    invoke-interface {v6}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 519
    invoke-virtual {v4, v5, v3, v6}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setAppMeta([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 8

    .line 534
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    const/4 v4, 0x0

    .line 537
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/xiaomi/dist/appmeta/AppMetaProvider;->query(Landroid/content/Context;I)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/dist/handoff/AppMeta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    goto :goto_1

    :catchall_0
    move-exception v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 539
    invoke-virtual {v3}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "getAppMeta error, appId=%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "HandoffController"

    invoke-static {v7, v6, v5}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    :goto_1
    invoke-virtual {v3, v4}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->setAppMeta(Lcom/xiaomi/dist/handoff/AppMeta;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "[",
            "Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;",
            ">;"
        }
    .end annotation

    const-string v0, "HandoffController"

    const-string v1, "queryActiveLocalHandoffTask"

    .line 66
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v1, :cond_0

    const-string p0, "queryActiveLocalHandoffTask error, executor is null"

    .line 69
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 70
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 73
    new-instance v2, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda15;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Ljava/util/concurrent/CompletableFuture;)V

    sget-object v3, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda3;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda3;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 81
    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 73
    invoke-virtual {v1, v2, v3, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method registerLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/TaskListenerInner;)V
    .locals 2

    const-string v0, "HandoffController"

    const-string v1, "registerLocalHandoffSessionListener"

    .line 86
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    .line 88
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez p1, :cond_0

    const-string p0, "registerLocalHandoffSessionListener error, executor is null"

    .line 90
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda11;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    sget-object v1, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda8;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda8;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 101
    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 93
    invoke-virtual {p1, v0, v1, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HandoffController"

    const-string v2, "startTransferSessionToLocal, handoffTaskId=%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v0, :cond_0

    const-string p0, "startTransferSessionToLocal error, executor is null"

    .line 128
    invoke-static {v1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x9

    const-string p1, "service unavailable"

    .line 129
    invoke-interface {p2, p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 132
    :cond_0
    new-instance v1, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    sget-object p1, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda5;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda5;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 141
    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 132
    invoke-virtual {v0, v1, p1, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method unregisterLocalHandoffSessionListener()V
    .locals 3

    const-string v0, "HandoffController"

    const-string v1, "unregisterLocalHandoffSessionListener"

    .line 105
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    .line 107
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mServiceExecutor:Lcom/xiaomi/dist/utils/ServiceExecutor;

    if-nez v1, :cond_0

    const-string p0, "unregisterLocalHandoffSessionListener error, executor is null"

    .line 109
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda9;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V

    sget-object v2, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda6;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda6;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mThread:Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    .line 120
    invoke-interface {p0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 112
    invoke-virtual {v1, v0, v2, p0}, Lcom/xiaomi/dist/utils/ServiceExecutor;->execute(Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;Ljava/util/concurrent/Executor;)V

    return-void
.end method
