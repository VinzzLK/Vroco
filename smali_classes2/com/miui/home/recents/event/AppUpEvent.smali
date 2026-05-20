.class public Lcom/miui/home/recents/event/AppUpEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/GestureAppUpEventInfo;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/miui/home/recents/event/AppUpEvent;->info:Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/recents/event/AppUpEvent;->info:Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    return-object p0
.end method
