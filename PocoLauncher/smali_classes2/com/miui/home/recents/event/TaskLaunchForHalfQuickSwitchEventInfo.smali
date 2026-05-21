.class public final Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TaskClickEvent.kt"


# instance fields
.field private final currentPairLoadTaskPosition:I

.field private final taskView:Lcom/miui/home/recents/views/TaskView;

.field private final touchRange:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/views/TaskView;II)V
    .locals 1

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    iput p2, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->touchRange:I

    iput p3, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->currentPairLoadTaskPosition:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    iget-object v3, p1, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->touchRange:I

    iget v3, p1, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->touchRange:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->currentPairLoadTaskPosition:I

    iget p1, p1, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->currentPairLoadTaskPosition:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCurrentPairLoadTaskPosition()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->currentPairLoadTaskPosition:I

    return p0
.end method

.method public final getTaskView()Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method public final getTouchRange()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->touchRange:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->touchRange:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->currentPairLoadTaskPosition:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskLaunchForHalfQuickSwitchEventInfo(taskView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", touchRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->touchRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPairLoadTaskPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;->currentPairLoadTaskPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
