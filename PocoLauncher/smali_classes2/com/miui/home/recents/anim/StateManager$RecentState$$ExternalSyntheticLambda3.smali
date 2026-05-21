.class public final synthetic Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/StateManager;

.field public final synthetic f$1:Lcom/miui/home/recents/event/PairTaskClickEventInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda3;->f$1:Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    invoke-static {v0, p0}, Lcom/miui/home/recents/anim/StateManager$RecentState;->$r8$lambda$EFGmfCQj_XyQHffCwIdgt-B5C2o(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    return-void
.end method
