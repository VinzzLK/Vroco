.class public final synthetic Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iput p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;->f$2:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    return-void
.end method


# virtual methods
.method public final onRun(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iget v1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;->f$1:I

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$$ExternalSyntheticLambda13;->f$2:Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;

    check-cast p1, Lcom/xiaomi/dist/handoff/IHandoffControlService;

    invoke-static {v0, v1, p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->$r8$lambda$85YwIyvCTNflbGdFnAPSx7nSvlA(Lcom/xiaomi/dist/handoff/system/HandoffController;ILcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;Lcom/xiaomi/dist/handoff/IHandoffControlService;)V

    return-void
.end method
