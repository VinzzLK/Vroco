.class public final synthetic Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;

.field public final synthetic f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;

    iput-object p2, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$$ExternalSyntheticLambda0;->f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;

    iget-object p0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$$ExternalSyntheticLambda0;->f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;

    invoke-static {v0, p0}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->$r8$lambda$smKBxzN4akmsBLoOh82ZoAbIwuc(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V

    return-void
.end method
