.class public final Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private finishCallBack:Ljava/lang/Runnable;

.field private final reason:Ljava/lang/String;

.field private final stopIfHasMerge:Z

.field private final toHome:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->reason:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->stopIfHasMerge:Z

    iput-object p3, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->toHome:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->finishCallBack:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 106
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->stopIfHasMerge:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->stopIfHasMerge:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->toHome:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->toHome:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->finishCallBack:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->finishCallBack:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFinishCallBack()Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->finishCallBack:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final getStopIfHasMerge()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->stopIfHasMerge:Z

    return p0
.end method

.method public final getToHome()Ljava/lang/Boolean;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->toHome:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->stopIfHasMerge:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->toHome:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->finishCallBack:Ljava/lang/Runnable;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceStopTransitionEventInfo(reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stopIfHasMerge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->stopIfHasMerge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", toHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->toHome:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", finishCallBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->finishCallBack:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
