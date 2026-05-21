.class public Lcom/mi/appfinder/launcher/thread/GlobalExecutors;
.super Ljava/lang/Object;
.source "GlobalExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;
    }
.end annotation


# static fields
.field public static final IO_THREAD_POOL_PREFIX:Ljava/lang/String; = "ioThreadPool"

.field public static final MAIN_EXECUTOR:Lcom/mi/appfinder/launcher/thread/LooperExecutor;

.field public static final SERIAL_TASK_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final SERIAL_THREAD_POOL_PREFIX:Ljava/lang/String; = "serial_task_executor"

.field public static final THREAD_POOL_IO:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 25
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;

    const-string v0, "ioThreadPool"

    invoke-direct {v7, v0}, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x12c

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->THREAD_POOL_IO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    invoke-static {}, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->createSerialTaskExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->SERIAL_TASK_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    new-instance v0, Lcom/mi/appfinder/launcher/thread/LooperExecutor;

    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mi/appfinder/launcher/thread/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mi/appfinder/launcher/thread/GlobalExecutors;->MAIN_EXECUTOR:Lcom/mi/appfinder/launcher/thread/LooperExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSerialTaskExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .line 74
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;

    const-string v0, "serial_task_executor"

    invoke-direct {v7, v0}, Lcom/mi/appfinder/launcher/thread/GlobalExecutors$FinderThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v8
.end method
