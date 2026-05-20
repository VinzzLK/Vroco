.class public final Lcom/miui/home/recents/event/GestureRecentUpEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private final isFromHold:Z

.field private final toHome:Z

.field private type:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/recents/event/GestureRecentUpEvent;->toHome:Z

    iput-boolean p2, p0, Lcom/miui/home/recents/event/GestureRecentUpEvent;->isFromHold:Z

    const/16 p1, 0x183b

    .line 204
    iput p1, p0, Lcom/miui/home/recents/event/GestureRecentUpEvent;->type:I

    return-void
.end method


# virtual methods
.method public final getToHome()Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/miui/home/recents/event/GestureRecentUpEvent;->toHome:Z

    return p0
.end method

.method public getType()I
    .locals 0

    .line 204
    iget p0, p0, Lcom/miui/home/recents/event/GestureRecentUpEvent;->type:I

    return p0
.end method

.method public final isFromHold()Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/miui/home/recents/event/GestureRecentUpEvent;->isFromHold:Z

    return p0
.end method
