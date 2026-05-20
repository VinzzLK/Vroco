.class public final Lcom/miui/home/recents/event/TaskLaunchedEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TaskClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/TaskLaunchedEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b63

    .line 102
    iput v0, p0, Lcom/miui/home/recents/event/TaskLaunchedEvent;->type:I

    .line 105
    iput-object p1, p0, Lcom/miui/home/recents/event/TaskLaunchedEvent;->info:Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/recents/event/TaskLaunchedEvent;->getInfo()Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/TaskLaunchedEventInfo;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchedEvent;->info:Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchedEvent;->type:I

    return p0
.end method
