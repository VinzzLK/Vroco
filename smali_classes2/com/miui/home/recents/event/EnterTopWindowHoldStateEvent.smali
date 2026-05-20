.class public final Lcom/miui/home/recents/event/EnterTopWindowHoldStateEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private final info:Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEvent;->info:Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;

    const/16 p1, 0x1779

    .line 115
    iput p1, p0, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEvent;->type:I

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEvent;->info:Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEvent;->type:I

    return p0
.end method
