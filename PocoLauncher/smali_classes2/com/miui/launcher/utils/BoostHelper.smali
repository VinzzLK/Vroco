.class public Lcom/miui/launcher/utils/BoostHelper;
.super Ljava/lang/Object;
.source "BoostHelper.java"


# static fields
.field private static final BOOST_PRIORITY:I = -0x14

.field private static final TAG:Ljava/lang/String; = "Launcher.Boost"

.field private static final sInstance:Lcom/miui/launcher/utils/BoostHelper;


# instance fields
.field private mIsDynamicVIPContextForGCDisabled:Z

.field private mIsTurboSchedDisabled:Z

.field private mLastDuration:J

.field private mNormalBoostToken:Ljava/lang/Object;

.field private mOldRenderPriority:I

.field private mOldUIPriority:I

.field private mRenderThreadTid:I

.field private mStartTime:J

.field private mTurboSchedManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mTurboSchedManagerObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/miui/launcher/utils/BoostHelper;

    invoke-direct {v0}, Lcom/miui/launcher/utils/BoostHelper;-><init>()V

    sput-object v0, Lcom/miui/launcher/utils/BoostHelper;->sInstance:Lcom/miui/launcher/utils/BoostHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    .line 29
    iput-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    .line 31
    iput-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mNormalBoostToken:Ljava/lang/Object;

    .line 33
    iput-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsDynamicVIPContextForGCDisabled:Z

    const-string v1, "miui.turbosched.TurboSchedManager"

    .line 36
    invoke-static {v1}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 37
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    const-string v0, "setDynamicVIPContextForGC"

    invoke-static {v1, v0, v3}, Lcom/miui/launcher/utils/ReflectUtils;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsDynamicVIPContextForGCDisabled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/miui/launcher/utils/BoostHelper;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/miui/launcher/utils/BoostHelper;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mLastDuration:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Object;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/launcher/utils/BoostHelper;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/launcher/utils/BoostHelper;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    return p1
.end method

.method private bindCoreInternal(Landroid/view/View;J)V
    .locals 11

    .line 97
    iget-object v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Boost"

    const-string v1, "bindCoreInternal mTurboSchedManagerClass is null"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    iget-wide v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mStartTime:J

    sub-long/2addr v0, v2

    .line 103
    iget-wide v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mLastDuration:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    sub-long v4, p2, v2

    move-wide v5, v4

    goto :goto_0

    :cond_1
    move-wide v5, p2

    .line 105
    :goto_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    cmp-long v0, v5, v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "com.miui.home.launcher.common.BackgroundThread"

    .line 109
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getHandler"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Handler;

    .line 110
    iget-object v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mNormalBoostToken:Ljava/lang/Object;

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    new-instance v10, Lcom/miui/launcher/utils/BoostHelper$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/launcher/utils/BoostHelper$1;-><init>(Lcom/miui/launcher/utils/BoostHelper;Landroid/view/View;JJ)V

    iget-object v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mNormalBoostToken:Ljava/lang/Object;

    invoke-virtual {v9, v10, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public static getInstance()Lcom/miui/launcher/utils/BoostHelper;
    .locals 1

    .line 41
    sget-object v0, Lcom/miui/launcher/utils/BoostHelper;->sInstance:Lcom/miui/launcher/utils/BoostHelper;

    return-object v0
.end method


# virtual methods
.method public bindCore(Landroid/view/View;J)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/utils/BoostHelper;->bindCoreInternal(Landroid/view/View;J)V

    return-void
.end method

.method public boost(Landroid/view/View;Z)V
    .locals 4

    const-string v0, "Launcher.Boost"

    .line 69
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boost enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";ui thread tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";render thread tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "render-thread tid = 0, do not boost"

    .line 75
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 79
    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p2

    iput p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui thread old priority="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p2

    iput p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render thread old priority="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x14

    .line 83
    invoke-static {v1, p0, v0}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 84
    invoke-static {p1, p0, v0}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p0, "ui thread and render thread are boosted"

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_1
    iget p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    invoke-static {v1, p2, v0}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    .line 88
    iget p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    invoke-static {p1, p0, v0}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p0, "ui thread and render thread are reset"

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "boost failed"

    .line 92
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getRenderThreadId(Landroid/view/View;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 53
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "nGetRenderThreadTid"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v3, "mNativeProxy"

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    new-array v0, v1, [Ljava/lang/Object;

    .line 60
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRenderThreadId tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Boost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    .line 64
    :cond_0
    iget p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    return p0
.end method

.method public setDynamicVIPTaskIfNeeded(I)V
    .locals 7

    const-string v0, "Launcher.Boost"

    .line 163
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicVIPTaskIfNeeded::duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "setDynamicVIPTaskIfNeeded"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    .line 164
    invoke-static {p0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setDynamicVIPTaskIfNeeded error: "

    .line 167
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setDynamicVIPTaskIfNeeded(II)V
    .locals 8

    const-string v0, "Launcher.Boost"

    .line 173
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicVIPTaskIfNeeded::tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "setDynamicVIPTaskIfNeeded"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    .line 174
    invoke-static {p0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setDynamicVIPTaskIfNeeded error: "

    .line 177
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setTurboSchedActionWithPriority([IJ)V
    .locals 8

    const-string v0, "Launcher.Boost"

    .line 144
    iget-boolean v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    if-eqz v1, :cond_0

    return-void

    .line 148
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTurboSchedActionWithPriority::threadIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "setTurboSchedActionWithPriority"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "[I"

    .line 150
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v7

    .line 149
    invoke-static {p0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setTurboSchedActionWithPriority error: "

    .line 152
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
