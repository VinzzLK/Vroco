.class Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;
.super Ljava/lang/Object;
.source "HandoffControllerManager.java"


# instance fields
.field private mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

.field private final mContext:Landroid/content/Context;

.field private final mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

.field private mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

.field private final mInnerCallback:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

.field private final mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

.field private mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

.field private mPackageReceiver:Lcom/xiaomi/dist/handoff/system/PackageReceiver;

.field private final mTaskListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4gM4ExAtLinUJVkew7siDosfYLc(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$getAllHandoffTask$6(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LRHC4-oXdFgvuK8UBvoRL13yfDk(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$registerLocalHandoffSessionListener$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RdCIDIKUpWW2hBgcrCmL3KKrcBg(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$getAllHandoffTask$5(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_XfahhVff7D_4I1qq9lVl4-wiFo(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;Lcom/xiaomi/dist/common/ResultDescriptor;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$registerLocalHandoffSessionListener$2(Lcom/xiaomi/dist/common/ResultDescriptor;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iKcTnCrO5zx43kCU1TR2uziBqAo(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$reportLocalHandoffTaskUpdate$4(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kL2NWLa0YKXyg0BNsX7o5b6i7zA(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$new$3(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNsrgZOvtuEo_WthfoEvgsvUld8(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)Lcom/xiaomi/dist/common/ResultDescriptor;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->lambda$queryActiveLocalHandoffTask$0()Lcom/xiaomi/dist/common/ResultDescriptor;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 36
    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    new-array v0, v0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 38
    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    .line 146
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mInnerCallback:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    .line 48
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->getInstance()Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    .line 50
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-direct {v0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    return-void
.end method

.method private getAllHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 7

    const-string v0, "HandoffControllerManager"

    const-string v1, "getAllHandoffTask"

    .line 180
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 185
    invoke-virtual {v3}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppMeta()Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object v4

    if-nez v4, :cond_1

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v4}, Lcom/xiaomi/dist/handoff/AppMeta;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v4

    .line 191
    iget-object v5, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/xiaomi/dist/handoff/system/PackageReceiver;->checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    invoke-virtual {v3}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->isSupportAppLink()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/xiaomi/dist/handoff/system/SystemPropertyUtil;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 197
    iget-object v3, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v4, v3

    const/4 v5, 0x0

    if-lez v4, :cond_3

    .line 198
    aget-object v2, v3, v5

    invoke-virtual {v2}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x2

    .line 201
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v4

    iget-object v6, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getShowMirrorType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_4

    const-string v2, "miui relay show mirror"

    .line 202
    invoke-static {v0, v2}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda4;

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 205
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, v5, p0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    .line 207
    :cond_4
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    sget-object p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda3;->INSTANCE:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda3;

    invoke-interface {v1, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :goto_1
    new-array p0, v5, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 211
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-object p0
.end method

.method private getAllHandoffTaskAndReport(Z)V
    .locals 2

    .line 215
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getAllHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 219
    :cond_0
    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mAllTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 220
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->reportLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method private getProtocolTypeByTaskId(I)I
    .locals 7

    const-string v0, "HandoffControllerManager"

    const-string v1, "getProtocolTypeByTaskId"

    .line 224
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 227
    invoke-virtual {v6}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getHandoffTaskId()I

    move-result v6

    if-ne v6, p1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 232
    :goto_1
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v2, p0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v6, p0, v4

    .line 233
    invoke-virtual {v6}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getHandoffTaskId()I

    move-result v6

    if-ne v6, p1, :cond_2

    move v1, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    new-array p0, v5, [Ljava/lang/Object;

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "getProtocolTypeByTaskId, protocol type=%s"

    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private static synthetic lambda$getAllHandoffTask$5(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I
    .locals 2

    .line 204
    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getLastActiveTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getLastActiveTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private static synthetic lambda$getAllHandoffTask$6(Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)I
    .locals 2

    .line 209
    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getLastActiveTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getLastActiveTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$new$3(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "TaskListenerInner.onLocalHandoffTaskUpdate"

    .line 147
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length v1, v1

    if-nez v1, :cond_0

    array-length v1, p2

    if-nez v1, :cond_0

    return-void

    .line 152
    :cond_0
    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    :cond_1
    if-nez p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    array-length p1, p1

    if-nez p1, :cond_2

    array-length p1, p2

    if-nez p1, :cond_2

    return-void

    .line 158
    :cond_2
    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 160
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mergeTasks()V

    .line 161
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getAllHandoffTaskAndReport(Z)V

    return-void
.end method

.method private synthetic lambda$queryActiveLocalHandoffTask$0()Lcom/xiaomi/dist/common/ResultDescriptor;
    .locals 6

    const-string v0, "handleQueryActiveLocalHandoffTask exception"

    const-string v1, "HandoffControllerManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-virtual {v4}, Lcom/xiaomi/dist/handoff/system/HandoffController;->queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iput-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 59
    invoke-static {v1, v0, v5}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v4, v3, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 60
    iput-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 63
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    invoke-virtual {v4}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iput-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 65
    invoke-static {v1, v0, v5}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 66
    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 68
    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mergeTasks()V

    .line 69
    new-instance v0, Lcom/xiaomi/dist/handoff/system/result/HandoffResultDescriptor;

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getAllHandoffTask()[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    const-string v1, "success"

    invoke-direct {v0, p0, v2, v1}, Lcom/xiaomi/dist/handoff/system/result/HandoffResultDescriptor;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    return-object v0
.end method

.method private synthetic lambda$registerLocalHandoffSessionListener$1(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "HandoffControllerManager"

    const-string v2, "onPackageRemoved, packageName=%s"

    .line 82
    invoke-static {p1, v2, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getAllHandoffTaskAndReport(Z)V

    return-void
.end method

.method private synthetic lambda$registerLocalHandoffSessionListener$2(Lcom/xiaomi/dist/common/ResultDescriptor;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "HandoffControllerManager"

    const-string p2, "update handoff tasks after register"

    .line 88
    invoke-static {p1, p2}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getAllHandoffTaskAndReport(Z)V

    return-void
.end method

.method private static synthetic lambda$reportLocalHandoffTaskUpdate$4(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    .line 173
    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;->onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method private mergeTasks()V
    .locals 10

    const-string v0, "HandoffControllerManager"

    const-string v1, "mergeTasks"

    .line 246
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getSubScreenPackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 256
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 258
    invoke-virtual {v5}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppMeta()Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/dist/handoff/AppMeta;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 264
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 265
    invoke-virtual {v1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppId()I

    move-result v4

    .line 266
    invoke-virtual {v1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 267
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 269
    invoke-virtual {v7}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getAppId()I

    move-result v8

    .line 270
    invoke-virtual {v7}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    if-ne v4, v8, :cond_3

    .line 272
    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 273
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 276
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 278
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iput-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    new-array v0, v0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    .line 279
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayTasks:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-void

    :cond_6
    :goto_3
    const-string p0, "mergeTasks, skip"

    .line 251
    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 5

    const-string v0, "HandoffControllerManager"

    const-string v1, "reportLocalHandoffTaskUpdate, all task=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;

    .line 169
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 171
    invoke-interface {v2, p1}, Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;->onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    goto :goto_0

    .line 173
    :cond_0
    new-instance v3, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda2;-><init>(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 176
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/xiaomi/dist/common/ResultDescriptor<",
            "[",
            "Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;",
            ">;>;"
        }
    .end annotation

    const-string v0, "HandoffControllerManager"

    const-string v1, "handleQueryActiveLocalHandoffTask"

    .line 54
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda6;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V

    .line 72
    invoke-static {}, Lcom/xiaomi/dist/utils/Schedulers;->computation()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 55
    invoke-static {v0, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method registerLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "handleRegisterLocalHandoffSessionListener"

    .line 77
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iget-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mInnerCallback:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    invoke-virtual {p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->registerLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/TaskListenerInner;)V

    .line 80
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    iget-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mInnerCallback:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    invoke-virtual {p1, p2, v1}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->registerLocalHandoffSessionListener(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/TaskListenerInner;)V

    .line 81
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V

    invoke-static {p1, p2}, Lcom/xiaomi/dist/handoff/system/PackageReceiver;->registerPackageRemoveCallback(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;)Lcom/xiaomi/dist/handoff/system/PackageReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mPackageReceiver:Lcom/xiaomi/dist/handoff/system/PackageReceiver;

    const-string p1, "query handoff tasks after register"

    .line 85
    invoke-static {v0, p1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->queryActiveLocalHandoffTask()Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    new-instance p2, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda5;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "handleStartTransferSessionToLocal"

    .line 107
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->getProtocolTypeByTaskId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffController;->startTransferSessionToLocal(ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mMiuiRelayController:Lcom/xiaomi/dist/handoff/system/MiuiRelayController;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/MiuiRelayController;->startTransferSessionToLocal(Landroid/content/Context;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    const-string p1, "handoff task not found"

    .line 114
    invoke-interface {p2, p0, p1}, Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method unregisterLocalHandoffSessionListener(Lcom/xiaomi/dist/handoff/system/callback/ActiveLocalHandoffTaskListener;)V
    .locals 2

    const-string v0, "HandoffControllerManager"

    const-string v1, "handleUnregisterLocalHandoffSessionListener"

    .line 94
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mTaskListenerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mHandoffController:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-virtual {p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->unregisterLocalHandoffSessionListener()V

    .line 100
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->mPackageReceiver:Lcom/xiaomi/dist/handoff/system/PackageReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "unregister package receiver error"

    .line 102
    invoke-static {v0, p1, p0}, Lcom/xiaomi/dist/handoff/system/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
