.class public final Lcom/miui/home/recents/event/RecentsPullExitEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b5f

    .line 209
    iput v0, p0, Lcom/miui/home/recents/event/RecentsPullExitEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/miui/home/recents/event/RecentsPullExitEvent;->type:I

    return p0
.end method
