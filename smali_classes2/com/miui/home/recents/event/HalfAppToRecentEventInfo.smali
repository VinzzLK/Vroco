.class public final Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "GestureEvent.kt"


# instance fields
.field private final isQuickSwitchMode:Z

.field private final rectFParams:Lcom/miui/home/recents/anim/RectFParams;

.field private final taskViewParams:Lcom/miui/home/recents/anim/TaskViewsParams;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/anim/RectFParams;ZLcom/miui/home/recents/anim/TaskViewsParams;)V
    .locals 1

    const-string v0, "rectFParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    .line 80
    iput-boolean p2, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->isQuickSwitchMode:Z

    .line 81
    iput-object p3, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->taskViewParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    iget-object v3, p1, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->isQuickSwitchMode:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->isQuickSwitchMode:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->taskViewParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    iget-object p1, p1, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->taskViewParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getRectFParams()Lcom/miui/home/recents/anim/RectFParams;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-object p0
.end method

.method public final getTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->taskViewParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->isQuickSwitchMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->taskViewParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewsParams;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HalfAppToRecentEventInfo(rectFParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isQuickSwitchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->isQuickSwitchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", taskViewParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->taskViewParams:Lcom/miui/home/recents/anim/TaskViewsParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
