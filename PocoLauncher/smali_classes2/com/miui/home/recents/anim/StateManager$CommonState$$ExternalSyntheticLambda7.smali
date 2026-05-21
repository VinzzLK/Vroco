.class public final synthetic Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/StateManager;

.field public final synthetic f$1:Lcom/miui/home/recents/anim/StateManager$CommonState;

.field public final synthetic f$2:Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;->f$1:Lcom/miui/home/recents/anim/StateManager$CommonState;

    iput-object p3, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;->f$2:Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;->f$1:Lcom/miui/home/recents/anim/StateManager$CommonState;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;->f$2:Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/anim/StateManager$CommonState;->$r8$lambda$YkOewtTLyqnr0IR7nA-NGGNufFw(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    return-void
.end method
