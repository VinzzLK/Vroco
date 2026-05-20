.class public final Lcom/miui/home/recents/event/PairTaskClickEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TaskClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/PairTaskClickEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b5e

    .line 28
    iput v0, p0, Lcom/miui/home/recents/event/PairTaskClickEvent;->type:I

    .line 31
    iput-object p1, p0, Lcom/miui/home/recents/event/PairTaskClickEvent;->info:Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/recents/event/PairTaskClickEvent;->getInfo()Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/PairTaskClickEventInfo;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/recents/event/PairTaskClickEvent;->info:Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/miui/home/recents/event/PairTaskClickEvent;->type:I

    return p0
.end method
