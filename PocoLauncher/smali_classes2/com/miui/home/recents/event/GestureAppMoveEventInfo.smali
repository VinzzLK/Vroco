.class public final Lcom/miui/home/recents/event/GestureAppMoveEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "GestureEvent.kt"


# instance fields
.field private final alpha:F

.field private final currentDisplayRotation:I

.field private final gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

.field private final homeRotation:I

.field private final per:F

.field private final showTask:Z

.field private final taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;


# direct methods
.method public constructor <init>(FFZIILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/GestureHomeCalculator;)V
    .locals 1

    const-string v0, "taskViewParamsInfo"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureHomeCalculator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 32
    iput p1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->per:F

    .line 33
    iput p2, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->alpha:F

    .line 34
    iput-boolean p3, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->showTask:Z

    .line 35
    iput p4, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->currentDisplayRotation:I

    .line 36
    iput p5, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->homeRotation:I

    .line 37
    iput-object p6, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    .line 38
    iput-object p7, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->per:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->per:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->alpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->showTask:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->showTask:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->currentDisplayRotation:I

    iget v3, p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->currentDisplayRotation:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->homeRotation:I

    iget v3, p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->homeRotation:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    iget-object v3, p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    iget-object p1, p1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAlpha()F
    .locals 0

    .line 33
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->alpha:F

    return p0
.end method

.method public final getCurrentDisplayRotation()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->currentDisplayRotation:I

    return p0
.end method

.method public final getGestureHomeCalculator()Lcom/miui/home/recents/GestureHomeCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    return-object p0
.end method

.method public final getHomeRotation()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->homeRotation:I

    return p0
.end method

.method public final getPer()F
    .locals 0

    .line 32
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->per:F

    return p0
.end method

.method public final getShowTask()Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->showTask:Z

    return p0
.end method

.method public final getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->per:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->showTask:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->currentDisplayRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->homeRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureAppMoveEventInfo(per="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->per:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", showTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->showTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->currentDisplayRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", homeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->homeRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskViewParamsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->taskViewParamsInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gestureHomeCalculator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->gestureHomeCalculator:Lcom/miui/home/recents/GestureHomeCalculator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
