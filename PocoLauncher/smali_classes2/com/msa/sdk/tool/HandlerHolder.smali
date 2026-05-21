.class public final Lcom/msa/sdk/tool/HandlerHolder;
.super Ljava/lang/Object;
.source "HandlerHolder.java"


# static fields
.field private static sBackgroundHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background_task"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/msa/sdk/tool/HandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBackgroundHandler()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/msa/sdk/tool/HandlerHolder;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/msa/sdk/tool/HandlerHolder;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 14
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    sget-object v1, Lcom/msa/sdk/tool/HandlerHolder;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 16
    sget-object v1, Lcom/msa/sdk/tool/HandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    sget-object v1, Lcom/msa/sdk/tool/HandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 19
    :cond_0
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/msa/sdk/tool/HandlerHolder;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/msa/sdk/tool/HandlerHolder;->sBackgroundHandler:Landroid/os/Handler;

    .line 21
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 23
    :cond_2
    :goto_0
    sget-object v1, Lcom/msa/sdk/tool/HandlerHolder;->sBackgroundHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
