.class public Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutorHelper.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field private final mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YhccpWGB0AR6qQnc9O2ICy33jms(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->lambda$new$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nzeF21O0DFI3XaM5_hYLjtXmrko(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->lambda$new$1(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 225
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 9

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    move-wide v4, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p1, 0x1

    .line 235
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 236
    iput-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 230
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "coreTimeout must be >= 0 and name must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 225
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 234
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor$1;-><init>(Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 249
    iget-object p1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
