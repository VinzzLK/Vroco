.class public final Lcom/miui/home/recents/event/EnterOverviewStateEvent;
.super Lcom/miui/home/recents/event/Event;
.source "EnterOverviewStateEvent.kt"


# instance fields
.field private final toState:Lcom/miui/home/launcher/LauncherState;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    const-string v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/miui/home/recents/event/Event;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/event/EnterOverviewStateEvent;->toState:Lcom/miui/home/launcher/LauncherState;

    const/16 p1, 0x1b64

    .line 7
    iput p1, p0, Lcom/miui/home/recents/event/EnterOverviewStateEvent;->type:I

    return-void
.end method


# virtual methods
.method public final getToState()Lcom/miui/home/launcher/LauncherState;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/miui/home/recents/event/EnterOverviewStateEvent;->toState:Lcom/miui/home/launcher/LauncherState;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/miui/home/recents/event/EnterOverviewStateEvent;->type:I

    return p0
.end method
