.class public Lcom/miui/home/recents/event/IconClickEvent;
.super Lcom/miui/home/recents/event/Event;
.source "IconClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/IconClickEventInfo;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x3e9

    .line 11
    iput v0, p0, Lcom/miui/home/recents/event/IconClickEvent;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/event/IconClickEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/miui/home/recents/event/IconClickEvent;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/home/recents/event/IconClickEvent;->info:Lcom/miui/home/recents/event/IconClickEventInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/miui/home/recents/event/IconClickEvent;->getInfo()Lcom/miui/home/recents/event/IconClickEventInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/recents/event/IconClickEventInfo;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/event/IconClickEvent;->info:Lcom/miui/home/recents/event/IconClickEventInfo;

    if-nez p0, :cond_0

    const-string p0, "info"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/recents/event/IconClickEvent;->type:I

    return p0
.end method
