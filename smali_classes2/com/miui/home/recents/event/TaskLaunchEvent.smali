.class public final Lcom/miui/home/recents/event/TaskLaunchEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TaskClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/TaskLaunchEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/TaskLaunchEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b62

    .line 87
    iput v0, p0, Lcom/miui/home/recents/event/TaskLaunchEvent;->type:I

    .line 90
    iput-object p1, p0, Lcom/miui/home/recents/event/TaskLaunchEvent;->info:Lcom/miui/home/recents/event/TaskLaunchEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/recents/event/TaskLaunchEvent;->getInfo()Lcom/miui/home/recents/event/TaskLaunchEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/TaskLaunchEventInfo;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchEvent;->info:Lcom/miui/home/recents/event/TaskLaunchEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchEvent;->type:I

    return p0
.end method
