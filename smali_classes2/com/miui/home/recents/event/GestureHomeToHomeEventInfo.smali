.class public final Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "GestureEvent.kt"


# instance fields
.field private final taskViewInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;->taskViewInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;->taskViewInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    iget-object p1, p1, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;->taskViewInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTaskViewInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;->taskViewInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;->taskViewInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureHomeToHomeEventInfo(taskViewInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;->taskViewInfo:Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
