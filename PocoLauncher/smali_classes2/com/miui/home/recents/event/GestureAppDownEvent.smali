.class public final Lcom/miui/home/recents/event/GestureAppDownEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/GestureAppDownEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/GestureAppDownEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1771

    .line 23
    iput v0, p0, Lcom/miui/home/recents/event/GestureAppDownEvent;->type:I

    .line 21
    iput-object p1, p0, Lcom/miui/home/recents/event/GestureAppDownEvent;->info:Lcom/miui/home/recents/event/GestureAppDownEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/miui/home/recents/event/GestureAppDownEvent;->getInfo()Lcom/miui/home/recents/event/GestureAppDownEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/GestureAppDownEventInfo;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureAppDownEvent;->info:Lcom/miui/home/recents/event/GestureAppDownEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/miui/home/recents/event/GestureAppDownEvent;->type:I

    return p0
.end method
