.class public Lcom/miui/home/launcher/common/GcTask;
.super Ljava/lang/Object;
.source "GcTask.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/common/GcTask;

.field private static final sSupport:Z


# instance fields
.field private final idleTask:Landroid/os/MessageQueue$IdleHandler;

.field private final mGcTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$Bp39E40F3s35xmDVrZyeuaTZd2Q(Lcom/miui/home/launcher/common/GcTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/common/GcTask;->doGc()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "sky"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "river"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/common/GcTask;->sSupport:Z

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/miui/home/launcher/common/GcTask;->sInstance:Lcom/miui/home/launcher/common/GcTask;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/miui/home/launcher/common/GcTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/GcTask$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/common/GcTask;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/GcTask;->mGcTask:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/miui/home/launcher/common/GcTask$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/GcTask$1;-><init>(Lcom/miui/home/launcher/common/GcTask;)V

    iput-object v0, p0, Lcom/miui/home/launcher/common/GcTask;->idleTask:Landroid/os/MessageQueue$IdleHandler;

    .line 21
    sget-boolean v0, Lcom/miui/home/launcher/common/GcTask;->sSupport:Z

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "GcTask"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/home/launcher/common/GcTask;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/miui/home/launcher/common/GcTask;->sSupport:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/common/GcTask;)Ljava/lang/Runnable;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/common/GcTask;->mGcTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/common/GcTask;)Landroid/os/Handler;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/common/GcTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private doGc()V
    .locals 1

    const-string p0, "GcTask"

    const-string v0, "doGc: "

    .line 60
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/GcTask;
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/launcher/common/GcTask;->sInstance:Lcom/miui/home/launcher/common/GcTask;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/miui/home/launcher/common/GcTask;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/GcTask;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/GcTask;->sInstance:Lcom/miui/home/launcher/common/GcTask;

    .line 33
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/GcTask;->sInstance:Lcom/miui/home/launcher/common/GcTask;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 53
    sget-boolean v0, Lcom/miui/home/launcher/common/GcTask;->sSupport:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/common/GcTask;->idleTask:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/common/GcTask;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/home/launcher/common/GcTask;->mGcTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/miui/home/launcher/common/GcTask;->sSupport:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/common/GcTask;->idleTask:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method
