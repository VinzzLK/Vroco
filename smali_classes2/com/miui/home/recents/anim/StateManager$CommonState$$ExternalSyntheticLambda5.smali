.class public final synthetic Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/StateManager$CommonState;

.field public final synthetic f$1:Lcom/miui/home/recents/event/StartActivityEventInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/recents/anim/StateManager$CommonState;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/recents/event/StartActivityEventInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/recents/anim/StateManager$CommonState;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/recents/event/StartActivityEventInfo;

    invoke-static {v0, p0}, Lcom/miui/home/recents/anim/StateManager$CommonState;->$r8$lambda$zzWwrH_8YH9iIEqfQpTk2EBX7lQ(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    return-void
.end method
