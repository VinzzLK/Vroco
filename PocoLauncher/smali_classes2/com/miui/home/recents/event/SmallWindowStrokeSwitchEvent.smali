.class public Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEvent;
.super Lcom/miui/home/recents/event/Event;
.source "SmallWindowStrokeSwitchEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;)V
    .locals 1

    const-string v0, "smallWindowStrokeSwitchEventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEvent;->info:Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;

    const/16 p1, 0x1f42

    .line 18
    iput p1, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEvent;->type:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEvent;->getInfo()Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEvent;->info:Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEvent;->type:I

    return p0
.end method
