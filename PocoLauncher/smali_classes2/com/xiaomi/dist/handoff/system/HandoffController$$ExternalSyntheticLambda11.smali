.class public final synthetic Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda11;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    return-void
.end method


# virtual methods
.method public final onRun(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda11;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    check-cast p1, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    invoke-static {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->$r8$lambda$fhxMwjP3WZxwLLCtPjr0CPUMn1s(Lcom/xiaomi/dist/handoff/system/HandoffController;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method
