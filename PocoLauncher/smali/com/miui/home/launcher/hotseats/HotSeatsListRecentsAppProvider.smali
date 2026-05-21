.class public Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;
.super Ljava/lang/Object;
.source "HotSeatsListRecentsAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;,
        Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mHotSeatItemFetcher:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMinTaskActiveTime:J

.field private final mRecentsRecommendApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/PairShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendContainer:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;

.field private final mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

.field private final mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;


# direct methods
.method public static synthetic $r8$lambda$0vSJwGruDHXjfz6rdq64QMS22Ro(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$onDetachedFromWindow$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$2RnGhhDP4cSSZjVNnFJnQUezUDQ(Lcom/miui/home/launcher/PairShortcutInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$10(Lcom/miui/home/launcher/PairShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4DvitB4sE4I5lRXCE2Z4Jv37wKQ(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$7(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$58ErfWpGwYAdTax8pWFhFjcFgzE(Ljava/util/List;Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$9(Ljava/util/List;Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/launcher/PairShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$92_rXMlYdsZvA4Ic5lUiL0kPu3w(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$handleUpdateRecommendTasks$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BogxeIa00CpnG9EIvlj2LMD8BJM(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$RvM3HrZkM_qKSRWOeAW8P3HYicQ(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/lang/Void;)Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$2(Ljava/lang/Void;)Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UWQcZWkbdlVZ5cYmyuX2ue3Ep9c(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Lcom/miui/home/launcher/ItemInfo;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$4(Lcom/miui/home/launcher/ItemInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X9_SXMDoKLPmpAsFmzN932tyG9A(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$5(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZYaFsGhRraKxSSklv19c0XPhutA(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$onAttachedToWindow$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$aFT-7_FLk7iosklclQ8r4VZ_EQ0(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->filterSupportLaunchPairApp(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$d3rYSPcTDA_Jw84ZKFsIrBmHaS4(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$8(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nBT5Op9YZEy2uJzxHLbqX64qYBU(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$3(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$orO-x8IeQyE5f5pktx00snTao3U(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/lang/Runnable;Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$11(Ljava/lang/Runnable;Lcom/android/systemui/shared/recents/model/TaskStack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$utqdHtrwJ45auQsPkbGXuulxfA0(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$removeCache$14(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zgrQtRMT7UbOVAn1ilnUlZoIh9c(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasksAsync$6(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecentsRecommendApps:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 56
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    .line 61
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mContext:Landroid/content/Context;

    .line 71
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHotSeatItemFetcher:Ljava/util/function/Supplier;

    .line 72
    new-instance p1, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$2;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onTaskStackChangedBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->isNeedUpdateRecommend()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;J)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->postUpdateRecommendTasks(J)V

    return-void
.end method

.method private evaluateRecentsRecommendTasksAsync(Ljava/lang/Runnable;)V
    .locals 2

    .line 142
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda8;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private filterSupportLaunchPairApp(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    .line 267
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private getItemPackageNames(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 193
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 194
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private getItemUserIds(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 182
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private getLimitCount()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method private getTaskPackageNames(Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method private getTaskUserIds(Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method private isNeedUpdateRecommend()Z
    .locals 1

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 134
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$evaluateRecentsRecommendTasksAsync$10(Lcom/miui/home/launcher/PairShortcutInfo;)Z
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$evaluateRecentsRecommendTasksAsync$11(Ljava/lang/Runnable;Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHotSeatItemFetcher:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda15;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda15;

    .line 144
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    .line 145
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 146
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 148
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/AllAppsList;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda12;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    .line 151
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda13;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    .line 152
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda4;

    .line 153
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda14;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/Set;)V

    .line 155
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 156
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getLimitCount()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p2, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p2

    .line 157
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 159
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda10;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda10;

    .line 160
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda5;

    .line 161
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    .line 164
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    .line 165
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda17;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda17;

    .line 166
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda16;->INSTANCE:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda16;

    .line 167
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 168
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecentsRecommendApps:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->rearrangeRecentsRecommendTasks(Ljava/util/List;Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 172
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$evaluateRecentsRecommendTasksAsync$2(Ljava/lang/Void;)Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$evaluateRecentsRecommendTasksAsync$3(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$evaluateRecentsRecommendTasksAsync$4(Lcom/miui/home/launcher/ItemInfo;)Landroid/util/Pair;
    .locals 2

    .line 145
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getItemUserIds(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getItemPackageNames(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$evaluateRecentsRecommendTasksAsync$5(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 2

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mMinTaskActiveTime:J

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$evaluateRecentsRecommendTasksAsync$6(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 2

    .line 153
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$evaluateRecentsRecommendTasksAsync$7(Ljava/util/Set;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 2

    .line 155
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getTaskUserIds(Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getTaskPackageNames(Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$evaluateRecentsRecommendTasksAsync$8(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/Long;
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getLastActiveTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$evaluateRecentsRecommendTasksAsync$9(Ljava/util/List;Lcom/android/systemui/shared/recents/model/Task;)Lcom/miui/home/launcher/PairShortcutInfo;
    .locals 0

    .line 165
    invoke-static {p1, p0}, Lcom/miui/home/recents/util/PairUtils;->findPairShortcutInfo(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/List;)Lcom/miui/home/launcher/PairShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleUpdateRecommendTasks$1(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->notifyRecommendUpdated()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->evaluateRecentsRecommendTasksAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$12()V
    .locals 2

    .line 276
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 277
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDetachedFromWindow$13()V
    .locals 2

    .line 285
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mTaskStackChangeListener:Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V

    .line 286
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$removeCache$14(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;)Z
    .locals 0

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyRecommendUpdated()V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendContainer:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;

    if-eqz p0, :cond_0

    .line 259
    invoke-interface {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;->onRecommendUpdate()V

    :cond_0
    return-void
.end method

.method private onTaskStackChangedBackground()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->postUpdateRecommendTasks(J)V

    return-void
.end method

.method private postUpdateRecommendTasks(J)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private rearrangeRecentsRecommendTasks(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/PairShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/PairShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 236
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    invoke-interface {p0, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 242
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 243
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 245
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 247
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/PairShortcutInfo;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public bindRecommendContainer(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendContainer:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;

    return-void
.end method

.method public getRecommendApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/PairShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecentsRecommendApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 103
    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;->getGroupShortcutInfo(Lcom/miui/home/launcher/PairShortcutInfo;)Lcom/miui/home/launcher/PairShortcutInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newRecommendList size: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HotSeatsListRecentsAppProvider"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public handleUpdateRecommendTasks(Z)V
    .locals 1

    .line 123
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Z)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->evaluateRecentsRecommendTasksAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 275
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 284
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/RecentTasksChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 294
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz p1, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->onTaskStackChangedBackground()V

    :cond_0
    return-void
.end method

.method public removeCache(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->mRecommendShortcutCache:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$PairShortcutCache;

    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda11;-><init>(Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method

.method public requestUpdateRecommendTasks()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->handleUpdateRecommendTasks(Z)V

    return-void
.end method
