.class public final Lcom/miui/home/recents/event/GestureHomeDownEvent;
.super Lcom/miui/home/recents/event/Event;
.source "GestureEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x17d5

    .line 127
    iput v0, p0, Lcom/miui/home/recents/event/GestureHomeDownEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/miui/home/recents/event/GestureHomeDownEvent;->type:I

    return p0
.end method
