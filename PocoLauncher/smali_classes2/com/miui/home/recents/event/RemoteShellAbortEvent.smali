.class public final Lcom/miui/home/recents/event/RemoteShellAbortEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/GestureAppAbortEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/GestureAppAbortEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x232d

    .line 148
    iput v0, p0, Lcom/miui/home/recents/event/RemoteShellAbortEvent;->type:I

    .line 151
    iput-object p1, p0, Lcom/miui/home/recents/event/RemoteShellAbortEvent;->info:Lcom/miui/home/recents/event/GestureAppAbortEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/recents/event/RemoteShellAbortEvent;->getInfo()Lcom/miui/home/recents/event/GestureAppAbortEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/GestureAppAbortEventInfo;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/miui/home/recents/event/RemoteShellAbortEvent;->info:Lcom/miui/home/recents/event/GestureAppAbortEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/miui/home/recents/event/RemoteShellAbortEvent;->type:I

    return p0
.end method
