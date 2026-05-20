.class public final Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "GestureEvent.kt"


# instance fields
.field private final rectFParams:Lcom/miui/home/recents/anim/RectFParams;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/anim/RectFParams;)V
    .locals 1

    const-string v0, "rectFParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    iget-object p1, p1, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRectFParams()Lcom/miui/home/recents/anim/RectFParams;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/RectFParams;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureAppToTopWindowAminEventInfo(rectFParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;->rectFParams:Lcom/miui/home/recents/anim/RectFParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
