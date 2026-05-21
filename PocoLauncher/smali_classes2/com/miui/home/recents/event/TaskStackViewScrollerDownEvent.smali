.class public final Lcom/miui/home/recents/event/TaskStackViewScrollerDownEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TaskStackViewScrollerDownEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x1b69

    .line 4
    iput v0, p0, Lcom/miui/home/recents/event/TaskStackViewScrollerDownEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/miui/home/recents/event/TaskStackViewScrollerDownEvent;->type:I

    return p0
.end method
