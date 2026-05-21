.class public final Lcom/miui/home/recents/event/TaskLaunchedEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TaskClickEvent.kt"


# instance fields
.field private final appearedTaskTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;->appearedTaskTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;->appearedTaskTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    iget-object p1, p1, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;->appearedTaskTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAppearedTaskTargets()[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;->appearedTaskTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;->appearedTaskTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskLaunchedEventInfo(appearedTaskTargets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;->appearedTaskTargets:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
