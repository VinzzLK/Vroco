.class public final Lcom/msa/sdk/tool/GlobalHolder;
.super Ljava/lang/Object;
.source "GlobalHolder.java"


# static fields
.field private static sAppContext:Landroid/content/Context;

.field private static sBackgroundHandler:Landroid/os/Handler;

.field private static sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/msa/sdk/tool/GlobalHolder;->sUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInit()V
    .locals 2

    .line 53
    sget-object v0, Lcom/msa/sdk/tool/GlobalHolder;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GlobalHolder should be init before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 27
    invoke-static {}, Lcom/msa/sdk/tool/GlobalHolder;->checkInit()V

    .line 28
    sget-object v0, Lcom/msa/sdk/tool/GlobalHolder;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getBackgroundHandler()Landroid/os/Handler;
    .locals 4

    .line 36
    invoke-static {}, Lcom/msa/sdk/tool/GlobalHolder;->checkInit()V

    .line 38
    sget-object v0, Lcom/msa/sdk/tool/GlobalHolder;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 39
    const-class v0, Lcom/msa/sdk/tool/GlobalHolder;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/msa/sdk/tool/GlobalHolder;->sBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zeus-bg-task-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/msa/sdk/tool/GlobalHolder;->sAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 45
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/msa/sdk/tool/GlobalHolder;->sBackgroundHandler:Landroid/os/Handler;

    .line 47
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_2
    :goto_0
    sget-object v0, Lcom/msa/sdk/tool/GlobalHolder;->sBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/msa/sdk/tool/GlobalHolder;->sAppContext:Landroid/content/Context;

    :cond_0
    const/4 p0, 0x1

    .line 23
    invoke-static {p0}, Lcom/msa/sdk/tool/MLog;->setDebugOn(Z)V

    return-void
.end method
