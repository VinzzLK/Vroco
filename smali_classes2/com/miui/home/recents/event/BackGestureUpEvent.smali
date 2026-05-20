.class public final Lcom/miui/home/recents/event/BackGestureUpEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 212
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x189d

    .line 213
    iput v0, p0, Lcom/miui/home/recents/event/BackGestureUpEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/miui/home/recents/event/BackGestureUpEvent;->type:I

    return p0
.end method
