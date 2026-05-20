.class public Lcom/miui/home/launcher/util/BoostRtHelper;
.super Ljava/lang/Object;
.source "BoostRtHelper.java"


# static fields
.field private static final sInstance:Lcom/miui/home/launcher/util/BoostRtHelper;


# instance fields
.field private mEnableRTMode:Z

.field private mIsSchedRTDisabled:Z

.field private mIsSupportAsyncRT:Z

.field private mIsSupportSetRtMode:Z

.field private mProcessManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mSchedThreadsAsyncMethod:Ljava/lang/reflect/Method;

.field private mSchedThreadsMethod:Ljava/lang/reflect/Method;

.field private mSchedThreadsModeMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/miui/home/launcher/util/BoostRtHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/BoostRtHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/BoostRtHelper;->sInstance:Lcom/miui/home/launcher/util/BoostRtHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    const-string v0, "beginSchedThreads"

    const-string v1, "BoostRtHelper"

    const-string v2, "[I"

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 24
    iput-boolean v3, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    const/4 v4, 0x0

    .line 25
    iput-object v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    .line 26
    iput-object v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    .line 27
    iput-object v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsModeMethod:Ljava/lang/reflect/Method;

    .line 28
    iput-object v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsAsyncMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    .line 29
    iput-boolean v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mEnableRTMode:Z

    .line 30
    iput-boolean v3, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    .line 31
    iput-boolean v3, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportAsyncRT:Z

    :try_start_0
    const-string v5, "miui.process.ProcessManager"

    .line 48
    invoke-static {v5}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    .line 49
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    .line 50
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-static {v6, v8}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Class;

    .line 51
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v3

    aput-object v9, v8, v4

    .line 49
    invoke-static {v5, v0, v6, v8}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    .line 52
    iget-object v5, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Class;

    .line 53
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v10, v3

    aput-object v9, v10, v4

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    invoke-static {v6, v10}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-array v10, v8, [Ljava/lang/Class;

    .line 54
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v3

    aput-object v9, v10, v4

    aput-object v11, v10, v7

    .line 52
    invoke-static {v5, v0, v6, v10}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsModeMethod:Ljava/lang/reflect/Method;

    .line 56
    iget-object v5, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    new-array v12, v10, [Ljava/lang/Class;

    .line 57
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v12, v3

    aput-object v9, v12, v4

    aput-object v11, v12, v7

    aput-object v11, v12, v8

    invoke-static {v6, v12}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-array v10, v10, [Ljava/lang/Class;

    .line 58
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v10, v3

    aput-object v9, v10, v4

    aput-object v11, v10, v7

    aput-object v11, v10, v8

    .line 56
    invoke-static {v5, v0, v6, v10}, Lcom/miui/launcher/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsAsyncMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "reflect error"

    .line 61
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    const-string v0, "persist.sys.enable_rtmode"

    .line 65
    invoke-static {v0, v4}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mEnableRTMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "get property error"

    .line 67
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mProcessManagerClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mEnableRTMode:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move v0, v3

    goto :goto_3

    :cond_1
    :goto_2
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsModeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsAsyncMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iput-boolean v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportAsyncRT:Z

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSchedRTDisabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   mIsSupportSetRtMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSupportAsyncRT = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportAsyncRT:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/util/BoostRtHelper;[IJI)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreadInternalSync([IJI)V

    return-void
.end method

.method private addMainThreadAndRenderThread(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 199
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/util/BoostRtHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p0

    if-lez p0, :cond_1

    .line 204
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private boostThreadInternal(JLjava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/util/BoostRtHelper;->convertListToArray(Ljava/util/ArrayList;)[I

    move-result-object v2

    if-eqz v2, :cond_2

    .line 125
    array-length p3, v2

    if-nez p3, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-boolean p3, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportAsyncRT:Z

    if-eqz p3, :cond_1

    .line 130
    invoke-direct {p0, v2, p1, p2, p4}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreadInternalAsync([IJI)V

    goto :goto_0

    .line 132
    :cond_1
    const-class p3, Lcom/miui/home/launcher/common/BackgroundThread;

    const-class v0, Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getHandler"

    invoke-static {p3, v0, v4, v1, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    new-instance v6, Lcom/miui/home/launcher/util/BoostRtHelper$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/util/BoostRtHelper$1;-><init>(Lcom/miui/home/launcher/util/BoostRtHelper;[IJI)V

    invoke-virtual {p3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private boostThreadInternalAsync([IJI)V
    .locals 3

    .line 105
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsAsyncMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BoostRtHelper"

    const-string p2, "boostThreadInternalAsync error "

    .line 107
    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private boostThreadInternalSync([IJI)V
    .locals 5

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsModeMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v3

    .line 116
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-virtual {p0, v4, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BoostRtHelper"

    const-string p2, "boostThreadInternalSync error "

    .line 119
    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private boostTurboSchedActionWithPriority(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 228
    sget v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostTurboSchedActionWithPriority(Landroid/view/View;[I)V

    return-void
.end method

.method private boostTurboSchedActionWithPriority(Landroid/view/View;[I)V
    .locals 3

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/util/BoostRtHelper;->addMainThreadAndRenderThread(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 220
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p2, v1

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/util/BoostRtHelper;->convertListToArray(Ljava/util/ArrayList;)[I

    move-result-object p0

    .line 224
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/launcher/utils/BoostHelper;->setTurboSchedActionWithPriority([IJ)V

    return-void
.end method

.method private convertListToArray(Ljava/util/ArrayList;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 95
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;
    .locals 1

    .line 81
    sget-object v0, Lcom/miui/home/launcher/util/BoostRtHelper;->sInstance:Lcom/miui/home/launcher/util/BoostRtHelper;

    return-object v0
.end method

.method private getRenderThreadId(Landroid/view/View;)I
    .locals 0

    .line 211
    :try_start_0
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public boostGesture(Landroid/view/View;Z)V
    .locals 7

    .line 142
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    move v6, p2

    .line 148
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->isUseGesturePriorityThread()Z

    move-result p2

    const-string v1, "BoostRtHelper"

    const/4 v2, 0x0

    if-nez p2, :cond_2

    const-string p2, "boostGesture main"

    .line 149
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 150
    sget v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid0:I

    aput v1, p2, v2

    sget v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->sHwuiTaskTid1:I

    aput v1, p2, v0

    goto :goto_1

    :cond_2
    new-array p2, v0, [I

    .line 152
    invoke-static {}, Lcom/miui/home/recents/TouchInteractionService;->getPriorityThreadId()I

    move-result v0

    aput v0, p2, v2

    const-string v0, "boostGesture priority"

    .line 153
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-wide/16 v2, 0x3e8

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 155
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreads(JLandroid/view/View;[II)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostTurboSchedActionWithPriority(Landroid/view/View;[I)V

    return-void
.end method

.method public boostMainThreadAndRenderThread(JLandroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    .line 178
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostMainThreadAndRenderThread(JLandroid/view/View;I)V

    return-void
.end method

.method public boostMainThreadAndRenderThread(JLandroid/view/View;I)V
    .locals 2

    .line 182
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BoostRtHelper"

    const-string v1, "boostMainThreadAndRenderThread"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-direct {p0, v0, p3}, Lcom/miui/home/launcher/util/BoostRtHelper;->addMainThreadAndRenderThread(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 189
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreadInternal(JLjava/util/ArrayList;I)V

    :cond_1
    const/4 p1, 0x5

    if-ne p4, p1, :cond_2

    .line 193
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostTurboSchedActionWithPriority(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public boostThreads(JLandroid/view/View;[I)V
    .locals 6

    const/4 v5, 0x4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreads(JLandroid/view/View;[II)V

    return-void
.end method

.method public boostThreads(JLandroid/view/View;[II)V
    .locals 3

    .line 164
    iget-boolean v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-direct {p0, v0, p3}, Lcom/miui/home/launcher/util/BoostRtHelper;->addMainThreadAndRenderThread(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 169
    array-length p3, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p4, v1

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 173
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreadInternal(JLjava/util/ArrayList;I)V

    :cond_2
    return-void
.end method

.method public isSchedRTDisabled()Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSchedRTDisabled:Z

    return p0
.end method

.method public isSupportSetRtMode()Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper;->mIsSupportSetRtMode:Z

    return p0
.end method
