.class public final Lcom/miui/home/recents/event/AppToRecentEvent;
.super Lcom/miui/home/recents/event/AppUpEvent;
.source "GestureEvent.kt"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/home/recents/event/AppUpEvent;-><init>(Lcom/miui/home/recents/event/GestureAppUpEventInfo;)V

    const/16 p1, 0x1776

    .line 76
    iput p1, p0, Lcom/miui/home/recents/event/AppToRecentEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/miui/home/recents/event/AppToRecentEvent;->type:I

    return p0
.end method
