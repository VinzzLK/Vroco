.class final Lcom/miui/home/recents/anim/StateManager$IdleState;
.super Lcom/miui/home/recents/anim/State;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdleState"
.end annotation


# instance fields
.field private final stateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/State;-><init>()V

    const-string p1, "IdleState"

    .line 280
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->stateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->stateName:Ljava/lang/String;

    return-object p0
.end method

.method public handleEvent(Lcom/miui/home/recents/event/Event;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/State;->handleEvent(Lcom/miui/home/recents/event/Event;)V

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/StateManager;->isInitialEvent(Lcom/miui/home/recents/event/Event;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/StateManager;->isMultiInitialEvent(Lcom/miui/home/recents/event/Event;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getInitialEventMap$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/State;

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getMultiInitialEventMap$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/anim/State;

    :cond_1
    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1, v0}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    .line 291
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$IdleState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getCurrentState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/State;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/State;->handleEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_2
    return-void
.end method
