.class public Lcom/miui/home/recents/event/WidgetClickEvent;
.super Lcom/miui/home/recents/event/Event;
.source "WidgetClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/WidgetClickEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/WidgetClickEventInfo;)V
    .locals 1

    const-string v0, "widgetClickEventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x3ea

    .line 16
    iput v0, p0, Lcom/miui/home/recents/event/WidgetClickEvent;->type:I

    .line 19
    iput-object p1, p0, Lcom/miui/home/recents/event/WidgetClickEvent;->info:Lcom/miui/home/recents/event/WidgetClickEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/miui/home/recents/event/WidgetClickEvent;->getInfo()Lcom/miui/home/recents/event/WidgetClickEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/WidgetClickEventInfo;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/recents/event/WidgetClickEvent;->info:Lcom/miui/home/recents/event/WidgetClickEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 16
    iget p0, p0, Lcom/miui/home/recents/event/WidgetClickEvent;->type:I

    return p0
.end method
