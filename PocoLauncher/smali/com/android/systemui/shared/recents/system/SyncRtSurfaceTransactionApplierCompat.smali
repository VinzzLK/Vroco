.class public Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplierCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowListener;,
        Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;,
        Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;,
        Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$TransactionCommitListenerProxy;
    }
.end annotation


# static fields
.field public static final FLAG_ALL:I = -0x1

.field public static final FLAG_ALPHA:I = 0x1

.field public static final FLAG_BACKGROUND_BLUR_RADIUS:I = 0x20

.field public static final FLAG_CORNER_RADIUS:I = 0x10

.field public static final FLAG_DEFER_ANIMATION:I = 0x800

.field public static final FLAG_HOME_LAYER:I = 0x400

.field public static final FLAG_LAYER:I = 0x8

.field public static final FLAG_MATRIX:I = 0x2

.field public static final FLAG_RELATIVE_LAYER:I = 0x80

.field public static final FLAG_SHADOW_RADIUS:I = 0x100

.field public static final FLAG_SHOW:I = 0x200

.field public static final FLAG_WINDOW_CROP:I = 0x4

.field private static final MSG_COUNT_DOWN_FRAME_ERROR:I = 0x1

.field private static final MSG_COUNT_DOWN_FRAME_ONCE:I = 0x2

.field private static final MSG_UPDATE_SEQUENCE_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SyncRtSurfaceTransactionApplierCompat"

.field public static sHwuiTaskTid0:I

.field public static sHwuiTaskTid1:I


# instance fields
.field private mAfterApplyCallback:Ljava/lang/Runnable;

.field private final mApplyHandler:Landroid/os/Handler;

.field private final mBarrierSurfaceControl:Landroid/view/SurfaceControl;

.field private mCountDownFinishRunnable:Ljava/lang/Runnable;

.field private mCountDownFrameNum:I

.field private mPendingSequenceNumber:I

.field private mSequenceNumber:I

.field private final mTargetViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public static synthetic $r8$lambda$lhCbhvFfVWXXUHPJQevyz_Nd8gk(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->lambda$startCountDown$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 80
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 86
    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mCountDownFrameNum:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 94
    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 100
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    .line 102
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncRtSurfaceTransactionApplierCompat::create targetView is null? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mTargetViewRootImpl null? "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez p1, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncRtSurfaceTransactionApplierCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lmiui/view/ViewRootImplExpose;->box(Ljava/lang/Object;)Lmiui/view/ViewRootImplExpose;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/view/ViewRootImplExpose;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mBarrierSurfaceControl:Landroid/view/SurfaceControl;

    .line 107
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$1;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->onApplyMessage(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Ljava/lang/Runnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mCountDownFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mCountDownFrameNum:I

    return p0
.end method

.method static synthetic access$210(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)I
    .locals 2

    .line 53
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mCountDownFrameNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mCountDownFrameNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->startCountDown()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/SurfaceControl;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mBarrierSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Landroid/view/ViewRootImpl;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method private static addTransactionCommittedListener(Landroid/view/SurfaceControl$Transaction;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 8

    :try_start_0
    const-string v0, "android.view.SurfaceControl$TransactionCommittedListener"

    .line 213
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 214
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string v3, "addTransactionCommittedListener"

    const-class v4, Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v7

    aput-object p2, v0, v6

    move-object v2, p0

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SyncRtSurfaceTransactionApplierCompat"

    const-string p2, "addTransactionCommittedListener"

    .line 219
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->applyTo(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 387
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 390
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    :cond_1
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$7;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method private static createTransactionCommittedListener(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "android.view.SurfaceControl$TransactionCommittedListener"

    .line 225
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$TransactionCommitListenerProxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$TransactionCommitListenerProxy;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SyncRtSurfaceTransactionApplierCompat"

    const-string v1, "createTransactionCommittedListener"

    .line 231
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static execRunnableWhenViewTransactionCommit(Landroid/view/View;Lcom/android/systemui/shared/recents/system/TimeOutTask;)V
    .locals 7

    .line 184
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->createTransactionCommittedListener(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TimeOutTask;->getExecutors()Lcom/miui/home/library/utils/LooperExecutor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TimeOutTask;->getExecutors()Lcom/miui/home/library/utils/LooperExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TimeOutTask;->run()V

    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 196
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 197
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TimeOutTask;->getExecutors()Lcom/miui/home/library/utils/LooperExecutor;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->addTransactionCommittedListener(Landroid/view/SurfaceControl$Transaction;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/view/SurfaceControl$Transaction;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v6

    const-string v2, "applyTransactionOnDraw"

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TimeOutTask;->postTimeout()V

    goto :goto_2

    .line 202
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TimeOutTask;->getExecutors()Lcom/miui/home/library/utils/LooperExecutor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 203
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TimeOutTask;->getExecutors()Lcom/miui/home/library/utils/LooperExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TimeOutTask;->run()V

    :goto_1
    const-string p0, "SyncRtSurfaceTransactionApplierCompat"

    const-string p1, "execRunnableWhenViewTransactionCommit: viewRootImpl = null"

    .line 207
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private synthetic lambda$startCountDown$0()V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private onApplyMessage(I)V
    .locals 1

    .line 141
    iput p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    .line 142
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 145
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private startCountDown()V
    .locals 3

    const-string v0, "SyncRtSurfaceTransactionApplierCompat"

    const-string/jumbo v1, "startCountDown"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Lmiui/view/ViewRootImplExpose;->box(Ljava/lang/Object;)Lmiui/view/ViewRootImplExpose;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$2;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-static {v2}, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;->box(Ljava/lang/Object;)Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/view/ViewRootImplExpose;->registerRtFrameCallback(Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 169
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 157
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mApplyHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public addAfterApplyCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 356
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mSequenceNumber:I

    iget v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    if-ne v0, v1, :cond_0

    .line 357
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 360
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 363
    :cond_1
    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$6;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mAfterApplyCallback:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public scheduleApply(Ljava/lang/Runnable;I)V
    .locals 0

    .line 149
    iput p2, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mCountDownFrameNum:I

    .line 150
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mCountDownFinishRunnable:Ljava/lang/Runnable;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->startCountDown()V

    return-void
.end method

.method public varargs scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mPendingSequenceNumber:I

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Lmiui/view/ViewRootImplExpose;->box(Ljava/lang/Object;)Lmiui/view/ViewRootImplExpose;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$3;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;I[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    invoke-static {v2}, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;->box(Ljava/lang/Object;)Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiui/view/ViewRootImplExpose;->registerRtFrameCallback(Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    new-instance p1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$4;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    .line 313
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 314
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 316
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public strokeSwitch(Landroid/view/View;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 325
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 326
    invoke-static {p2, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->access$700(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;Landroid/view/SurfaceControl$Transaction;)V

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "strokeSwitch\uff1asetSurfaceStroke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;->strokeWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SyncRtSurfaceTransactionApplierCompat"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :try_start_0
    invoke-static {v1}, Lmiui/view/ViewRootImplExpose;->box(Ljava/lang/Object;)Lmiui/view/ViewRootImplExpose;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;

    invoke-direct {v5, p0, v1, v2, p2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$5;-><init>(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;Landroid/view/ViewRootImpl;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SmallWindowParams;)V

    .line 330
    invoke-static {v5}, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;->box(Ljava/lang/Object;)Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;

    move-result-object p0

    .line 329
    invoke-virtual {v3, p0}, Lmiui/view/ViewRootImplExpose;->registerRtFrameCallback(Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "strokeSwitch"

    .line 345
    invoke-static {v4, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
