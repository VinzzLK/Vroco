.class public final synthetic Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda15;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda15;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onRun(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda15;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda15;->f$1:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->$r8$lambda$MrzMCGsMWzC_ATX7W0A7gv7EQyI(Lcom/xiaomi/dist/handoff/system/HandoffController;Ljava/util/concurrent/CompletableFuture;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method
