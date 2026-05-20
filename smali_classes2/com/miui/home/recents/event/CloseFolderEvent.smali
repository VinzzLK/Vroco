.class public final Lcom/miui/home/recents/event/CloseFolderEvent;
.super Lcom/miui/home/recents/event/Event;
.source "CloseFolderEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x7d8

    .line 10
    iput v0, p0, Lcom/miui/home/recents/event/CloseFolderEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/miui/home/recents/event/CloseFolderEvent;->type:I

    return p0
.end method
