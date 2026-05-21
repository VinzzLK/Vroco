.class public final Lcom/miui/home/recents/event/HalfAppToRecentEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private halfAppToRecentEventInfo:Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/miui/home/recents/event/HalfAppToRecentEvent;->halfAppToRecentEventInfo:Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;

    const/16 p1, 0x196a

    .line 89
    iput p1, p0, Lcom/miui/home/recents/event/HalfAppToRecentEvent;->type:I

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/miui/home/recents/event/HalfAppToRecentEvent;->halfAppToRecentEventInfo:Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/miui/home/recents/event/HalfAppToRecentEvent;->type:I

    return p0
.end method
