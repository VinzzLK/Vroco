.class public final Lcom/miui/home/recents/event/DrawScrollToSectionEvent;
.super Lcom/miui/home/recents/event/Event;
.source "DrawerClickEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x7dc

    .line 8
    iput v0, p0, Lcom/miui/home/recents/event/DrawScrollToSectionEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 8
    iget p0, p0, Lcom/miui/home/recents/event/DrawScrollToSectionEvent;->type:I

    return p0
.end method
