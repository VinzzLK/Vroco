.class Lmiuix/animation/internal/AnimScheduler;
.super Ljava/lang/Object;
.source "AnimScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/AnimScheduler$SetToInfo;
    }
.end annotation


# static fields
.field static final MSG_CLEAN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MSG_RUN:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MSG_SET_TO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MSG_TO:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MSG_UPDATE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public handler:Landroid/os/Handler;

.field private final mAnimTaskForRun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mAnimTaskSchedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mEngine:Lmiuix/animation/internal/FolmeEngine;

.field private volatile mEngineStart:Z

.field private mFrameCount:I

.field protected mHasTaskStackRunning:Z

.field private final mOneShotTargets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/internal/AnimOperationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreDelTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPrepareTransMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAnimCount:I

.field protected final mRunningTarget:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mStart:Z

.field private final mTaskStackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackSplitInfo:[I

.field private final mTempSetupInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTargetRunningInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalTNanos:J

.field private final mTransListForRun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final runnerThreadId:J

.field public final runningStackCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$79PYVzxg6hT7sptOSCHFYD35FB4(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->lambda$executeNotifyTransitionBegin$3(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H3gjO2FlHEVomspm8q5pSXjS5AY(Lmiuix/animation/internal/AnimScheduler;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->lambda$executeDoAnimOnFrame$2(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jyjp18iwOZdUxzikyIet-etLcSc(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->lambda$executeTo$1(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qC1NMpzGAWZofEocgrbk_yuMPT0(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->lambda$executeTo$0(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method constructor <init>(Lmiuix/animation/internal/FolmeEngine;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskSchedMap:Ljava/util/HashMap;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mOneShotTargets:Ljava/util/Set;

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    .line 49
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mOpMap:Ljava/util/Map;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskForRun:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTempTargetRunningInfo:Ljava/util/List;

    .line 60
    iput-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->runningStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    .line 70
    iput v0, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 75
    iput-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackSplitInfo:[I

    .line 78
    iput-object p1, p0, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/internal/AnimScheduler;->runnerThreadId:J

    return-void
.end method

.method private addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmiuix/animation/utils/LinkNode;",
            ">(",
            "Lmiuix/animation/IAnimTarget;",
            "TT;",
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "TT;>;)V"
        }
    .end annotation

    .line 927
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/utils/LinkNode;

    if-nez p0, :cond_0

    .line 931
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 936
    :cond_0
    invoke-virtual {p0, p2}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    :goto_0
    return-void
.end method

.method private assignAnimTaskToStack(Ljava/util/List;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;II)V"
        }
    .end annotation

    .line 976
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/AnimTask;

    .line 977
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v1, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    if-eqz v1, :cond_0

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning!! first task of first stack has next task!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " next:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuix_anim"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 982
    iput-object v1, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    goto :goto_0

    .line 986
    :cond_1
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 987
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 988
    invoke-static {v1}, Lmiuix/animation/internal/AnimTask;->getAnimCountOfTaskStack(Lmiuix/animation/internal/AnimTask;)I

    move-result v2

    .line 989
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ assignAnimTaskToStack-> firstStackCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    :cond_2
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_3

    .line 993
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 995
    :cond_3
    invoke-virtual {v1, v0}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    goto/16 :goto_0

    .line 998
    :cond_4
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->getMinAnimCountOfOtherStack()Landroid/util/Pair;

    move-result-object v1

    .line 999
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ assignAnimTaskToStack-> minAnimCountStackInfo.min "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    :cond_5
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lmiuix/animation/internal/AnimTask;

    .line 1003
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1004
    iget-object v4, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, p3, -0x1

    if-gt v4, v2, :cond_6

    .line 1005
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, p2, :cond_6

    .line 1008
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1012
    :cond_6
    invoke-virtual {v3, v0}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static changeRunningPropertyOp(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;)V
    .locals 7

    .line 878
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 879
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 881
    iget-object v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 882
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " |---- before step1 changeRunningPropertyOp doOp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " update.property="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    :cond_2
    invoke-static {v0}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-byte v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    if-eqz v4, :cond_7

    iget-object v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 888
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    if-eqz v1, :cond_4

    .line 891
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " |---- step1 changeRunningPropertyOp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'s op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to opInfo.op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    :cond_4
    iget v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    add-int/2addr v4, v3

    iput v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 895
    iget-byte v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 896
    iget v4, p2, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v4, v3

    iput v4, p2, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 897
    iget v4, p3, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v4, v3

    iput v4, p3, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 898
    invoke-virtual {p0, p4}, Lmiuix/animation/listener/UpdateInfo;->skipToTargetValue(Lmiuix/animation/IAnimTarget;)V

    .line 899
    iget-object p4, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p5, p4}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 900
    iget p4, p2, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    add-int/2addr p4, v3

    iput p4, p2, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    .line 901
    iget p4, p3, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    add-int/2addr p4, v3

    iput p4, p3, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    goto :goto_2

    :cond_5
    const/4 p4, 0x4

    if-ne v4, p4, :cond_6

    .line 904
    iget p4, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr p4, v3

    iput p4, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 905
    iget p4, p3, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr p4, v3

    iput p4, p3, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 906
    iget-object p4, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p5, p4}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 907
    iget p4, p2, Lmiuix/animation/internal/AnimStats;->focusCount:I

    sub-int/2addr p4, v3

    iput p4, p2, Lmiuix/animation/internal/AnimStats;->focusCount:I

    .line 908
    iget p4, p3, Lmiuix/animation/internal/AnimStats;->focusCount:I

    sub-int/2addr p4, v3

    iput p4, p3, Lmiuix/animation/internal/AnimStats;->focusCount:I

    .line 911
    :cond_6
    :goto_2
    iget-byte p4, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    invoke-virtual {p0, p4}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 912
    invoke-static {p2, p3, p0, v0}, Lmiuix/animation/internal/TransitionInfo;->decreasePrepareCountForDelayAnim(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    if-eqz v1, :cond_7

    .line 917
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "----- changeRunningPropertyOp finish update.animInfo.op="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "opInfo="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "task-stats="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {p0, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private doOperationForTarget(Lmiuix/animation/internal/AnimOperationInfo;)V
    .locals 14

    .line 119
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v2, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 122
    iget-object v3, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v3, v1}, Lmiuix/animation/internal/AnimManager;->addToTransitionInfoList(Ljava/util/List;)V

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/TransitionInfo;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- doOperationForTarget -> update transInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v5, 0x0

    if-eqz p1, :cond_2

    .line 129
    iget-wide v6, v3, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    iget-wide v8, p1, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    move-object p1, v5

    .line 132
    :cond_2
    invoke-virtual {v3}, Lmiuix/animation/internal/TransitionInfo;->getInfoAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object v6

    .line 133
    invoke-virtual {v6}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 134
    iget-object v7, v3, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-direct {p0, v3, p1, v6, v7}, Lmiuix/animation/internal/AnimScheduler;->doOperationForUpdateInfoList(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Ljava/util/List;)V

    .line 136
    :cond_3
    invoke-virtual {v6}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-nez v7, :cond_9

    if-eqz p1, :cond_4

    .line 137
    iget-byte v7, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    if-ne v7, v9, :cond_4

    move v7, v9

    goto :goto_1

    :cond_4
    move v7, v10

    .line 138
    :goto_1
    iget v11, v6, Lmiuix/animation/internal/AnimStats;->focusCount:I

    if-lez v11, :cond_5

    iget v12, v6, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    if-ne v11, v12, :cond_5

    move v7, v10

    :cond_5
    if-eqz v0, :cond_6

    .line 142
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--- notifyTransitionEndOrCancel from doOperationForTarget msg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    if-ne v7, v10, :cond_8

    if-eqz v0, :cond_7

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "--- notifyTransitionUpdate before notifyTransitionEnd from doOperationForTarget"

    .line 146
    invoke-static {v12, v11}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_7
    iget-object v11, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v12, v3, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-virtual {v11, v3, v12}, Lmiuix/animation/internal/AnimManager;->notifyTransitionUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    .line 151
    :cond_8
    iget-object v11, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v11, v3, v8, v7}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    :cond_9
    if-eqz v0, :cond_0

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-- doOperationForTarget , id="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v3, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    const/4 v4, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "targetOpInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "info.startTime="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v3, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetOpInfo.time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    .line 158
    iget-wide v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :cond_a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statsFromInfo.isRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v6}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v9

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statsFromInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 154
    invoke-static {v7, v11}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private doOperationForUpdateInfoList(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/internal/TransitionInfo;",
            "Lmiuix/animation/internal/AnimOperationInfo;",
            "Lmiuix/animation/internal/AnimStats;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 169
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v1

    .line 170
    iget-byte v2, v0, Lmiuix/animation/internal/TransitionInfo;->state:B

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 171
    :goto_0
    iget-object v6, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/animation/internal/AnimTask;

    .line 172
    iget v8, v7, Lmiuix/animation/internal/AnimTask;->startPos:I

    invoke-virtual {v7}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v9

    add-int/2addr v9, v8

    :goto_2
    if-ge v8, v9, :cond_3

    move-object/from16 v10, p4

    .line 173
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lmiuix/animation/listener/UpdateInfo;

    if-eqz v12, :cond_2

    .line 175
    iget-object v11, v7, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    move-object/from16 v15, p3

    invoke-static {v12, v11, v15}, Lmiuix/animation/internal/AnimScheduler;->handleSetToPropertyOnUpdate(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;)Z

    move-result v11

    if-eqz v1, :cond_1

    new-array v13, v3, [Ljava/lang/Object;

    .line 177
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSetTo "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v5

    aput-object v12, v13, v4

    const-string v3, " |---- step0"

    invoke-static {v3, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    if-nez v11, :cond_2

    .line 182
    iget-object v14, v7, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget-object v3, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v11, v0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lmiuix/animation/internal/AnimScheduler;->changeRunningPropertyOp(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;)V

    if-eqz v1, :cond_2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " |---- step2 changeRunningPropertyOp finish taskInfo "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v3, v11}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    move-object/from16 v10, p4

    goto :goto_1

    :cond_4
    return-void
.end method

.method private endEngine()V
    .locals 8

    .line 619
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- endEngine Scheduler@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    :cond_0
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    if-eqz v0, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "-- endEngine after mRunningTarget.clear()"

    .line 625
    invoke-static {v3, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    :cond_1
    iget-boolean v2, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frames="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total_time_ms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduler@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "-- endEngine"

    .line 629
    invoke-static {v2, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    :cond_2
    iput-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    .line 636
    iput-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    const-wide/16 v2, 0x0

    .line 637
    iput-wide v2, p0, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    .line 638
    iput v1, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    .line 639
    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    invoke-virtual {p0}, Lmiuix/animation/internal/FolmeEngine;->end()V

    :cond_3
    return-void
.end method

.method private getMinAnimCountOfOtherStack()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lmiuix/animation/internal/AnimTask;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 1025
    :goto_0
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1026
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/AnimTask;

    .line 1027
    invoke-static {v3}, Lmiuix/animation/internal/AnimTask;->getAnimCountOfTaskStack(Lmiuix/animation/internal/AnimTask;)I

    move-result v4

    if-ge v4, v1, :cond_0

    move-object v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static handleSetToPropertyOnUpdate(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;)Z
    .locals 11

    .line 841
    invoke-static {p0}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 847
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    .line 848
    iget-object v2, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-static {v2}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    const-string v4, "op="

    const-string v5, "id="

    const/4 v6, 0x3

    if-eqz v0, :cond_1

    .line 850
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----- setToPropertyOnUpdate start updateInfo p="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v10, v10, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object p0, v8, v2

    .line 850
    invoke-static {v7, v8}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    :cond_1
    iget v7, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v7, v3

    iput v7, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 856
    iget v7, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v7, v3

    iput v7, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    const/4 v7, 0x4

    .line 857
    invoke-virtual {p0, v7}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 858
    iget-object v8, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v8, v8, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-static {p1, p2, p0, v8}, Lmiuix/animation/internal/TransitionInfo;->decreasePrepareCountForDelayAnim(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    if-eqz v0, :cond_2

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----- setToPropertyOnUpdate finish updateInfo p="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v4, v4, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task-stats.cancelCount "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info-stats.cancelCount "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v6

    aput-object p0, v8, v7

    .line 862
    invoke-static {v0, v8}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v3
.end method

.method private synthetic lambda$executeDoAnimOnFrame$2(JJ)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->doAnimationFrame(JJ)V

    return-void
.end method

.method private synthetic lambda$executeNotifyTransitionBegin$3(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method private synthetic lambda$executeTo$0(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->to(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method private synthetic lambda$executeTo$1(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->to(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method private prepareWaitTransAfterUpdated(Lmiuix/animation/IAnimTarget;)Z
    .locals 5

    .line 946
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- update->prepareWaitTransAfterUpdated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_0
    iget-object v2, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v2, v2, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    if-eqz v2, :cond_2

    .line 952
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lmiuix/animation/internal/AnimManager;->prepareAnim(Lmiuix/animation/internal/TransitionInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 953
    iget-object p1, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v4, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-direct {p0, p1, v2, v4}, Lmiuix/animation/internal/AnimScheduler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    if-eqz v0, :cond_1

    .line 955
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "--- update->prepareWaitTransAfterUpdated return true "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v3

    :cond_2
    if-eqz v0, :cond_3

    .line 961
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "--- update->prepareWaitTransAfterUpdated return false "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v1
.end method

.method private releaseIdleOneShotTargetAfterRun()V
    .locals 6

    .line 644
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "--- releaseIdleOneShotTargetAfterRun"

    .line 646
    invoke-static {v3, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    .line 649
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    invoke-virtual {v3}, Lmiuix/animation/internal/FolmeEngine;->getOneShotTargets()Ljava/util/Set;

    move-result-object v3

    .line 650
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 653
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/IAnimTarget;

    .line 654
    invoke-virtual {v4}, Lmiuix/animation/IAnimTarget;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_3

    .line 656
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 658
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_7

    .line 662
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/IAnimTarget;

    if-eqz v0, :cond_5

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " |--- clean idle oneshot target "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const-wide/16 v4, 0x1

    .line 666
    invoke-virtual {v3, v4, v5}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 667
    invoke-virtual {p0, v3}, Lmiuix/animation/internal/AnimScheduler;->removeFromOneShot(Lmiuix/animation/IAnimTarget;)V

    :cond_6
    const/4 v4, 0x1

    new-array v4, v4, [Lmiuix/animation/IAnimTarget;

    aput-object v3, v4, v1

    .line 669
    invoke-static {v4}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private setup()V
    .locals 5

    .line 383
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setup prepareTrans.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    .line 385
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " runningTarget.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    .line 386
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Scheduler@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 384
    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 395
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- setupAllInfoToTarget-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :cond_1
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    iget-object v4, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 405
    :goto_1
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 406
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    invoke-static {v0}, Lmiuix/animation/internal/TransitionInfo;->setupAllInfoToTarget(Lmiuix/animation/internal/TransitionInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 408
    :cond_3
    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private startEngine()V
    .locals 2

    .line 414
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- startEngine mEngineStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Scheduler@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :cond_0
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    .line 419
    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    invoke-virtual {p0}, Lmiuix/animation/internal/FolmeEngine;->start()V

    :cond_1
    return-void
.end method

.method private updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 684
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v2

    .line 685
    iget-object v3, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lmiuix/animation/internal/AnimManager;->addToTransitionInfoList(Ljava/util/List;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- update->updateTarget start transList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :cond_0
    iget-object v5, v0, Lmiuix/animation/internal/AnimScheduler;->mOpMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/animation/internal/AnimOperationInfo;

    .line 692
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    move v8, v7

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiuix/animation/internal/TransitionInfo;

    if-eqz v2, :cond_2

    .line 694
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--- update->updateTarget-> update transInfo "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    :cond_2
    iget-byte v11, v9, Lmiuix/animation/internal/TransitionInfo;->state:B

    if-nez v11, :cond_3

    add-int/lit8 v8, v8, 0x1

    if-eqz v2, :cond_1

    .line 699
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---- update->updateTarget-> this info isInfoOnPrepare runCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 706
    iget-wide v12, v9, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    iget-wide v14, v5, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    .line 710
    :cond_4
    invoke-virtual {v9}, Lmiuix/animation/internal/TransitionInfo;->getInfoAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object v12

    .line 711
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 712
    invoke-direct {v0, v9, v5, v12}, Lmiuix/animation/internal/AnimScheduler;->updateTransInfo(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 717
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "---- update->updateTarget after updateTransInfo "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    :cond_6
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v13

    const/4 v14, 0x2

    const/16 v16, 0x3

    if-nez v13, :cond_d

    .line 720
    iget v13, v12, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iget v11, v12, Lmiuix/animation/internal/AnimStats;->endCount:I

    if-le v13, v11, :cond_7

    const/4 v11, 0x4

    goto :goto_1

    :cond_7
    move/from16 v11, v16

    .line 721
    :goto_1
    iget v13, v12, Lmiuix/animation/internal/AnimStats;->focusCount:I

    if-lez v13, :cond_b

    iget v15, v12, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    if-ne v13, v15, :cond_b

    if-eqz v2, :cond_8

    .line 724
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- transitionComplete by focus end all info.id="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v11, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    move v11, v3

    .line 726
    :goto_2
    iget-object v13, v9, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_a

    .line 727
    iget-object v13, v9, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiuix/animation/listener/UpdateInfo;

    if-eqz v13, :cond_9

    .line 728
    iget-boolean v15, v13, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-nez v15, :cond_9

    .line 729
    invoke-virtual {v13, v1}, Lmiuix/animation/listener/UpdateInfo;->skipToTargetValue(Lmiuix/animation/IAnimTarget;)V

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_a
    move/from16 v11, v16

    :cond_b
    if-eqz v2, :cond_c

    .line 734
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "--- notifyTransitionEndOrCancel from updateTarget msg="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v15, v3, [Ljava/lang/Object;

    invoke-static {v13, v15}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v13, v3, [Ljava/lang/Object;

    const-string v15, "--- notifyTransitionUpdate before notifyTransitionEndOrCancel from updateTarget"

    .line 735
    invoke-static {v15, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    :cond_c
    iget-object v13, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v15, v9, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-virtual {v13, v9, v15}, Lmiuix/animation/internal/AnimManager;->notifyTransitionUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    .line 739
    iget-object v13, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v13, v9, v14, v11}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    goto :goto_3

    :cond_d
    add-int/lit8 v8, v8, 0x1

    :goto_3
    if-eqz v2, :cond_1

    .line 744
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- update->after handleUpdate , id="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x9

    new-array v13, v13, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "key="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "runCount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "animStartAfterCancel="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x2

    aput-object v10, v13, v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "targetOpInfo="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "info.startTime="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v9, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v13, v10

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "targetOpInfo.time="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_e

    .line 750
    iget-wide v14, v5, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_4

    :cond_e
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v9

    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "statsFromInfo.isRunning="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v9

    const/4 v9, 0x7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "statsFromInfo="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v9

    const/16 v9, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "target="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v9

    .line 744
    invoke-static {v11, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    if-eqz v5, :cond_11

    .line 757
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v7, v6, :cond_10

    invoke-virtual {v5}, Lmiuix/animation/internal/AnimOperationInfo;->isUsed()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 758
    :cond_10
    iget-object v0, v0, Lmiuix/animation/internal/AnimScheduler;->mOpMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_11
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_12

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- update->updateTarget finish runCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    if-lez v8, :cond_13

    move v3, v10

    :cond_13
    return v3
.end method

.method private updateTransInfo(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V
    .locals 7

    if-nez p3, :cond_0

    .line 773
    invoke-virtual {p1}, Lmiuix/animation/internal/TransitionInfo;->getInfoAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object p3

    .line 775
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- updateTransInfo start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " opInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    :cond_1
    iget-byte v2, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    .line 780
    :goto_0
    iget-object v5, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, v5}, Lmiuix/animation/internal/AnimScheduler;->doOperationForUpdateInfoList(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Ljava/util/List;)V

    .line 781
    invoke-virtual {p3}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_d

    iget p0, p3, Lmiuix/animation/internal/AnimStats;->updateCount:I

    if-lez p0, :cond_d

    if-eqz v0, :cond_3

    .line 783
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "---- updateTransInfo finish "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v2, :cond_b

    .line 785
    iget-boolean p0, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    if-nez p0, :cond_4

    iget-boolean p0, p1, Lmiuix/animation/internal/TransitionInfo;->hasOnStart:Z

    if-nez p0, :cond_4

    goto/16 :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 795
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "---- notifyTransitionUpdate from updateTransInfo:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    :cond_5
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    .line 798
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    .line 799
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p2}, Lmiuix/animation/IAnimTarget;->shouldCheckValue()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 800
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 801
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 803
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/animation/listener/UpdateInfo;

    .line 805
    iget-object v2, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    if-le v2, v4, :cond_6

    iget-object v2, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    const/4 v5, 0x6

    if-ge v2, v5, :cond_6

    iget-object v2, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v5, v2, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 807
    invoke-static {v5, v6}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 808
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 811
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    if-eqz v0, :cond_9

    .line 813
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---- notifyTransitionUpdate withCheckValue info.id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateList.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v4

    .line 813
    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 820
    :cond_8
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 822
    :cond_9
    :goto_2
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p2, p2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p2, p1, p0}, Lmiuix/animation/internal/AnimManager;->notifyTransitionUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_e

    .line 825
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "---- notifyTransitionUpdate fail updateList is empty "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    :goto_3
    if-eqz v0, :cond_c

    .line 790
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "---- notifyTransitionBegin from updateTransInfo: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    :cond_c
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v4}, Lmiuix/animation/internal/AnimManager;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V

    goto :goto_4

    .line 830
    :cond_d
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 831
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    :goto_4
    return-void
.end method


# virtual methods
.method public addToOneShot(Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->mOneShotTargets:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method protected final doAnimationFrame(JJ)V
    .locals 7

    .line 434
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    .line 435
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    .line 436
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "++ doAnimationFrame: deltaTNanos=%d Scheduler@%s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_0
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->setup()V

    if-eqz v0, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    .line 440
    iget-object v5, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v5, "++ doAnimationFrame: |-> after setup: mRunningTarget.size=%s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_1
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 443
    invoke-static {}, Lmiuix/animation/internal/AndroidEngine;->getInst()Lmiuix/animation/internal/AndroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/internal/FolmeEngine;->getAverageDeltaNanos()J

    move-result-wide v5

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    .line 445
    iget-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    .line 447
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    iget-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "++ doAnimationFrame: |--> hasRunningTarget mStart=%s mHasTaskStackRunning=%s "

    .line 446
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 445
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :cond_2
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    if-nez v0, :cond_3

    .line 450
    iput-boolean v3, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    const-wide/16 v0, 0x0

    .line 451
    iput-wide v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    .line 452
    iput v4, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 454
    invoke-virtual/range {v0 .. v6}, Lmiuix/animation/internal/AnimScheduler;->runAnimTaskOnFrame(JJJ)V

    .line 456
    :cond_4
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->releaseIdleOneShotTargetAfterRun()V

    return-void
.end method

.method final execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 201
    :cond_0
    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    .line 202
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 204
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute warning!! this scheduler has no handler, trace: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    .line 206
    invoke-static {v0}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miuix_anim"

    .line 204
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method executeDoAnimOnFrame(JJ)V
    .locals 8

    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->doAnimationFrame(JJ)V

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 276
    new-instance v7, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda1;-><init>(Lmiuix/animation/internal/AnimScheduler;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 278
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeOnFrame warning!! this scheduler has no handler, trace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 280
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix_anim"

    .line 278
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->doAnimationFrame(JJ)V

    :goto_0
    return-void
.end method

.method executeNotifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 2

    .line 286
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "----- TaskStackRunner before update : notifyTransitionBegin "

    .line 287
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V

    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 295
    new-instance v1, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda2;-><init>(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 297
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeNotifyTransitionBegin warning!! this scheduler has no handler, trace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 299
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix_anim"

    .line 297
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V

    :goto_0
    return-void
.end method

.method executePendingSetTo(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    new-instance v0, Lmiuix/animation/internal/AnimScheduler$SetToInfo;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimScheduler$SetToInfo;-><init>()V

    .line 214
    iput-object p1, v0, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 215
    iget-boolean p1, p2, Lmiuix/animation/controller/AnimState;->needDuplicate:Z

    if-eqz p1, :cond_0

    .line 216
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object p1, v0, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 217
    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    goto :goto_0

    .line 219
    :cond_0
    iput-object p2, v0, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 221
    :goto_0
    iget-object p1, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeSetTo warning!! this scheduler has no handler, so direct run executePendingSetTo(info) trace: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 225
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "miuix_anim"

    .line 223
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result p2

    if-nez p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    new-instance p2, Lmiuix/animation/internal/AnimScheduler$1;

    invoke-direct {p2, p0, v0}, Lmiuix/animation/internal/AnimScheduler$1;-><init>(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/AnimScheduler$SetToInfo;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 228
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimScheduler;->pendingSetTo(Lmiuix/animation/internal/AnimScheduler$SetToInfo;)V

    :goto_2
    return-void
.end method

.method executeTo(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 6

    .line 240
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "++ executeTo"

    .line 241
    invoke-static {v2, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :cond_0
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-wide v2, v0, Lmiuix/animation/base/AnimConfig;->delay:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 244
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 245
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- to with delay Scheduler@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    new-instance v1, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda4;-><init>(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V

    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-wide p0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    .line 255
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->to(Lmiuix/animation/internal/TransitionInfo;)V

    return-void

    .line 259
    :cond_4
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 260
    new-instance v1, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda3;-><init>(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 262
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeTo warning!! this scheduler has no handler, so direct run to(info) trace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 264
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix_anim"

    .line 262
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->to(Lmiuix/animation/internal/TransitionInfo;)V

    :goto_0
    return-void
.end method

.method executeUpdate()V
    .locals 2

    .line 305
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "-- executeUpdate"

    .line 306
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimScheduler;->update()V

    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 314
    new-instance v1, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda0;-><init>(Lmiuix/animation/internal/AnimScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 316
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeUpdate warning!! this scheduler has no handler, trace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 318
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix_anim"

    .line 316
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimScheduler;->update()V

    :goto_0
    return-void
.end method

.method public getOneShotTargets()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->mOneShotTargets:Ljava/util/Set;

    return-object p0
.end method

.method getTotalRunningTransitionCount()I
    .locals 2

    .line 1038
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1039
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 1040
    iget-object v1, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v1}, Lmiuix/animation/internal/AnimManager;->getRunningTransitionCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected final isInMainThread(J)Z
    .locals 2

    .line 193
    iget-wide v0, p0, Lmiuix/animation/internal/AnimScheduler;->runnerThreadId:J

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 2

    .line 548
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/internal/AnimManager;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V

    return-void
.end method

.method protected final pendingSetTo(Lmiuix/animation/internal/AnimScheduler$SetToInfo;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    .line 327
    iget-object v1, p1, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- setTo Scheduler@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_0
    iget-object p0, p1, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 332
    iget-object p1, p1, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v4}, Lmiuix/animation/internal/AnimManager;->setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)Z

    .line 333
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 334
    invoke-virtual {p0, v1, v4}, Lmiuix/animation/controller/AnimState;->getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v4

    .line 335
    iget-object v5, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v5, v5, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/animation/listener/UpdateInfo;

    if-nez v5, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0, v1, v4}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v6

    if-eqz v0, :cond_2

    .line 341
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- setTo setToValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " toState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :cond_2
    iget-object v8, v5, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v6, v8, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 344
    iput-wide v6, v8, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 346
    iget-boolean v6, v5, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    if-eqz v6, :cond_3

    instance-of v7, v4, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v7, :cond_3

    .line 347
    check-cast v4, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {v5}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lmiuix/animation/IAnimTarget;->doSetIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- setTo Warning!! the property is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    :cond_4
    invoke-virtual {v5}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Lmiuix/animation/IAnimTarget;->doSetValue(Lmiuix/animation/property/FloatProperty;F)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 356
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-- setTo done "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public removeFromOneShot(Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->mOneShotTargets:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected runAnimTaskOnFrame(JJJ)V
    .locals 21

    move-object/from16 v9, p0

    move-wide/from16 v10, p3

    move-wide/from16 v0, p5

    .line 463
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 464
    iget-wide v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    add-long/2addr v3, v10

    iput-wide v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    const/4 v12, 0x1

    if-lez v3, :cond_0

    .line 466
    iget v3, v9, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    add-int/2addr v3, v12

    iput v3, v9, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    .line 469
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v13

    .line 470
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v3

    const/4 v14, 0x0

    if-eqz v3, :cond_1

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++ runAnimTaskOnFrame start frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nowNanos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " deltaTNanos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " averageDelta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Scheduler@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    .line 471
    invoke-static {v3, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :cond_1
    iput v14, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    .line 491
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 492
    iget-object v3, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v4, v9, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    invoke-virtual {v3, v4}, Lmiuix/animation/internal/AnimManager;->addToTransitionInfoList(Ljava/util/List;)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/TransitionInfo;

    .line 495
    iget v4, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    invoke-virtual {v3}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    .line 496
    invoke-static {v3, v0, v1}, Lmiuix/animation/internal/TransitionInfo;->tickOnFrame(Lmiuix/animation/internal/TransitionInfo;J)V

    .line 497
    iget-object v4, v9, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskForRun:Ljava/util/List;

    iget-object v3, v3, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 499
    :cond_3
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v15

    .line 500
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 501
    iget v2, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    add-int/lit16 v2, v2, -0xfa0

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackSplitInfo:[I

    invoke-static {v2, v3}, Lmiuix/animation/internal/ThreadPoolUtil;->getSplitCount(I[I)V

    .line 502
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackSplitInfo:[I

    aget v3, v2, v14

    .line 503
    aget v2, v2, v12

    .line 504
    iget-object v4, v9, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskForRun:Ljava/util/List;

    invoke-direct {v9, v4, v2, v3}, Lmiuix/animation/internal/AnimScheduler;->assignAnimTaskToStack(Ljava/util/List;II)V

    .line 505
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskForRun:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 506
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v12

    iput-boolean v2, v9, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    .line 507
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->runningStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    if-eqz v13, :cond_4

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++ runAnimTaskOnFrame mTaskStackList.size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/16 v16, 0x1

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double v17, v0, v2

    .line 518
    iget-boolean v0, v9, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    if-eqz v0, :cond_6

    .line 519
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lmiuix/animation/internal/AnimTask;

    .line 520
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_5

    move v7, v12

    .line 521
    :goto_2
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 523
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/AnimTask;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p3

    move/from16 v6, v16

    move/from16 v20, v7

    move-wide/from16 v7, v17

    invoke-static/range {v0 .. v8}, Lmiuix/animation/internal/AnimTask;->asyncStart(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimScheduler;JJID)V

    add-int/lit8 v7, v20, 0x1

    goto :goto_2

    .line 527
    :cond_5
    iget-wide v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide/from16 v4, p3

    move-wide/from16 v7, v17

    invoke-static/range {v0 .. v8}, Lmiuix/animation/internal/AnimTask;->start(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimScheduler;JJID)V

    .line 528
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6
    if-eqz v13, :cond_7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 532
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v14

    iget-boolean v1, v9, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, "--- runAnimTaskOnFrame finish isAllTransFinish:%s mHasTaskStackRunning:%s"

    .line 531
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    :cond_7
    iget-boolean v0, v9, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    if-eqz v0, :cond_8

    .line 535
    iput-boolean v14, v9, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    .line 536
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    invoke-virtual {v0}, Lmiuix/animation/internal/FolmeEngine;->waitForAllTaskFinish()V

    return-void

    :cond_8
    if-eqz v15, :cond_a

    if-eqz v13, :cond_9

    new-array v0, v14, [Ljava/lang/Object;

    const-string v1, "--- runAnimTaskOnFrame->endEngine: no transList then endEngine"

    .line 541
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_9
    invoke-direct/range {p0 .. p0}, Lmiuix/animation/internal/AnimScheduler;->endEngine()V

    :cond_a
    return-void
.end method

.method public setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V
    .locals 2

    .line 99
    iget-object v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 101
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    const-string v1, "miuix_anim"

    if-nez v0, :cond_1

    .line 103
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "++ setOperation: mHasTaskStackRunning is false, execute setOperation immediately"

    .line 104
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->doOperationForTarget(Lmiuix/animation/internal/AnimOperationInfo;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p0, p0, Lmiuix/animation/internal/AnimScheduler;->mOpMap:Ljava/util/Map;

    iget-object v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "++ setOperation: mHasTaskStackRunning is true, pending setOperation"

    .line 111
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method protected final to(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 4

    .line 363
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- to Scheduler@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 369
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-direct {p0, v2, p1, v3}, Lmiuix/animation/internal/AnimScheduler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    .line 370
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "-- to->startEngine"

    .line 372
    invoke-static {v0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :cond_1
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->startEngine()V

    :cond_2
    return-void
.end method

.method protected final update()V
    .locals 8

    .line 556
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- update from runningStackCount == 0 frameCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Scheduler@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    :cond_0
    iput v1, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    .line 562
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 563
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/IAnimTarget;

    .line 564
    iget-object v6, p0, Lmiuix/animation/internal/AnimScheduler;->mTempTargetRunningInfo:Ljava/util/List;

    invoke-direct {p0, v4, v6}, Lmiuix/animation/internal/AnimScheduler;->updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 565
    invoke-direct {p0, v4}, Lmiuix/animation/internal/AnimScheduler;->prepareWaitTransAfterUpdated(Lmiuix/animation/IAnimTarget;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 568
    :cond_2
    iget-object v5, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v5

    .line 570
    :goto_2
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 571
    iget v5, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    iget-object v4, v4, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v4}, Lmiuix/animation/internal/AnimManager;->getTotalAnimCount()I

    move-result v4

    add-int/2addr v5, v4

    iput v5, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    goto :goto_0

    .line 577
    :cond_4
    iput-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    .line 578
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 579
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    iget-object v4, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 580
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 582
    :cond_5
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRunningAnimCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrepareTransMap.size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    .line 585
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const/4 v4, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRunningTarget.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    .line 586
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v4, "-- update after traversal all target"

    .line 583
    invoke-static {v4, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    :cond_6
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    .line 599
    iget-object v4, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-nez v2, :cond_7

    if-eqz v4, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- update finish->startEngine hasPrepareTrans:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasRunningTarget:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    :cond_8
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->startEngine()V

    move v3, v5

    :cond_9
    if-nez v3, :cond_b

    if-eqz v0, :cond_a

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "-- update->endEngine when isRunning is false"

    .line 609
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :cond_a
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->endEngine()V

    :cond_b
    return-void
.end method
