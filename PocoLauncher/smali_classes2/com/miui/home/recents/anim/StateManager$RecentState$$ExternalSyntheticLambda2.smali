.class public final synthetic Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/StateManager;

.field public final synthetic f$1:Lcom/miui/home/recents/event/TaskClickEventInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/recents/event/TaskClickEventInfo;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/recents/event/TaskClickEventInfo;

    invoke-static {v0, p0}, Lcom/miui/home/recents/anim/StateManager$RecentState;->$r8$lambda$iqXJM83-q5LlB_ZV3LuQ8u5NpOM(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    return-void
.end method
