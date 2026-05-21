.class public final Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/RemoteTransitionInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/RemoteTransitionInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x2329

    .line 26
    iput v0, p0, Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;->type:I

    .line 29
    iput-object p1, p0, Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;->info:Lcom/miui/home/recents/event/RemoteTransitionInfo;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;->info:Lcom/miui/home/recents/event/RemoteTransitionInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/miui/home/recents/event/RemoteTransitionReceivedEvent;->type:I

    return p0
.end method
