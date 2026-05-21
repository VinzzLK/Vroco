.class public Lcom/msa/sdk/tool/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"


# static fields
.field public static final CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MINIMUM_CPU_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/msa/sdk/tool/TaskRunner;->CPU_COUNT:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 11
    :cond_0
    sput v0, Lcom/msa/sdk/tool/TaskRunner;->MINIMUM_CPU_COUNT:I

    add-int/lit8 v2, v0, 0x1

    .line 13
    sput v2, Lcom/msa/sdk/tool/TaskRunner;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    .line 15
    sput v3, Lcom/msa/sdk/tool/TaskRunner;->MAXIMUM_POOL_SIZE:I

    .line 17
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/msa/sdk/tool/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
