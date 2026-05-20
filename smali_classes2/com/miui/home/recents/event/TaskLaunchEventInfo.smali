.class public final Lcom/miui/home/recents/event/TaskLaunchEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "TaskClickEvent.kt"


# instance fields
.field private final inBackground:Z

.field private final opts:Landroid/app/ActivityOptions;

.field private final taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;


# direct methods
.method public constructor <init>(ZLandroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 1

    const-string v0, "opts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->inBackground:Z

    iput-object p2, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->opts:Landroid/app/ActivityOptions;

    iput-object p3, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/TaskLaunchEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/TaskLaunchEventInfo;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->inBackground:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->inBackground:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->opts:Landroid/app/ActivityOptions;

    iget-object v3, p1, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->opts:Landroid/app/ActivityOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p1, p1, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInBackground()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->inBackground:Z

    return p0
.end method

.method public final getOpts()Landroid/app/ActivityOptions;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->opts:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public final getTaskKey()Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->inBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->opts:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskLaunchEventInfo(inBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->inBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", opts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->opts:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchEventInfo;->taskKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
