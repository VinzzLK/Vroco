.class public Lcom/miui/home/recents/RecentsModel;
.super Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;
.source "RecentsModel.java"

# interfaces
.implements Lcom/miui/home/recents/MiuiSynergyListener$WorldCirculateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/miui/home/recents/RecentsModel;


# instance fields
.field private mBoostTaskStackChangedThreadTime:J

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentRunningTaskId:I

.field private mDisplay:Landroid/view/Display;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIgnoreTaskSnapshotChanged:Z

.field private mIgnoredSnapshots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRecentsTaskLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

.field private mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    .line 71
    iput v0, p0, Lcom/miui/home/recents/RecentsModel;->mCurrentRunningTaskId:I

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoredSnapshots:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 244
    iput-wide v0, p0, Lcom/miui/home/recents/RecentsModel;->mBoostTaskStackChangedThreadTime:J

    .line 90
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    .line 93
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f060654

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v3, 0x7f060655

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v3

    const v4, 0x7f0b004a

    if-eqz v3, :cond_0

    .line 99
    new-instance v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v6, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0b002e

    .line 100
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v5, 0x7f0b002d

    .line 101
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 102
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sget v10, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;IIII)V

    iput-object v3, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getMaxRecentTasksStatic()I

    move-result v8

    .line 105
    new-instance v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v6, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0030

    .line 106
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 108
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sget v10, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;IIII)V

    iput-object v3, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setDefaultColors(II)V

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 116
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Lcom/miui/home/recents/MiuiSynergyListener;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/MiuiSynergyListener;-><init>(Lcom/miui/home/recents/MiuiSynergyListener$WorldCirculateListener;)V

    .line 118
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->addRemoteDeviceListener(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;)V

    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/RecentsModel;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsModel;->boostTaskStackChangedThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private boostTaskStackChangedThread()V
    .locals 5

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/recents/RecentsModel;->mBoostTaskStackChangedThreadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    const-string v1, "RecentsModel"

    if-gez v0, :cond_0

    const-string p0, "boostTaskStackChangedThread, don\'t boost"

    .line 249
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    .line 253
    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getRecentResourceLoaderTid()I

    move-result v2

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boostTaskStackChangedThread once, tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", recentResourceLoaderTid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    sget-object v2, Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;->HIGH_FOR_NON_RENDER_THREAD:Lcom/miui/home/library/utils/CPUBooster$ThreadLevel;

    const/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostThreadLevel([IILcom/miui/home/library/utils/CPUBooster$ThreadLevel;)V

    .line 261
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/miui/launcher/utils/BoostHelper;->setDynamicVIPTaskIfNeeded(II)V

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/RecentsModel;->mBoostTaskStackChangedThreadTime:J

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;
    .locals 2

    .line 79
    sget-object v0, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    if-nez v0, :cond_1

    .line 80
    const-class v0, Lcom/miui/home/recents/RecentsModel;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/miui/home/recents/RecentsModel;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/home/recents/RecentsModel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    .line 84
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 86
    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/home/recents/RecentsModel;->INSTANCE:Lcom/miui/home/recents/RecentsModel;

    return-object p0
.end method

.method private getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .locals 0

    if-eqz p1, :cond_0

    .line 353
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 6

    .line 504
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    const-string v1, "RecentsModel"

    if-eqz v0, :cond_1

    .line 505
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    .line 506
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getVisibleOrRunningTask(I)Ljava/util/List;

    move-result-object v2

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRunningTask ignoreActivityType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,ignoreWindowMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 508
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    if-ne p2, v3, :cond_0

    .line 510
    invoke-direct {p0, v2}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreSmallWindow(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->useTasksVisibleSystemMethod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0, v2}, Lcom/miui/home/recents/RecentsModel;->removeInVisibleTask(Ljava/util/List;)V

    .line 515
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->filterTasks(Ljava/util/List;II)V

    goto :goto_0

    .line 517
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTask(II)Ljava/util/List;

    move-result-object v2

    .line 519
    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/RecentsModel;->removeOtherDisplayTask(Ljava/util/List;)V

    .line 520
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/RecentsModel;->removePipTask(Ljava/util/List;)V

    if-eqz v2, :cond_3

    .line 521
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 524
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getRunningTask   taskInfo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRunningTaskIgnoreHome(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 551
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 552
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 553
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 554
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_0

    .line 556
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 557
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getRunningTaskIgnoreSmallWindow(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)Z"
        }
    .end annotation

    .line 531
    invoke-static {}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->getInstance()Lcom/miui/home/smallwindow/SmallWindowStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelper;->isInSmallWindowMode()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 532
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 533
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 534
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 535
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_0

    .line 536
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isInFreeformMode(Landroid/app/TaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 537
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getRunningTaskIgnoreSplitPrimary(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 546
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->filterTasks(Ljava/util/List;II)V

    .line 547
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsModel;->removeSideMagicWindowTask(Ljava/util/List;)V

    return-void
.end method

.method private isTaskInfoVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    .line 592
    const-class p0, Landroid/app/TaskInfo;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 593
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVisible"

    .line 592
    invoke-static {p0, p1, v1, v0}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private logTasks(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "RecentsModel"

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 424
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 425
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v2, ", type:"

    const-string v3, "logTasks index=: "

    if-eqz v1, :cond_0

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", TaskInfo:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 429
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", TaskInfo is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "logTasks: tasks is null"

    .line 433
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private removeCastModeTask(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 488
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 491
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 493
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 495
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getScreenPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isTaskInCastMode(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeInVisibleTask(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 581
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 582
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->isTaskInfoVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeInVisibleTask   baseActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeSideMagicWindowTask(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 564
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    .line 565
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->findSideTaskIdInMagicWindow(Ljava/util/List;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return-void

    .line 569
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 570
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 572
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p0, :cond_1

    .line 573
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method private restoreIgnoredSnapshot()V
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoredSnapshots:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;

    .line 233
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-direct {v3, v4, v5, v1}, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;-><init>(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    .line 232
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoredSnapshots:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public clearRecentsTaskLoadPlan()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    return-void
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, -0x2

    const-string v2, "TaskStackChanged"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    .line 304
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;-><init>(Lcom/miui/home/recents/RecentsModel;Lcom/miui/home/recents/RecentsModel$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    .line 313
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 357
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndSplit()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRunningTaskForGesture(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskForGesture(ZZ)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRunningTaskForGesture(ZZ)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRunningTask containHome : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsModel"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 369
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTasksUnlock(I)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getVisibleOrRunningTask(I)Ljava/util/List;

    move-result-object p2

    :goto_0
    const-string v0, "type_all"

    .line 371
    invoke-direct {p0, p2, v0}, Lcom/miui/home/recents/RecentsModel;->logTasks(Ljava/util/List;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p2}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreSplitPrimary(Ljava/util/List;)V

    .line 374
    invoke-direct {p0, p2}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreSmallWindow(Ljava/util/List;)Z

    const-string v0, "type_ignore_split_and_freefrom"

    .line 375
    invoke-direct {p0, p2, v0}, Lcom/miui/home/recents/RecentsModel;->logTasks(Ljava/util/List;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/RecentsModel;->removeOtherDisplayTask(Ljava/util/List;)V

    .line 377
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/RecentsModel;->removePipTask(Ljava/util/List;)V

    .line 378
    invoke-direct {p0, p2}, Lcom/miui/home/recents/RecentsModel;->removeCastModeTask(Ljava/util/List;)V

    if-nez p1, :cond_1

    .line 380
    invoke-direct {p0, p2}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreHome(Ljava/util/List;)V

    :cond_1
    if-eqz p2, :cond_5

    .line 382
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_2

    .line 386
    :cond_2
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager;->isOpenFromHome()Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getRunningTaskId()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_4

    .line 388
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq p1, p0, :cond_4

    .line 389
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 394
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_3

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getRunningTask return tasks.get("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getRunningTask return tasks.get(0)= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_5
    :goto_2
    const-string p0, "getRunningTaskContainHome task is null or empty"

    .line 383
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningTaskId()I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 206
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .locals 7

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartRecentsTaskLoadPlan runningTaskId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecentsModel"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object p0

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmartRecentsTaskLoadPlan, loadPlan="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 v4, 0x0

    .line 136
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->updateTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "getSmartRecentsTaskLoadPlan"

    .line 138
    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSmartRecentsTaskLoadPlan isUpdateSuccess "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "getSmartRecentsTaskLoadPlan cache is null"

    .line 147
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object p0

    :cond_1
    const/4 p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setIsPrintTaskInfo(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "getSmartRecentsTaskLoadPlan loadPlan.hasTasks() false"

    .line 152
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v2, p0, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    .line 155
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmartRecentsTaskLoadPlan cost "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x5

    .line 457
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskInfoIgnoreFreeform   taskInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningBaseAcitity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RecentsModel"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTaskInfoIgnoreHomeAndFreeform()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 444
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTaskInfoIgnoreHomeAndSplit()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 438
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getRunningTask(II)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTaskLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    return-object p0
.end method

.method public getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    return-object p0
.end method

.method public getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleTaskIgnoreHome()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    const-string v0, "RecentsModel"

    const-string v1, "getVisibleTaskIgnoreHome"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getVisibleOrRunningTask(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 409
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreSplitPrimary(Ljava/util/List;)V

    .line 414
    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreSmallWindow(Ljava/util/List;)Z

    .line 415
    invoke-direct {p0, v0}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskIgnoreHome(Ljava/util/List;)V

    .line 416
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    const/4 p0, 0x0

    .line 419
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public isTaskInfoVisible(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 2

    .line 597
    const-class p0, Landroid/app/TaskInfo;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 598
    invoke-static {v0}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVisible"

    .line 597
    invoke-static {p0, p1, v1, v0}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isTaskScreening(Ljava/lang/String;)Z
    .locals 1

    .line 602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getScreenPkg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 274
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    .line 283
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 284
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->removeTitleCache(I)V

    .line 286
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-static {v1}, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->box(Ljava/lang/Object;)Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 288
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->removeIconCache(I)V

    :cond_1
    return-void
.end method

.method public onTaskDisplayChanged()V
    .locals 0

    .line 269
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->clearRecentsTaskLoadPlan()V

    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->removeThumbnailCache(I)V

    .line 215
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-direct {v0, p1, v1, p2}, Lcom/miui/home/recents/messages/TaskSnapshotChangedEvent;-><init>(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoredSnapshots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpdate()V
    .locals 1

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->clearRecentsTaskLoadPlan()V

    .line 319
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity(Z)V

    :cond_0
    return-void
.end method

.method public preloadRecents()V
    .locals 7

    .line 164
    iget v0, p0, Lcom/miui/home/recents/RecentsModel;->mCurrentRunningTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 165
    iget v0, p0, Lcom/miui/home/recents/RecentsModel;->mCurrentRunningTaskId:I

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskId()I

    move-result v0

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 171
    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 172
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 173
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preloadRecents runningTaskId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mCurrentRunningTaskId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/miui/home/recents/RecentsModel;->mCurrentRunningTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mRecentsTaskLoadPlan="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel;->mRecentsTaskLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "RecentsModel"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {v2, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->setIsPrintTaskInfo(Z)V

    .line 179
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(IZ)V

    .line 180
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    :cond_2
    return-void
.end method

.method public removeOtherDisplayTask(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 464
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 466
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 468
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getDisplayId(Landroid/app/TaskInfo;)I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 469
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removePipTask(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 476
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 477
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 478
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 479
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 480
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isInPipMode(Landroid/app/TaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentRunningTaskId(I)V
    .locals 0

    .line 606
    iput p1, p0, Lcom/miui/home/recents/RecentsModel;->mCurrentRunningTaskId:I

    return-void
.end method

.method public setIgnoreTaskSnapshotChanged(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsModel;->mIgnoreTaskSnapshotChanged:Z

    if-nez p1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsModel;->restoreIgnoredSnapshot()V

    :cond_0
    return-void
.end method
