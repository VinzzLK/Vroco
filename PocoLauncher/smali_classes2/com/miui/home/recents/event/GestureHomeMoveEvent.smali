.class public final Lcom/miui/home/recents/event/GestureHomeMoveEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x17d6

    .line 152
    iput v0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEvent;->type:I

    .line 156
    iput-object p1, p0, Lcom/miui/home/recents/event/GestureHomeMoveEvent;->info:Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEvent;->info:Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/miui/home/recents/event/GestureHomeMoveEvent;->type:I

    return p0
.end method
