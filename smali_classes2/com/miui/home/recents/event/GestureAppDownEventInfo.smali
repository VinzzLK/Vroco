.class public final Lcom/miui/home/recents/event/GestureAppDownEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "GestureEvent.kt"


# instance fields
.field private final isHalf:Z

.field private final isPair:Z

.field private final runningTaskId:I

.field private final touchRange:I


# direct methods
.method public constructor <init>(ZIZI)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isPair:Z

    .line 13
    iput p2, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->runningTaskId:I

    .line 14
    iput-boolean p3, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isHalf:Z

    .line 15
    iput p4, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->touchRange:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/GestureAppDownEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/GestureAppDownEventInfo;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isPair:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isPair:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->runningTaskId:I

    iget v3, p1, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->runningTaskId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isHalf:Z

    iget-boolean v3, p1, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isHalf:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->touchRange:I

    iget p1, p1, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->touchRange:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getRunningTaskId()I
    .locals 0

    .line 13
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->runningTaskId:I

    return p0
.end method

.method public final getTouchRange()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->touchRange:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isPair:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->runningTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isHalf:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->touchRange:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isHalf()Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isHalf:Z

    return p0
.end method

.method public final isPair()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isPair:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureAppDownEventInfo(isPair="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isPair:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", runningTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->runningTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHalf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isHalf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", touchRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->touchRange:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
