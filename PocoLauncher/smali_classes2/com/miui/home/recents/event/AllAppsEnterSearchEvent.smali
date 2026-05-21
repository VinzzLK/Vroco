.class public final Lcom/miui/home/recents/event/AllAppsEnterSearchEvent;
.super Lcom/miui/home/recents/event/Event;
.source "AllAppsEnterSearchEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x7da

    .line 9
    iput v0, p0, Lcom/miui/home/recents/event/AllAppsEnterSearchEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/miui/home/recents/event/AllAppsEnterSearchEvent;->type:I

    return p0
.end method
