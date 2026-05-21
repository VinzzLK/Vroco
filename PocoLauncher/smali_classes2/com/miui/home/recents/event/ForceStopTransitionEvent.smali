.class public final Lcom/miui/home/recents/event/ForceStopTransitionEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x270f

    .line 109
    iput v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->type:I

    .line 112
    new-instance v0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->info:Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x270f

    .line 109
    iput v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->type:I

    .line 116
    new-instance v0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->info:Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 8

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x270f

    .line 109
    iput v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->type:I

    .line 120
    new-instance v0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->info:Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/Runnable;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishCallBack"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x270f

    .line 109
    iput v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->type:I

    .line 124
    new-instance v0, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->info:Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->getInfo()Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->info:Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/miui/home/recents/event/ForceStopTransitionEvent;->type:I

    return p0
.end method
