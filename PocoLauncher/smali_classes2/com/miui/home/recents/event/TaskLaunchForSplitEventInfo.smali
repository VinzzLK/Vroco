.class public final Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TaskClickEvent.kt"


# instance fields
.field private final isUserClick:Z

.field private final taskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 1

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p2, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->isUserClick:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    iget-object v3, p1, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->isUserClick:Z

    iget-boolean p1, p1, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->isUserClick:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getTaskView()Lcom/miui/home/recents/views/TaskView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->isUserClick:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isUserClick()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->isUserClick:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskLaunchForSplitEventInfo(taskView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->taskView:Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUserClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;->isUserClick:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
