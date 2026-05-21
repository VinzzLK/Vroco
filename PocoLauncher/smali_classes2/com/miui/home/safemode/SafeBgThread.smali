.class public final Lcom/miui/home/safemode/SafeBgThread;
.super Landroid/os/HandlerThread;
.source "SafeBgThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/safemode/SafeBgThread$BackgroundThreadFactory;,
        Lcom/miui/home/safemode/SafeBgThread$BackgroundHandler;
    }
.end annotation


# static fields
.field private static volatile sHandler:Lcom/miui/home/safemode/SafeBgThread$BackgroundHandler;

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "Safe.Background"

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 27
    new-instance p0, Lcom/miui/home/safemode/SafeBgThread$BackgroundThreadFactory;

    const-string v0, "Safe.Background-"

    invoke-direct {p0, v0}, Lcom/miui/home/safemode/SafeBgThread$BackgroundThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/miui/home/safemode/SafeBgThread;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/home/safemode/SafeBgThread;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 3

    .line 32
    sget-object v0, Lcom/miui/home/safemode/SafeBgThread;->sHandler:Lcom/miui/home/safemode/SafeBgThread$BackgroundHandler;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/miui/home/safemode/SafeBgThread;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/miui/home/safemode/SafeBgThread;->sHandler:Lcom/miui/home/safemode/SafeBgThread$BackgroundHandler;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/miui/home/safemode/SafeBgThread;

    invoke-direct {v1}, Lcom/miui/home/safemode/SafeBgThread;-><init>()V

    .line 36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v2, Lcom/miui/home/safemode/SafeBgThread$BackgroundHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/miui/home/safemode/SafeBgThread$BackgroundHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/miui/home/safemode/SafeBgThread;->sHandler:Lcom/miui/home/safemode/SafeBgThread$BackgroundHandler;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/safemode/SafeBgThread;->sHandler:Lcom/miui/home/safemode/SafeBgThread$BackgroundHandler;

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/miui/home/safemode/SafeBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
