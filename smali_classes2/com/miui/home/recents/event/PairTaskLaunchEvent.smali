.class public final Lcom/miui/home/recents/event/PairTaskLaunchEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TaskClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b6a

    .line 43
    iput v0, p0, Lcom/miui/home/recents/event/PairTaskLaunchEvent;->type:I

    .line 46
    iput-object p1, p0, Lcom/miui/home/recents/event/PairTaskLaunchEvent;->info:Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/recents/event/PairTaskLaunchEvent;->getInfo()Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/home/recents/event/PairTaskLaunchEvent;->info:Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/home/recents/event/PairTaskLaunchEvent;->type:I

    return p0
.end method
