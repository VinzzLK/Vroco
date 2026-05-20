.class public Lcom/android/systemui/shared/recents/system/TimeOutTask;
.super Ljava/lang/Object;
.source "TimeOutTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeOutTask"

.field public static final TIMEOUT:I = 0x32


# instance fields
.field private final executors:Lcom/miui/home/library/utils/LooperExecutor;

.field private volatile hasCalled:Z

.field private originRunnable:Ljava/lang/Runnable;

.field private final timeoutMs:I


# direct methods
.method public constructor <init>(Lcom/miui/home/library/utils/LooperExecutor;Ljava/lang/Runnable;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->hasCalled:Z

    .line 17
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->executors:Lcom/miui/home/library/utils/LooperExecutor;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->originRunnable:Ljava/lang/Runnable;

    const/16 p1, 0x32

    .line 19
    iput p1, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->timeoutMs:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/library/utils/LooperExecutor;Ljava/lang/Runnable;I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->hasCalled:Z

    .line 23
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->executors:Lcom/miui/home/library/utils/LooperExecutor;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->originRunnable:Ljava/lang/Runnable;

    .line 25
    iput p3, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->timeoutMs:I

    return-void
.end method


# virtual methods
.method public getExecutors()Lcom/miui/home/library/utils/LooperExecutor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->executors:Lcom/miui/home/library/utils/LooperExecutor;

    return-object p0
.end method

.method public postTimeout()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->executors:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->timeoutMs:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " run: hasCalled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->hasCalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeOutTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->hasCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->hasCalled:Z

    .line 33
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->executors:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->executors:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->originRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TimeOutTask;->originRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
