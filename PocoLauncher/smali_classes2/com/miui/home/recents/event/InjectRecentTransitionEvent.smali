.class public final Lcom/miui/home/recents/event/InjectRecentTransitionEvent;
.super Lcom/miui/home/recents/event/Event;
.source "TransitionReceivedEvent.kt"


# instance fields
.field private info:Lcom/miui/home/recents/event/RecentTransitionInfo;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/event/RecentTransitionInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    const/16 v0, 0x232a

    .line 68
    iput v0, p0, Lcom/miui/home/recents/event/InjectRecentTransitionEvent;->type:I

    .line 71
    iput-object p1, p0, Lcom/miui/home/recents/event/InjectRecentTransitionEvent;->info:Lcom/miui/home/recents/event/RecentTransitionInfo;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/miui/home/recents/event/EventInfo;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/recents/event/InjectRecentTransitionEvent;->info:Lcom/miui/home/recents/event/RecentTransitionInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/miui/home/recents/event/InjectRecentTransitionEvent;->type:I

    return p0
.end method
