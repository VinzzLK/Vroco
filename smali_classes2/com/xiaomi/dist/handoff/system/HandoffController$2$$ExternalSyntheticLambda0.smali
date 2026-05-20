.class public final synthetic Lcom/xiaomi/dist/handoff/system/HandoffController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/dist/handoff/system/HandoffController$2;

.field public final synthetic f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/handoff/system/HandoffController$2;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$2$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController$2;

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$2$$ExternalSyntheticLambda0;->f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$2$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/dist/handoff/system/HandoffController$2;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/HandoffController$2$$ExternalSyntheticLambda0;->f$1:[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-static {v0, p0}, Lcom/xiaomi/dist/handoff/system/HandoffController$2;->$r8$lambda$PKkX0DyhmLnWGVxOKKOaXaiXPzA(Lcom/xiaomi/dist/handoff/system/HandoffController$2;[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;)V

    return-void
.end method
