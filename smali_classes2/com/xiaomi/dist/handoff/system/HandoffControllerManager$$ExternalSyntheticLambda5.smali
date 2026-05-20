.class public final synthetic Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda5;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager$$ExternalSyntheticLambda5;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;

    check-cast p1, Lcom/xiaomi/dist/common/ResultDescriptor;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;->$r8$lambda$_XfahhVff7D_4I1qq9lVl4-wiFo(Lcom/xiaomi/dist/handoff/system/HandoffControllerManager;Lcom/xiaomi/dist/common/ResultDescriptor;Ljava/lang/Throwable;)V

    return-void
.end method
