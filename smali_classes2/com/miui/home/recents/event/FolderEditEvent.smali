.class public final Lcom/miui/home/recents/event/FolderEditEvent;
.super Lcom/miui/home/recents/event/Event;
.source "FolderEditEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x7e0

    .line 8
    iput v0, p0, Lcom/miui/home/recents/event/FolderEditEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 8
    iget p0, p0, Lcom/miui/home/recents/event/FolderEditEvent;->type:I

    return p0
.end method
