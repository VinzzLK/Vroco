.class public final Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "GestureEvent.kt"


# instance fields
.field private final isWorldCircle:Z

.field private final rectFParams:Lcom/miui/home/recents/anim/RectFParams;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;

    iget-object v1, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    iget-object v3, p1, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->isWorldCircle:Z

    iget-boolean p1, p1, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->isWorldCircle:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRectFParams()Lcom/miui/home/recents/anim/RectFParams;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RectFParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->isWorldCircle:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureAppToTopWindowEventInfo(rectFParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isWorldCircle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->isWorldCircle:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
