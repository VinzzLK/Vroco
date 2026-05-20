.class Lcom/xiaomi/dist/handoff/system/HandoffController$2;
.super Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub;
.source "HandoffController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/system/HandoffController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/dist/handoff/system/HandoffController;


# direct methods
.method public static synthetic $r8$lambda$PKkX0DyhmLnWGVxOKKOaXaiXPzA(Lcom/xiaomi/dist/handoff/system/HandoffController$2;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController$2;->lambda$onLocalHandoffTaskUpdate$0([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$2;->this$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-direct {p0}, Lcom/xiaomi/dist/handoff/IActiveLocalHandoffTaskListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLocalHandoffTaskUpdate$0([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$2;->this$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-static {v0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController;->access$100(Lcom/xiaomi/dist/handoff/system/HandoffController;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    .line 552
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$2;->this$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController;->mTaskListenerInner:Lcom/xiaomi/dist/handoff/system/TaskListenerInner;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 553
    invoke-interface {p0, v0, p1}, Lcom/xiaomi/dist/handoff/system/TaskListenerInner;->onLocalHandoffTaskUpdate(I[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLocalHandoffTaskUpdate([Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 549
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HandoffController"

    const-string v2, "onLocalHandoffTaskUpdate, tasks=%s"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$2;->this$0:Lcom/xiaomi/dist/handoff/system/HandoffController;

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/HandoffController;->access$000(Lcom/xiaomi/dist/handoff/system/HandoffController;)Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/dist/utils/Schedulers$MasterThread;->asHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/dist/handoff/system/HandoffController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/dist/handoff/system/HandoffController$2$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/dist/handoff/system/HandoffController$2;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
