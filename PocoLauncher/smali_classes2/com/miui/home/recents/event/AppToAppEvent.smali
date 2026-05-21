.class public final Lcom/miui/home/recents/event/AppToAppEvent;
.super Lcom/miui/home/recents/event/AppUpEvent;
.source "GestureEvent.kt"


# instance fields
.field private final indexOffset:I

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;I)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/miui/home/recents/event/AppUpEvent;-><init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;)V

    iput p2, p0, Lcom/miui/home/recents/event/AppToAppEvent;->indexOffset:I

    const/16 p1, 0x1775

    .line 72
    iput p1, p0, Lcom/miui/home/recents/event/AppToAppEvent;->type:I

    return-void
.end method


# virtual methods
.method public final getIndexOffset()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/miui/home/recents/event/AppToAppEvent;->indexOffset:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/miui/home/recents/event/AppToAppEvent;->type:I

    return p0
.end method
