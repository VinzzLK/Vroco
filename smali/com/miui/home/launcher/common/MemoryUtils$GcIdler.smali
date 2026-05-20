.class Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;
.super Ljava/lang/Object;
.source "MemoryUtils.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/MemoryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GcIdler"
.end annotation


# instance fields
.field private mGcIdlerScheduled:Z

.field private mGcIdlerSuccessScheduled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    .line 93
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerSuccessScheduled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/MemoryUtils$1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerSuccessScheduled:Z

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->access$100()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "MemoryUtils"

    const-string v0, "onScreenOff run gc task"

    .line 115
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleGcIdler()V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    .line 98
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const-string p0, "MemoryUtils"

    const-string v0, "scheduleGcIdler"

    .line 99
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public unscheduleGcIdler()V
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerSuccessScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->mGcIdlerScheduled:Z

    .line 106
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const-string p0, "MemoryUtils"

    const-string/jumbo v0, "unscheduleGcIdler"

    .line 107
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
