.class public final synthetic Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/anim/StateManager;

.field public final synthetic f$1:Lcom/miui/home/recents/event/Event;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iput-object p2, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda4;->f$1:Lcom/miui/home/recents/event/Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/recents/anim/StateManager;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$$ExternalSyntheticLambda4;->f$1:Lcom/miui/home/recents/event/Event;

    invoke-static {v0, p0}, Lcom/miui/home/recents/anim/StateManager;->$r8$lambda$C-kZp_X93nanDwYsUFIjH_GwEtM(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/Event;)V

    return-void
.end method
