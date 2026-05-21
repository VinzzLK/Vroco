.class public final Lcom/miui/home/recents/event/TaskClickEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TaskClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/TaskClickEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b5d

    .line 13
    iput v0, p0, Lcom/miui/home/recents/event/TaskClickEvent;->type:I

    .line 16
    iput-object p1, p0, Lcom/miui/home/recents/event/TaskClickEvent;->info:Lcom/miui/home/recents/event/TaskClickEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/miui/home/recents/event/TaskClickEvent;->getInfo()Lcom/miui/home/recents/event/TaskClickEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/TaskClickEventInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskClickEvent;->info:Lcom/miui/home/recents/event/TaskClickEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 13
    iget p0, p0, Lcom/miui/home/recents/event/TaskClickEvent;->type:I

    return p0
.end method
