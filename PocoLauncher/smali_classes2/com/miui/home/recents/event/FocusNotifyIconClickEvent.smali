.class public final Lcom/miui/home/recents/event/FocusNotifyIconClickEvent;
.super Lcom/miui/home/recents/event/Event;
.source "FocusNotifyIconClickEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x7e3

    .line 6
    iput v0, p0, Lcom/miui/home/recents/event/FocusNotifyIconClickEvent;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/miui/home/recents/event/FocusNotifyIconClickEvent;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/recents/event/FocusNotifyIconClickEvent;->info:Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/recents/event/FocusNotifyIconClickEvent;->info:Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;

    if-nez p0, :cond_0

    const-string p0, "info"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 6
    iget p0, p0, Lcom/miui/home/recents/event/FocusNotifyIconClickEvent;->type:I

    return p0
.end method
