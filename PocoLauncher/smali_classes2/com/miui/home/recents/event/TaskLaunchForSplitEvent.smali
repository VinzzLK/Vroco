.class public final Lcom/miui/home/recents/event/TaskLaunchForSplitEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TaskClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b66

    .line 57
    iput v0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEvent;->type:I

    .line 60
    iput-object p1, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEvent;->info:Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/recents/event/TaskLaunchForSplitEvent;->getInfo()Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEvent;->info:Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchForSplitEvent;->type:I

    return p0
.end method
