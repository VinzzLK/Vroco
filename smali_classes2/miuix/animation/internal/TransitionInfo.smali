.class Lmiuix/animation/internal/TransitionInfo;
.super Lmiuix/animation/utils/LinkNode;
.source "TransitionInfo.java"

# interfaces
.implements Lmiuix/animation/internal/DesignReview;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/utils/LinkNode<",
        "Lmiuix/animation/internal/TransitionInfo;",
        ">;",
        "Lmiuix/animation/internal/DesignReview;"
    }
.end annotation


# static fields
.field public static final CANCEL:B = 0x3t

.field public static final END:B = 0x4t

.field public static final INIT:B = -0x1t

.field public static final INVALID:B = -0x2t

.field public static final PREPARE:B = 0x0t

.field public static final SETUP:B = 0x1t

.field public static final START:B = 0x2t

.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public animTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field public volatile config:Lmiuix/animation/base/AnimConfig;

.field public currentTime:J

.field public frameCount:I

.field public volatile from:Lmiuix/animation/controller/AnimState;

.field public hasOnStart:Z

.field public hasSendNotifyStart:Z

.field public final id:I

.field public volatile key:Ljava/lang/Object;

.field public listenerSetForNotify:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoAnimStats:Lmiuix/animation/internal/AnimStats;

.field public startTime:J

.field public state:B

.field public final tag:Ljava/lang/Object;

.field public final target:Lmiuix/animation/IAnimTarget;

.field public volatile to:Lmiuix/animation/controller/AnimState;

.field public updateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public updateListForNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public updateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Lmiuix/animation/utils/LinkNode;-><init>()V

    .line 43
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 50
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    const/4 v1, -0x1

    .line 56
    iput-byte v1, p0, Lmiuix/animation/internal/TransitionInfo;->state:B

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->updateMap:Ljava/util/Map;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->listenerSetForNotify:Ljava/util/Set;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 70
    new-instance v1, Lmiuix/animation/internal/AnimStats;

    invoke-direct {v1}, Lmiuix/animation/internal/AnimStats;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->mInfoAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 102
    iput-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 105
    invoke-direct {p0, p2}, Lmiuix/animation/internal/TransitionInfo;->getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 106
    invoke-direct {p0, p3}, Lmiuix/animation/internal/TransitionInfo;->getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 107
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 108
    iget-boolean v1, p3, Lmiuix/animation/controller/AnimState;->needDuplicate:Z

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    :goto_0
    const/4 p2, 0x0

    .line 113
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 114
    invoke-direct {p0}, Lmiuix/animation/internal/TransitionInfo;->initValueForColorProperty()V

    .line 115
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p3}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    if-eqz p4, :cond_1

    .line 117
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p4, p2}, Lmiuix/animation/base/AnimConfigLink;->addTo(Lmiuix/animation/base/AnimConfig;)V

    .line 119
    :cond_1
    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, p2, p0}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    return-void
.end method

.method static decreasePrepareCountForDelayAnim(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V
    .locals 3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 74
    iget-object p2, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide p2, p2, Lmiuix/animation/internal/AnimInfo;->delay:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_0

    iget p2, p0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    if-lez p2, :cond_0

    sub-int/2addr p2, v0

    .line 77
    iput p2, p0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    .line 78
    iget p0, p1, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    sub-int/2addr p0, v0

    iput p0, p1, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    :cond_0
    return-void
.end method

.method private getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;
    .locals 0

    if-eqz p1, :cond_0

    .line 123
    iget-boolean p0, p1, Lmiuix/animation/controller/AnimState;->needDuplicate:Z

    if-eqz p0, :cond_0

    .line 124
    new-instance p0, Lmiuix/animation/controller/AnimState;

    invoke-direct {p0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 125
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method private initValueForColorProperty()V
    .locals 5

    .line 152
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v2, v1}, Lmiuix/animation/controller/AnimState;->getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    .line 157
    instance-of v2, v1, Lmiuix/animation/property/ColorProperty;

    if-nez v2, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v2, v1, v3, v4}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v2

    .line 161
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 164
    :cond_3
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v2, v3, v1}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v2

    .line 165
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    check-cast v1, Lmiuix/animation/property/ColorProperty;

    double-to-int v2, v2

    invoke-virtual {v4, v1, v2}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static processInitValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/listener/UpdateInfo;ZZ)V
    .locals 4

    .line 338
    invoke-virtual {p1, p0, p2}, Lmiuix/animation/controller/AnimState;->getInit(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " |---- processInitValue initValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " property.name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isCurValueValid="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, p1, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    :cond_0
    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, " value="

    const-string v2, " start-v=init-v="

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 345
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " |---- processInitValue target.isIdle()="

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isIdle()Z

    move-result v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " target.isAnimRunning()="

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, p1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, v3}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " target.isValidFlag()="

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    move-result v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v3, p1, [Ljava/lang/Object;

    invoke-static {p4, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-array p4, p1, [Lmiuix/animation/property/FloatProperty;

    .line 347
    invoke-virtual {p0, p4}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 349
    iget-object p0, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->value:D

    if-eqz p5, :cond_3

    .line 351
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " |---- processInitValue force set startValue / value with init when this property is not running, op="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte p4, p4, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide p2, p2, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object p0, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v0, p0, Lmiuix/animation/internal/AnimInfo;->startValue:D

    if-eqz p5, :cond_3

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " |---- processInitValue set startValue with init op="

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte p4, p4, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide p2, p2, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static setupAllInfoToTarget(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 89
    :cond_0
    iget-object v1, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v1, p0}, Lmiuix/animation/internal/AnimManager;->setupTransition(Lmiuix/animation/internal/TransitionInfo;)V

    .line 90
    invoke-virtual {p0}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    move-result-object p0

    check-cast p0, Lmiuix/animation/internal/TransitionInfo;

    if-nez p0, :cond_0

    return-void
.end method

.method static tickOnFrame(Lmiuix/animation/internal/TransitionInfo;J)V
    .locals 2

    .line 95
    iget v0, p0, Lmiuix/animation/internal/TransitionInfo;->frameCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-boolean v0, v0, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    iget-wide v0, p0, Lmiuix/animation/internal/TransitionInfo;->currentTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiuix/animation/internal/TransitionInfo;->currentTime:J

    .line 98
    :cond_1
    iget p1, p0, Lmiuix/animation/internal/TransitionInfo;->frameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/animation/internal/TransitionInfo;->frameCount:I

    return-void
.end method


# virtual methods
.method public containsProperty(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 140
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsPropertyInUpdateList(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 144
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->updateMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAnimCount()I
    .locals 2

    .line 133
    iget-byte v0, p0, Lmiuix/animation/internal/TransitionInfo;->state:B

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 134
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->updateMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    .line 136
    :cond_0
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getDesignInfo()Ljava/lang/String;
    .locals 5

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    const-string v2, ", "

    const-string v3, "\": "

    const-string v4, "\""

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fromState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->getDesignInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "toState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->getDesignInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/base/AnimConfig;->getDesignInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 396
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfoAnimStats()Lmiuix/animation/internal/AnimStats;
    .locals 3

    .line 327
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->mInfoAnimStats:Lmiuix/animation/internal/AnimStats;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimStats;->clear()V

    .line 328
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 329
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->mInfoAnimStats:Lmiuix/animation/internal/AnimStats;

    iget-object v1, v1, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    invoke-static {v2, v1}, Lmiuix/animation/internal/AnimStats;->add(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->mInfoAnimStats:Lmiuix/animation/internal/AnimStats;

    return-object p0
.end method

.method public hasUpdateInfo()Z
    .locals 0

    .line 148
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 176
    iput-wide v2, v0, Lmiuix/animation/internal/TransitionInfo;->currentTime:J

    const/4 v2, 0x0

    .line 177
    iput v2, v0, Lmiuix/animation/internal/TransitionInfo;->frameCount:I

    .line 178
    iget-object v3, v0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 179
    iget-object v10, v0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 180
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v11

    const-string v12, " "

    if-eqz v11, :cond_0

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----- initUpdateList, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 183
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", start-t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", f = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", t = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 182
    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v4, v0, Lmiuix/animation/internal/TransitionInfo;->updateMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 192
    invoke-virtual {v10}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 193
    iget-object v5, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v10, v5, v4}, Lmiuix/animation/controller/AnimState;->getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v6

    .line 194
    invoke-interface {v1, v6}, Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v9

    .line 195
    invoke-virtual {v10, v6}, Lmiuix/animation/controller/AnimState;->getConfigFlags(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide/16 v7, 0x8

    invoke-static {v4, v5, v7, v8}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v8

    .line 196
    sget-object v4, Lmiuix/animation/internal/PredictTask;->sCreator:Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;

    const/16 v16, 0x4

    const-string v7, "needInit="

    const/16 v17, 0x2

    const-string v15, "id="

    const-string v2, "update name="

    move-object/from16 v18, v14

    if-eq v4, v1, :cond_4

    iget-object v4, v9, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v0, Lmiuix/animation/internal/TransitionInfo;->id:I

    if-eq v4, v5, :cond_4

    :cond_1
    if-eqz v8, :cond_2

    .line 198
    iget-object v4, v9, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 199
    iget-object v4, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v4, v4, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 200
    iget-object v14, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-static {v14, v6, v4, v5}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v4

    .line 202
    invoke-static {v4, v5}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v14

    .line 204
    iget-object v4, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    const/4 v1, 0x3

    move-object v5, v10

    move-object v1, v7

    move-object v7, v9

    move-object/from16 v19, v3

    move v3, v8

    move v8, v14

    move-object v14, v9

    move v9, v11

    invoke-static/range {v4 .. v9}, Lmiuix/animation/internal/TransitionInfo;->processInitValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/listener/UpdateInfo;ZZ)V

    goto :goto_1

    :cond_2
    move-object/from16 v19, v3

    move-object v1, v7

    move v3, v8

    move-object v14, v9

    :goto_1
    if-eqz v11, :cond_3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 208
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preparedTransitionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const-string v1, " continue"

    aput-object v1, v4, v16

    const-string v1, " |---- init stop "

    .line 207
    invoke-static {v1, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v1, p1

    move-object/from16 v14, v18

    move-object/from16 v3, v19

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v19, v3

    move-object v1, v7

    move v3, v8

    move-object v14, v9

    .line 217
    invoke-static {v14}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    move-result v9

    if-eqz v11, :cond_5

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v14, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 220
    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasSetTo="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v5, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v16

    const-string v1, " |---- start get"

    .line 219
    invoke-static {v1, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_5
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->updateMap:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    const/4 v4, 0x5

    if-ne v1, v4, :cond_6

    .line 230
    iget-object v1, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    invoke-virtual {v1}, Lmiuix/animation/internal/AnimInfo;->reuse()V

    if-eqz v11, :cond_6

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 233
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v17

    const-string v2, " |---- reset"

    .line 232
    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :cond_6
    iget-object v1, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-object v2, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v10, v2, v6}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v4

    iput-wide v4, v1, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    if-eqz v19, :cond_7

    .line 240
    iget-object v1, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-object v2, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    move-object/from16 v15, v19

    invoke-virtual {v15, v2, v6}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v2

    iput-wide v2, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    move-object/from16 v16, v10

    move-object v3, v12

    move-object/from16 v17, v13

    move v10, v9

    goto :goto_3

    :cond_7
    move-object/from16 v15, v19

    .line 242
    iget-object v1, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 243
    iget-object v4, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-static {v4, v6, v1, v2}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v7

    .line 245
    invoke-static {v7, v8}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 247
    iget-object v4, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v7, v4, Lmiuix/animation/internal/AnimInfo;->startValue:D

    :cond_8
    if-eqz v3, :cond_9

    .line 251
    iget-object v4, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    move-object v5, v10

    move-object v3, v12

    move-object/from16 v17, v13

    move-wide v12, v7

    move-object v7, v14

    move/from16 v8, v16

    move-object/from16 v16, v10

    move v10, v9

    move v9, v11

    invoke-static/range {v4 .. v9}, Lmiuix/animation/internal/TransitionInfo;->processInitValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Lmiuix/animation/listener/UpdateInfo;ZZ)V

    goto :goto_2

    :cond_9
    move-object/from16 v16, v10

    move-object v3, v12

    move-object/from16 v17, v13

    move-wide v12, v7

    move v10, v9

    :goto_2
    if-eqz v11, :cond_a

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " |---- f is null op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v5, v5, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " start-v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_a
    :goto_3
    iget-object v1, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    .line 259
    iget-object v1, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v4, v1, Lmiuix/animation/internal/AnimInfo;->startValue:D

    iput-wide v4, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    if-eqz v11, :cond_b

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " |---- after reset value <= start-v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v4, v2, Lmiuix/animation/internal/AnimInfo;->startValue:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x0

    .line 265
    iput-object v1, v14, Lmiuix/animation/listener/UpdateInfo;->preparedTransitionId:Ljava/lang/Integer;

    if-eqz v11, :cond_c

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " |---- finish get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", op="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v1, p1

    move-object v12, v3

    move-object v3, v15

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    goto/16 :goto_0

    :cond_d
    move-object/from16 v17, v13

    .line 272
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    move-object/from16 v1, v17

    const/4 v2, 0x1

    .line 275
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/internal/TransitionInfo;->refreshTasks(Ljava/util/List;Z)V

    return v2
.end method

.method public refreshTasks(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 281
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    .line 282
    iput-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 285
    div-int/lit8 v1, p1, 0x64

    const/4 v2, 0x1

    .line 286
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, p1

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 287
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 291
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 293
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 294
    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    new-instance v5, Lmiuix/animation/internal/AnimTask;

    invoke-direct {v5}, Lmiuix/animation/internal/AnimTask;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 300
    :cond_1
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/animation/internal/AnimTask;

    .line 301
    iput-object p0, v5, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    add-int v6, v4, v2

    if-le v6, p1, :cond_2

    sub-int v6, p1, v4

    goto :goto_2

    :cond_2
    move v6, v2

    .line 305
    :goto_2
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v7}, Lmiuix/animation/base/AnimConfig;->getFocusPropertyCount()I

    move-result v7

    move v8, v3

    if-lez v7, :cond_4

    move v7, v4

    :goto_3
    add-int v9, v4, v6

    if-ge v7, v9, :cond_4

    .line 307
    iget-object v9, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v10, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiuix/animation/listener/UpdateInfo;

    iget-object v10, v10, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v9, v10}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 313
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " |---- refreshTasks startPos="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " amount="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " config.focusCount="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 314
    invoke-virtual {v9}, Lmiuix/animation/base/AnimConfig;->getFocusPropertyCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " focusCount="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v3, [Ljava/lang/Object;

    .line 313
    invoke-static {v7, v9}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_5
    invoke-virtual {v5, v4, v6, v8}, Lmiuix/animation/internal/AnimTask;->setup(III)V

    if-eqz p2, :cond_6

    .line 318
    iget-object v5, v5, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iput v6, v5, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    goto :goto_4

    .line 320
    :cond_6
    invoke-virtual {v5}, Lmiuix/animation/internal/AnimTask;->updateAnimStats()V

    :goto_4
    add-int/2addr v4, v6

    goto :goto_1

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lmiuix/animation/internal/TransitionInfo;->state:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", propSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 372
    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-wide v1, v1, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", start-t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    instance-of v2, v1, Lmiuix/animation/ValueTarget;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
