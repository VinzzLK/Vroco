.class public Lcom/miui/home/launcher/common/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;
    }
.end annotation


# static fields
.field private static final mGcIdler:Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

.field private static mTrimMemoryRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$bxsGNreZq3oam4ZeSBUJzRvbt1U()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->lambda$forceGcBackground$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$w92cYzXt7z4CsImi0k518qvWO6Y()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->lambda$getTrimMemoryRunnableForHomeLaunch$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;-><init>(Lcom/miui/home/launcher/common/MemoryUtils$1;)V

    sput-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mGcIdler:Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

    .line 27
    new-instance v0, Lcom/miui/home/launcher/common/MemoryUtils$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/MemoryUtils$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 18
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->doGcIfNeeded()Z

    move-result v0

    return v0
.end method

.method private static bootTime()J
    .locals 2

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static doGcIfNeeded()Z
    .locals 4

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->bootTime()J

    move-result-wide v0

    const-wide/32 v2, 0x15f90

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static forceGcBackground()V
    .locals 1

    .line 55
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/common/MemoryUtils$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getTrimMemoryRunnableForHomeLaunch()Ljava/lang/Runnable;
    .locals 1

    .line 63
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/common/MemoryUtils$$ExternalSyntheticLambda1;

    return-object v0
.end method

.method private static synthetic lambda$forceGcBackground$0()V
    .locals 0

    .line 56
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 57
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 58
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private static synthetic lambda$getTrimMemoryRunnableForHomeLaunch$1()V
    .locals 2

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const-string v1, "MemoryUtils_Boot.opt"

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->doGcIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Call Explicit GC"

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->forceGcBackground()V

    goto :goto_0

    :cond_0
    const-string v0, "Home has been resumed, Do not call Explicit GC"

    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static removeTrimMemoryInSubThreadCallbacks()V
    .locals 1

    .line 45
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static scheduleGcIdler()V
    .locals 1

    .line 84
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mGcIdler:Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->scheduleGcIdler()V

    return-void
.end method

.method public static trimMemoryInSubThreadDelayed(J)V
    .locals 1

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/common/MemoryUtils;->removeTrimMemoryInSubThreadCallbacks()V

    .line 41
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static unscheduleGcIdler()V
    .locals 1

    .line 88
    sget-object v0, Lcom/miui/home/launcher/common/MemoryUtils;->mGcIdler:Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/MemoryUtils$GcIdler;->unscheduleGcIdler()V

    return-void
.end method
