.class public final Lcom/miui/home/recents/event/StartActivityEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/StartActivityEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x2328

    .line 95
    iput v0, p0, Lcom/miui/home/recents/event/StartActivityEvent;->type:I

    .line 98
    iput-object p1, p0, Lcom/miui/home/recents/event/StartActivityEvent;->info:Lcom/miui/home/recents/event/StartActivityEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/recents/event/StartActivityEvent;->getInfo()Lcom/miui/home/recents/event/StartActivityEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/StartActivityEventInfo;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/miui/home/recents/event/StartActivityEvent;->info:Lcom/miui/home/recents/event/StartActivityEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/miui/home/recents/event/StartActivityEvent;->type:I

    return p0
.end method
