.class public Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
.super Ljava/lang/Object;
.source "RemoteAnimationTargetSet.java"


# instance fields
.field public final apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field public dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field public elements:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

.field private mAppTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mDependentTransactionAppliers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;",
            ">;"
        }
    .end annotation
.end field

.field public final targetMode:I

.field public final unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method public static synthetic $r8$lambda$77ZA2gxkM5PnunYT2WDPRE5wckw(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->lambda$new$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VW_L-WE1aalrD8vl3s8kuJSob1s(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->lambda$new$0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$azuqerSk3KAmC8Wl1UBonIfqQU0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->lambda$new$4(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cQKfXFyshKzSjRDqewiWMBNZlDo(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->lambda$new$1(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kEEtJYawnSwGuIQOaQT0Q1Bdlno(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->lambda$new$3(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lnVaDBns_oJARc4YfwtvK9FTmho(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->lambda$new$5(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 4

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    .line 250
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 252
    iget-object v0, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v2, v0

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 253
    iget-object v2, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v3, v2

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object v2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 254
    array-length v3, v0

    sub-int/2addr v3, v1

    aput-object p2, v0, v3

    .line 255
    array-length v0, v2

    sub-int/2addr v0, v1

    aput-object p2, v2, v0

    goto :goto_0

    .line 257
    :cond_0
    iget-object p2, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 258
    iget-object p2, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 260
    :goto_0
    iget-object p2, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 261
    iget-object p2, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->elements:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->elements:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 262
    iget p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    iput p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    return-void
.end method

.method public constructor <init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->filterTargetMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda5;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object v1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 60
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda4;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda2;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object v1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 61
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda6;->INSTANCE:Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda6;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda3;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->elements:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    goto :goto_0

    .line 63
    :cond_1
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 67
    iput p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->modifyMultiWindowOffset()V

    return-void
.end method

.method public constructor <init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;II)V
    .locals 11

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->filterTargetMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt p1, v4, :cond_4

    .line 111
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 115
    iget-object v6, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget-object v8, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    if-gt v7, v9, :cond_2

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v8, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    :cond_2
    :goto_0
    if-ne p3, v4, :cond_3

    move-object p1, v0

    .line 123
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p1, v5

    :goto_1
    if-eqz p1, :cond_5

    new-array v5, v1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aput-object p1, v5, v3

    .line 126
    :cond_5
    iput-object v5, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    .line 128
    iput p2, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 59
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v0, 0x7f2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$1(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 59
    new-array p0, p0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method private static synthetic lambda$new$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 60
    iget p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v0, 0x7f2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$3(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 60
    new-array p0, p0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method private static synthetic lambda$new$4(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isElement:Z

    return p0
.end method

.method private static synthetic lambda$new$5(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 61
    new-array p0, p0, [Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method


# virtual methods
.method public filterTargetMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 134
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v3, p2, :cond_0

    iget-boolean v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isElement:Z

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 4

    .line 149
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 150
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mAppTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public getDockDivider()[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->dockDividers:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method public getElementTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 2

    .line 199
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->elements:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 200
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 4

    .line 188
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 189
    aget-object v2, p0, v1

    .line 190
    iget v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return-object v0

    .line 193
    :cond_0
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 5

    .line 171
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 172
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasMultiTask()Z
    .locals 6

    .line 158
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 162
    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    .line 163
    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_2

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public isMultiWindow()Z
    .locals 6

    .line 72
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    array-length v1, p0

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p0, v3

    .line 77
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    if-ne v4, p0, :cond_3

    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public isTranslucent()Z
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 216
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public modifyMultiWindowOffset()V
    .locals 7

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 88
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_0

    neg-int v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyMultiWindowOffset  offsetTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteAnimationTargetSet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p0, v1

    .line 94
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    iget-object v5, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 96
    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public printAllUnfilteredRemoteAnimationTarget()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteAnimationTargetSet"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 235
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mDependentTransactionAppliers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    if-nez v0, :cond_1

    .line 241
    iget-object p0, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 242
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    new-instance v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->addAfterApplyCallback(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setAppTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->mAppTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method
