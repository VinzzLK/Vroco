.class public final Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TaskClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b67

    .line 72
    iput v0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEvent;->type:I

    .line 75
    iput-object p1, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEvent;->info:Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEvent;->getInfo()Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEvent;->info:Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEvent;->type:I

    return p0
.end method
