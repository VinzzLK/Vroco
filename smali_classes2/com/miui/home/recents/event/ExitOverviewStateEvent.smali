.class public final Lcom/miui/home/recents/event/ExitOverviewStateEvent;
.super Lcom/miui/home/recents/event/Event;
.source "ExitOverviewStateEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b65

    .line 9
    iput v0, p0, Lcom/miui/home/recents/event/ExitOverviewStateEvent;->type:I

    .line 12
    iput-object p1, p0, Lcom/miui/home/recents/event/ExitOverviewStateEvent;->info:Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/miui/home/recents/event/ExitOverviewStateEvent;->getInfo()Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/recents/event/ExitOverviewStateEvent;->info:Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/miui/home/recents/event/ExitOverviewStateEvent;->type:I

    return p0
.end method
