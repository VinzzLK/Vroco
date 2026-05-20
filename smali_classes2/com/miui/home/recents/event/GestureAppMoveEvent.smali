.class public final Lcom/miui/home/recents/event/GestureAppMoveEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private gestureAppMoveEventInfo:Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/GestureAppMoveEventInfo;)V
    .locals 1

    const-string v0, "gestureAppMoveEventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1773

    .line 47
    iput v0, p0, Lcom/miui/home/recents/event/GestureAppMoveEvent;->type:I

    .line 43
    iput-object p1, p0, Lcom/miui/home/recents/event/GestureAppMoveEvent;->gestureAppMoveEventInfo:Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/recents/event/GestureAppMoveEvent;->getInfo()Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/GestureAppMoveEventInfo;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEvent;->gestureAppMoveEventInfo:Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppMoveEvent;->type:I

    return p0
.end method
