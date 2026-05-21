.class Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/ExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeoutThreadPoolExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mWorkerInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$smKBxzN4akmsBLoOh82ZoAbIwuc(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->lambda$beforeExecute$0(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 306
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 308
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    .line 309
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private synthetic lambda$beforeExecute$0(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->processTimeout(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V

    return-void
.end method

.method private declared-synchronized processTimeout(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V
    .locals 2

    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    iget v1, p1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    iget v1, p1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 345
    monitor-exit p0

    return-void

    .line 347
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    iget v1, p1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object p1, p1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "ExecutorHelper"

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "afterExecute tid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    .line 338
    iget-object p2, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ExecutorHelper"

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeExecute tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    instance-of v0, p2, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutRunnable;

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 327
    new-instance v1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;

    invoke-direct {v1, p1, p2, v0}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;-><init>(Ljava/lang/Thread;Ljava/lang/Runnable;I)V

    .line 328
    iget-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    check-cast p2, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutRunnable;

    invoke-interface {p2}, Lcom/xiaomi/dist/utils/ExecutorHelper$Timeout;->getTimeout()J

    move-result-wide p1

    .line 330
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 314
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 315
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExecutorHelper"

    invoke-static {v1, v0}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/dist/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
